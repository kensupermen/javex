defmodule Javex.FileUploadController do
  use Javex.Web, :controller
  alias Javex.Actress

  def upload(conn, %{"image" => image_params}) do
    IO.puts "uploading..."
    image_filename = image_params.filename

    bucket_name = System.get_env("BUCKET_NAME")

    {:ok, image_binary} = File.read(image_params.path)

    ExAws.S3.put_object(bucket_name, image_filename, image_binary)
      |> ExAws.request!


    changeset = Actress.changeset(%Actress{}, %{name: "test", image_url: "url", view: 0 })

    Repo.insert!(changeset)
      # {:ok, actress} ->
        # IO.puts "Successful"
        # conn
        # |> put_flash(:info, "Image uploaded successfully!")
        # |> redirect(to: upload_path(conn, :new)
      # {:error, changeset} ->
        # IO.puts "Erorrs"

    render conn, "show.json"
  end
end
