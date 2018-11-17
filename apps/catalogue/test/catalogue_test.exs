defmodule Ecommerce.CatalogueTest do
  use ExUnit.Case
  doctest Ecommerce.Catalogue

  test "greets the world" do
    assert Ecommerce.Catalogue.hello() == :world
  end
end
