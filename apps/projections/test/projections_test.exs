defmodule Ecommerce.ProjectionsTest do
  use ExUnit.Case
  doctest Ecommerce.Projections

  test "greets the world" do
    assert Ecommerce.Projections.hello() == :world
  end
end
