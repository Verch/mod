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
    if params[:get_product_color_id]  # form for sizes to cart, if color selected (reload by ajax)
      @product_color = ProductColor.find_by_id(params[:get_product_color_id])
      @product_sizes = ProductSize.where("product_color_id = ?", @product_color.id)
    end

    respond_to :html, :js # show.html.erb
  end
end