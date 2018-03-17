defmodule Javex.PageController do
  use Javex.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
