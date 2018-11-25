defmodule Ecommerce.ShoppingCart.Cart do
  defstruct [
    :uuid,
    :lines,
    :total,
  ]

  alias Ecommerce.ShoppingCart.Cart
  alias Ecommerce.Command.AddUnitToCart
  alias Ecommerce.Command.RemoveUnitFromCart
  alias Ecommerce.Command.CheckOut
  alias Ecommerce.Protocol.Events.UnitAddedToCart
  alias Ecommerce.Protocol.Events.UnitRemovedFromCart
  alias Ecommerce.Protocol.Events.CheckedOut

  def add_product(%Cart{}, %AddUnitToCart{} = add_product) do
    %UnitAddedToCart{
      uuid: add_product.uuid,
      product_id: add_product.product_id,
    }
  end
end
