defmodule Ecommerce.ShoppingCartTest do
  use ExUnit.Case
  doctest Ecommerce.ShoppingCart

  test "greets the world" do
    assert Ecommerce.ShoppingCart.hello() == :world
  end
end
