defmodule Ecommerce.CommandsTest do
  use ExUnit.Case
  doctest Ecommerce.Commands

  test "greets the world" do
    assert Ecommerce.Commands.hello() == :world
  end
end
