defmodule Aquarium.PageView do
  use Aquarium.Web, :view

  def content(fish, x, y) do
    Enum.find_value(fish, "empty", fn {name, place} -> if place == {x, y} do name end end)
  end

end
