defmodule TelegraphWeb.TestController do
  use TelegraphWeb, :controller
  alias Telegraph.Api

  def show(conn, %{"id" => id}) do
    IO.inspect(id)
    api = Api.get_api(id)
    IO.inspect(api)
    render(conn, "show.html", fields: api)
  end
end
