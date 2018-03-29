defmodule Javex.FileUploadController do
  use Javex.Web, :controller

  def upload(conn, %{"image" => image}) do
    IO.puts "uploading..."
    file = image.path
    bucket_name = System.get_env("BUCKET_NAME")
    s3_path = "images"

    file
      |> ExAws.S3.Upload.stream_file
      |> ExAws.S3.upload(bucket_name, s3_path)
      |> ExAws.request!

    # ExAws.S3.list_objects(bucket_name) |> ExAws.request!

    s3_url = "http://#{bucket_name}.s3.amazonaws.com/#{s3_path}"
    %{
      s3_url: s3_url
    }
    image.filename |> IO.puts
    render conn, "show.json"
  end
end
