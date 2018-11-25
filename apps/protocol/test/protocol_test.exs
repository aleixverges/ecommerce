defmodule Ecommerce.ProtocolTest do
  use ExUnit.Case
  doctest Ecommerce.Protocol

  test "greets the world" do
    assert Ecommerce.Protocol.hello() == :world
  end
end
