defmodule TelegraphWeb.PageController do
  use TelegraphWeb, :controller
  alias Telegraph.Api

  def index(conn, _params) do

    apis = Api.get_apis()
    IO.inspect(apis)

    render(conn, "index.html", items: apis)
  end


end
