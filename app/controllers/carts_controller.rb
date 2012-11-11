class CartsController < ApplicationController
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
