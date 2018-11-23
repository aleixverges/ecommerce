defmodule Ecommerce.Events.ProductCreated do
  defstruct [
    :uuid,
    :name,
    :description,
    :price,
    :stock,
  ]
end
