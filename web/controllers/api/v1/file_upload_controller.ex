defmodule Javex.FileUploadController do
  use Javex.Web, :controller

  def upload(conn,_) do
    render conn, "show.json"
  end
end
