defmodule Ecommerce.Catalogue.Product do
  defstruct [
    :uuid,
    :name,
    :description,
    :price,
    :stock,
  ]

  alias Ecommerce.Catalogue.Product
  alias Ecommerce.Protocol.Commands.CreateProduct
  alias Ecommerce.Protocol.Commands.DecreaseStock
  alias Ecommerce.Protocol.Events.ProductCreated
  alias Ecommerce.Protocol.Events.StockDecreased

  def create(%Product{}, %CreateProduct{} = create_product) do
    %ProductCreated{
      uuid: create_product.uuid,
      name: create_product.name,
      description: create_product.description,
      price: create_product.price,
      stock: create_product.stock,
    }
  end

  def decrease_stock(%Product{} = product, %DecreaseStock{} = decrease_stock) do
    %StockDecreased{
      uuid: decrease_stock.uuid,
      quantity: decrease_stock.quantity,
    }
  end

  def apply(
    %Product{} = product,
    %ProductCreated{
      uuid: uuid,
      name: name,
      description: description,
      price: price,
      stock: stock
    }
  ) do
    %Product{
      product |
      uuid: uuid,
      name: name,
      description: description,
      price: price,
      stock: stock
    }
  end

  def apply(
    %Product{} = product,
    %StockDecreased{
      uuid: uuid,
      quantity: quantity
    }
  ) do
    %Product{
      product |
      uuid: uuid,
      stock: product.stock - quantity
    }
  end
end
