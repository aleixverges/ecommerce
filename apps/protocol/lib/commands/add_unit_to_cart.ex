defmodule Ecommerce.Protocol.Commands.AddUnitToCart do
  defstruct [
    :uuid,
    :product_uuid,
    :quantity,
  ]
end
