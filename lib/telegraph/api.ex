defmodule Telegraph.Api do
  @apis  [
    %{
        id: 1,
        title: "DL",
        description: "Driving License verification",
        inputs:  %{
          userId: %{
            type: "text"
          },
          completed: %{
            type: "boolean"
          },
        }
    },
    %{
      id: 2,
      title: "PAN",
      description: "PAN verification",
      inputs:  %{
        pan_no: %{
          type: "text"
        }
      }
    },
  ]
  def get_apis() do
    @apis
  end

  def get_api(id) do
    {val, _} = Integer.parse(id)
    api = get_apis()
      |> Enum.find(fn(v) -> v.id == val end)
    api
  end

end
