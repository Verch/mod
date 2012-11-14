class PricesController < ApplicationController
  # PUT /prices/1
  def update
    @price = Price.find(params[:id])
    @price.update_attributes(params[:price])
    @current_price_id = @price.id

    respond_to do |format|
    	format.html {redirect_to product_colors_path(get_product_type_id: @price.product_type_id)}
    end
  end
end