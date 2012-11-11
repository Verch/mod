class LineItemsController < ApplicationController
  # POST /line_items
  def create
    @cart = current_cart
    params[:product_sizes].each do |product_size_to_cart|
      product_size = ProductSize.find_by_id(product_size_to_cart.first.to_i)
      count_to_cart = params[:product_sizes][product_size_to_cart.first].to_i
      if count_to_cart > 0 && count_to_cart < 1000
        @cart.add_product_size(product_size.id, count_to_cart)
      end
    end

    respond_to do |format|
        format.html { redirect_to product_sizes_path, notice: 'Line item was successfully created.' }
        format.js #{@current_item = @line_item}
    end
  end
end