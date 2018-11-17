defmodule Ecommerce.InfrastructureTest do
  use ExUnit.Case
  doctest Ecommerce.Infrastructure

  test "greets the world" do
    assert Ecommerce.Infrastructure.hello() == :world
  end
end
