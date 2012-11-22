class CartsController < ApplicationController
  def create
    @cart = current_cart
    @cart.destroy
    @cart = current_cart
    @order = Order.find_by_id(params[:order_id])
    @cart.add_line_items_from_order(@order)
    #@order.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Ваш заказ удален. Отредактируйте корзину и сохраните заказ.' }
    end
  end
  # DELETE /carts/1
  def destroy
    @cart = current_cart
    @cart.destroy
    session[:cart_id] = nil
    respond_to do |format|
    	format.html { redirect_to root_path, notice: "Ваша корзина пуста" }
    end
  end
end
