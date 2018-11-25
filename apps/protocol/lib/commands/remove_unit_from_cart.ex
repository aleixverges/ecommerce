defmodule Ecommerce.Protocol.Commands.RemoveUnitFromCart do
  defstruct [
    :uuid,
    :product_uuid,
    :quantity,
  ]
end
