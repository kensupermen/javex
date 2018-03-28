defmodule Javex.FileUploadController do
  use Javex.Web, :controller

  def upload(conn, %{"image" => image}) do
    IO.puts "upload successful!"
    image.filename |> IO.puts
    render conn, "show.json"
  end
end
