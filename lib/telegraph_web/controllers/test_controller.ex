defmodule TelegraphWeb.TestController do
  use TelegraphWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
