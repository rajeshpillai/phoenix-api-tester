defmodule TelegraphWeb.TestView do
  use TelegraphWeb, :view

  def dump_nested(%{} = attributes, fun) do
    fun.(attributes, fun)
  end

  def dump_nested(value, _fun) do
    value
  end
end
