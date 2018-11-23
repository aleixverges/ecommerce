defmodule Ecommerce.Catalogue.ProductTest do
  use ExUnit.Case
  doctest Ecommerce.Catalogue.Product

  alias Ecommerce.Commands.CreateProduct
  alias Ecommerce.Commands.DecreaseStock
  alias Ecommerce.Events.ProductCreated
  alias Ecommerce.Events.StockDecreased
  alias Ecommerce.Catalogue.Product

    test "should be created" do
      product = %Product{}
      create_product = %CreateProduct{
        uuid: "ACC123",
        name: "some product name",
        description: "some product description",
        price: 10.10,
        stock: 20
      }

      event = Product.create(product, create_product)

      assert event == %ProductCreated{
        uuid: "ACC123",
        name: "some product name",
        description: "some product description",
        price: 10.10,
        stock: 20
      }
    end

    test "should decrease product stock" do
      product = %Product{
        uuid: "ACC123",
        name: "some product name",
        description: "some product description",
        price: 10.10,
        stock: 20
      }

      decrease_stock = %DecreaseStock{
        uuid: "ACC123",
        quantity: 1
      }

      event = Product.decrease_stock(product, decrease_stock)

      assert event == %StockDecreased{
        uuid: "ACC123",
        quantity: 1
      }
    end

    test "should apply product created event" do

      product = %Product{}
      product_created = %ProductCreated{
        uuid: "ACC123",
        name: "some product name",
        description: "some product description",
        price: 10.10,
        stock: 20
      }

      product = Product.apply(product, product_created)

      assert product == %Product{
        uuid: "ACC123",
        name: "some product name",
        description: "some product description",
        price: 10.10,
        stock: 20
      }
    end

    test "should apply stock decreased event" do

      product = %Product{
        uuid: "ACC123",
        name: "some product name",
        description: "some product description",
        price: 10.10,
        stock: 20
      }

      stock_decreased = %StockDecreased{
        uuid: "ACC123",
        quantity: 1,
      }

      product = Product.apply(product, stock_decreased)

      assert product == %Product{
        uuid: "ACC123",
        name: "some product name",
        description: "some product description",
        price: 10.10,
        stock: 19
      }
    end
end
