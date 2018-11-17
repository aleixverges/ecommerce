defmodule Ecommerce.Web.PageController do
  use Ecommerce.Web.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
