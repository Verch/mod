class ProductColorsController < ApplicationController
  # GET /product_colors
  def index
    @product_colors = ProductColor.where("product_type_id = ?", params[:get_product_type_id])
    respond_to :html # index.html.erb
  end
end