defmodule TelegraphWeb.PageController do
  use TelegraphWeb, :controller

  def index(conn, _params) do

    apis = get_apis()
    IO.inspect(apis)

    render(conn, "index.html", items: apis)
  end

  defp get_apis() do
    [
      %{
          id: 1,
          title: "DL",
          description: "Driving License verification",
      },
      %{
        id: 2,
        title: "PAN",
        description: "PAN verification",
      },
    ]
  end
end
