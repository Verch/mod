class ProductsController < ApplicationController
  before_filter :authorize, only: :index
  # GET /products
  def index
    if !@current_group.view_sklad_flag
      redirect_to root_path, notice: "У вас нет прав доступа"
    else
      @products = Product.all
      respond_to :html # index.html.erb
    end
  end

  # GET /products/1
  def show
    @product = Product.find(params[:id])
    if @product.id == 1 
      @title = "Футболки оптом: мужские, женские и детские футболки купить в Минске"
      @meta_desc = "Продажа футболок в Минске оптом: мужские, женские и детские футболки любых размеров. Купи футболку недорого!"
    else
      if @product.id == 2 
        @title = "Рубашки поло купить в Минске"
        @meta_desc = "Купить рубашки поло в Минске. Большой выбор, выгодные условия!"
      else
        if @product.id == 3 
          @title = "Толстовки купить в Минске"
          @meta_desc = "Купить толстовки в Минске. Большой выбор. Покупайте зимой только тёплые толстовки!"
        else
          if @product.id == 4 
            @title = "Бейсболки купить в Минске"
            @meta_desc = "Купить бейсболки в Минске на выгодных условиях. Недорого!"
          end
        end 
      end 
    end
    @product_types = ProductType.find_all_by_product_id(@product.id)
    respond_to :html # show.html.erb
  end
end