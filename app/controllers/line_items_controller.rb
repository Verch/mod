class LineItemsController < ApplicationController
  # POST /line_items
  def create
    @cart = current_cart
    params[:product_sizes].each do |product_size_to_cart|
      product_size = ProductSize.find_by_id(product_size_to_cart.first.to_i)
      count_to_cart = params[:product_sizes][product_size_to_cart.first].to_i
      if count_to_cart > 0 && count_to_cart < 1000
        respond_to do |format|
          if params[:order_id]
            @order = Order.find_by_id(params[:order_id])
            @order.add_product_size(product_size.id, count_to_cart)
            format.html { redirect_to edit_order_path(@order)}
          else
            @cart.add_product_size(product_size.id, count_to_cart)
            format.html { redirect_to product_sizes_path}
            format.js #{@current_item = @line_item}
          end
        end
      end
    end
  end

  def destroy
    @line_item = LineItem.find(params[:id])
    @line_item.destroy

    respond_to do |format|
      format.js
    end
  end
end