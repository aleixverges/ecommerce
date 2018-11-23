defmodule Ecommerce.Commands.RemoveUnitFromCart do
  defstruct [
    :uuid,
    :product_uuid,
    :quantity,
  ]
end
