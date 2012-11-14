class ProductColorsController < ApplicationController
  # GET /product_colors
  def index
    @product_colors = ProductColor.where("product_type_id = ?", params[:get_product_type_id])
    @product_type = ProductType.find_by_id(params[:get_product_type_id])

    @product_sizes = ProductSize.where("product_color_id = ?", @product_colors.first.id)

    @white_prices = Price.find_by_id(@product_type.white_price_id)
    @color_prices = Price.find_by_id(@product_type.color_price_id)
    @white_prices_old = Price.find_by_id(@product_type.white_old_price_id)
    @color_prices_old = Price.find_by_id(@product_type.color_old_price_id)

    respond_to :html # index.html.erb
  end
end