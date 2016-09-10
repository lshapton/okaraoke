defmodule Okaraoke.PageController do
  use Okaraoke.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
