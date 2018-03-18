defmodule Javex.FileUploadView do
  use Javex.Web, :view

  def render("show.json", _) do
    %{
      id: "1",
      message: "Uploaded image"
    }
  end
end
