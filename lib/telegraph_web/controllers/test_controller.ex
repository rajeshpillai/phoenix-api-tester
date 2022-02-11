defmodule TelegraphWeb.TestController do
  use TelegraphWeb, :controller

  def show(conn, %{"id" => id}) do
    IO.inspect(id)
    render(conn, "show.html")
  end
end
