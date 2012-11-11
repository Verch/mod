class ProductsController < ApplicationController
  # GET /products
  def index
    @products = Product.all
    respond_to :html # index.html.erb
  end

  # GET /products/1
  def show
    @product = Product.find(params[:id])
    @product_types = ProductType.find_all_by_product_id(@product.id)
    respond_to :html # show.html.erb
  end
end