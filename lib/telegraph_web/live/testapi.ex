defmodule TelegraphWeb.TestApiLive do
  # In Phoenix v1.6+ apps, the line below should be: use MyAppWeb, :live_view
  use TelegraphWeb, :live_view



  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
      <div>
        <h2>API Test</h2>
      </div>
    """
  end

end
