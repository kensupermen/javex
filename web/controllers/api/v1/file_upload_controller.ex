defmodule Javex.FileUploadController do
  use Javex.Web, :controller

  def upload(conn, %{"image" => image_params}) do
    IO.puts "uploading..."
    image_filename = image_params.filename

    bucket_name = System.get_env("BUCKET_NAME")

    {:ok, image_binary} = File.read(image_params.path)

    ExAws.S3.put_object(bucket_name, image_filename, image_binary)
      |> ExAws.request!

    render conn, "show.json"
  end
end
