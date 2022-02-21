defmodule TelegraphWeb.TestController do
  use TelegraphWeb, :controller

  def show(conn, %{"id" => id}) do
    IO.inspect(id)
    fields = %{
      inputs:  %{
        userId: %{
          type: "text"
        },
        completed: %{
          type: "boolean"
        },
      }
    }

    IO.inspect(fields)
    render(conn, "show.html", fields: fields)
  end
end
