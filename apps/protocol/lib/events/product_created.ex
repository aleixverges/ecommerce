defmodule Ecommerce.Protocol.Events.ProductCreated do
  defstruct [
    :uuid,
    :name,
    :description,
    :price,
    :stock,
  ]
end
