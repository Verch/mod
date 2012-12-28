class ProductTypesController < ApplicationController
  # GET /product_types
  def index
    @product_types = ProductType.where("product_id = ?", params[:get_product_id])
    respond_to :html # index.html.erb
  end

  # GET /product_types/1
  def show
    @product_type = ProductType.find(params[:id])
    @product_colors = ProductColor.find_all_by_product_type_id(@product_type.id)
    @white_prices = Price.find_by_id(@product_type.white_price_id)
    @color_prices = Price.find_by_id(@product_type.color_price_id)
    @white_prices_old = Price.find_by_id(@product_type.white_old_price_id)
    @color_prices_old = Price.find_by_id(@product_type.color_old_price_id)
    if params[:get_product_color_id]  # form for sizes to cart, if color selected (reload by ajax)
      @product_color = ProductColor.find_by_id(params[:get_product_color_id])
      @product_sizes = ProductSize.where("product_color_id = ?", @product_color.id)
    else
      @product_color = @product_colors.first
    end

    @title = @product_type.name
    @meta_desc = @product_type.name+" - Модерн Импорт - покупайте в Минске"

    respond_to :html, :js # show.html.erb
  end
end