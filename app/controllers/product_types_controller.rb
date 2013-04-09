﻿class ProductTypesController < ApplicationController
  # GET /product_types
  def index
    @product_types = ProductType.all
    respond_to :html # index.html.erb
  end

  # GET /product_types/1
  def show
    @product_type = ProductType.find(params[:id])

    if @product_type.id == 1 
      @title = "Футболки оптом: мужские, женские и детские футболки купить в Минске"
      @meta_desc = "Футболки Модерн Импорт - футболки мужские короткий рукав, 155 гр, хлопок 100% - покупайте в Минске!"
    else
    if @product_type.id == 2 
      @title = "Футболки оптом: мужские, женские и детские футболки купить в Минске"
      @meta_desc = "Футболки Модерн Импорт - футболки женские короткий рукав, 155 гр, хлопок 100% - покупайте в Минске!"
    else
    if @product_type.id == 3 
      @title = "Футболки оптом: мужские, женские и детские футболки купить в Минске"
      @meta_desc = "Футболки Модерн Импорт - футболки детские короткий рукав, 155 гр, хлопок 100% - покупайте в Минске!"
    else        
    if @product_type.id == 4 
      @title = "Футболки оптом: мужские, женские и детские футболки купить в Минске"
      @meta_desc = "Футболки Модерн Импорт - футболки мужские длинный рукав, 155 гр, хлопок 100% - покупайте в Минске!"
    else
    if @product_type.id == 5 
      @title = "Футболки оптом: мужские, женские и детские футболки купить в Минске"
      @meta_desc = "Футболки Модерн Импорт - футболки мужские короткий рукав, 180 гр, хлопок 92%, лайкра 8%  - покупайте в Минске!"
    else
    if @product_type.id == 6 
      @title = "Футболки оптом: мужские, женские и детские футболки купить в Минске"
      @meta_desc = "Футболки Модерн Импорт - футболки женские короткий рукав, 180 гр, хлопок 92%, лайкра 8% - покупайте в Минске!"
    else
    if @product_type.id == 7 
      @title = "Футболки оптом: мужские, женские и детские футболки купить в Минске"
      @meta_desc = "Футболки Модерн Импорт - футболки мужские длинный рукав, 180 гр, хлопок 92%, лайкра 8% - покупайте в Минске!"
    else
    if @product_type.id == 8 
      @title = "Футболки оптом: мужские, женские и детские футболки купить в Минске"
      @meta_desc = "Футболки Модерн Импорт - футболки мужские длинный рукав, 180 гр, хлопок 92%, лайкра 8% - покупайте в Минске!"
    else
    if @product_type.id == 9 
      @title = "Футболки оптом: мужские, женские и детские футболки купить в Минске"
      @meta_desc = "Футболки Модерн Импорт - футболки короткий рукав, 125 гр, хлопок 100% - покупайте в Минске!"
    else
    if @product_type.id == 10 
      @title = "Футболки оптом: мужские, женские и детские футболки купить в Минске"
      @meta_desc = "Футболки Модерн Импорт - футболки безрукавки, 125 гр, хлопок 100% - покупайте в Минске!"
    else
    if @product_type.id == 11
      @title = "Рубашки поло оптом: мужские, женские рубашки поло купить в Минске"
      @meta_desc = "Рубашки поло Модерн Импорт - рубашки поло мужские короткий рукав, 190 гр, хлопок 100% - покупайте в Минске!"
    else
    if @product_type.id == 12
      @title = "Рубашки поло оптом: мужские, женские рубашки поло купить в Минске"
      @meta_desc = "Рубашки поло Модерн Импорт - рубашки поло женские короткий рукав, 190 гр, хлопок 100% - покупайте в Минске!"
    else
    if @product_type.id == 13
      @title = "Толстовки оптом: мужские, женские толстовки купить в Минске"
      @meta_desc = "Толстовки Модерн Импорт - толстовки мужские короткий рукав, 320 гр, хлопок 100% - покупайте в Минске!"
    else
    if @product_type.id == 14
      @title = "Толстовки оптом: мужские, женские толстовки купить в Минске"
      @meta_desc = "Толстовки Модерн Импорт - толстовки женские короткий рукав, 320 гр, хлопок 100% - покупайте в Минске!"
    else
    if @product_type.id == 15
      @title = "Бейсболки купить в Минске"
      @meta_desc = "Бейсболки Модерн Импорт - бейсболки классика, 100 гр - покупайте в Минске!"
    else
    if @product_type.id == 16
      @title = "Бейсболки купить в Минске"
      @meta_desc = "Бейсболки Модерн Импорт - бейсболки комфорт, 200 гр - покупайте в Минске!"
    else
    if @product_type.id == 17
      @title = "Бейсболки купить в Минске"
      @meta_desc = "Бейсболки Модерн Импорт - бейсболки люкс, 200 гр - покупайте в Минске!"
    else
    if @product_type.id == 18 
      @title = "Бейсболки купить в Минске"
      @meta_desc = "Бейсболки Модерн Импорт - бейсболки люкс экстра, 200 гр - покупайте в Минске!"
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end

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