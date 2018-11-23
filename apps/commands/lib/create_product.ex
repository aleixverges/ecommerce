defmodule Ecommerce.Commands.CreateProduct do
  defstruct [
    :uuid,
    :name,
    :description,
    :price,
    :stock,
  ]
end
