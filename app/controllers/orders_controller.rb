class OrdersController < ApplicationController
  # GET /orders
  def index
    respond_to do |format|
      if @current_group && @current_group.admin_flag  
        case params[:temp_order_id]
          when "1"
            @orders = Order.where("reserv_flag = ? AND archive_flag = ?", false, false).order("name ASC")
          when "2"
            @orders = Order.where("reserv_flag = ? AND archive_flag = ?", false, false).order("updated_at DESC")
          when "3"
            @orders = Order.where("reserv_flag = ? AND archive_flag = ?", true, false).order("name ASC")
          when "4"
            @orders = Order.where("reserv_flag = ? AND archive_flag = ?", true, false).order("updated_at DESC")
          when "5"
            @orders = Order.where("archive_flag = ?", true).order("name ASC")
          when "6"
            @orders = Order.where("archive_flag = ?", true).order("updated_at DESC")
          else
            @orders = Order.where("reserv_flag = ? AND archive_flag = ?", false, false).order("name ASC")  
        end
      else
        if @current_user
          @orders = Order.find_all_by_user_id(@current_user.id)
        else
          format.html { redirect_to root_path }
        end
      end
      format.html # index.html.erb
    end  
  end

  # GET /orders/1
  def show
    respond_to do |format|
      if @current_user
        if @current_group.admin_flag
          @order = Order.find_by_id(params[:id])
        else
          if @current_user.id == Order.find_by_id(params[:id]).user_id
            @order = Order.find_by_id(params[:id])
          else
            format.html { redirect_to "index" }
          end
        end

        @line_items = LineItem.find_all_by_order_id(@order.id)

        @products_in_order = Array.new #include all products that consist in order
        @types_in_order = Array.new
        @colors_in_order = Array.new

        @line_items.each do |line_item| 
          unless @products_in_order.include?(Product.find_by_id(ProductSize.find_by_id(line_item.product_size_id).product_id).id)
            @products_in_order << Product.find_by_id(ProductSize.find_by_id(line_item.product_size_id).product_id).id
          end

          unless @types_in_order.include?(ProductType.find_by_id(ProductSize.find_by_id(line_item.product_size_id).product_type_id).id)
            @types_in_order << ProductType.find_by_id(ProductSize.find_by_id(line_item.product_size_id).product_type_id).id
          end

          unless @colors_in_order.include?(ProductColor.find_by_id(ProductSize.find_by_id(line_item.product_size_id).product_color_id).id)
            @colors_in_order << ProductColor.find_by_id(ProductSize.find_by_id(line_item.product_size_id).product_color_id).id 
          end  
        end
        format.html
      else
        format.html { redirect_to root_path }
      end    
    end
  end

  # GET /orders/new
  def new
    @cart = current_cart
    if @cart.line_items.empty?
      redirect_to root_path, notice: "Ваша корзина пуста"
      return
    end

    @order = Order.new
    respond_to :html # new.html.erb
  end

  # POST /orders
  def create
    if @current_user == nil
      @order = Order.new(params[:order])
    else 
      @order = Order.new(params[:order])
      @order.user_id = @current_user.id
      @order.name = @current_user.company_name
      @order.email = @current_user.email
    end
    @order.add_line_items_from_cart(current_cart)

    respond_to do |format|
      if @order.save
        Cart.destroy(session[:cart_id])
        session[:cart_id] = nil
        if @current_user == nil
          format.html { redirect_to root_path, notice: "Ваш заказ сохранен."}
        else  
          format.html { redirect_to @order, notice: 'Ваш заказ сохранен.' }
        end
      else
        @cart = current_cart
        format.html { render action: "new" }
      end
    end
  end

  # DELETE /orders/1
  def destroy
    @order = Order.find(params[:id])
    
    @line_items = LineItem.find_all_by_order_id(@order.id)

    @products_in_order = Array.new #include all products that consist in order
    @types_in_order = Array.new
    @colors_in_order = Array.new
    
    @line_items.each do |line_item| 
      unless @products_in_order.include?(Product.find_by_id(ProductType.find_by_id(ProductColor.find_by_id(ProductSize.find_by_id(line_item.product_size_id).product_color_id).product_type_id).product_id).id)
        @products_in_order << Product.find_by_id(ProductType.find_by_id(ProductColor.find_by_id(ProductSize.find_by_id(line_item.product_size_id).product_color_id).product_type_id).product_id).id
      end

      unless @types_in_order.include?(ProductType.find_by_id(ProductColor.find_by_id(ProductSize.find_by_id(line_item.product_size_id).product_color_id).product_type_id).id)
        @types_in_order << ProductType.find_by_id(ProductColor.find_by_id(ProductSize.find_by_id(line_item.product_size_id).product_color_id).product_type_id).id
      end

      unless @colors_in_order.include?(ProductColor.find_by_id(ProductSize.find_by_id(line_item.product_size_id).product_color_id).id)
         @colors_in_order << ProductColor.find_by_id(ProductSize.find_by_id(line_item.product_size_id).product_color_id).id 
      end  
    end
=begin
    #вывод истории заказов в EXEL документ
    workbook = WriteExcel.new('ruby.xls')
    worksheet  = workbook.add_worksheet
    worksheet.write(2, 1, 'Продукт')
    worksheet.write(2, 2, 'Тип')
    worksheet.write(2, 3, 'Цвет')
    worksheet.set_column(1, )
    worksheet.write(1, 4, 'Размер')
      @products_in_order.each do |product_in_order|
          @types_in_order.each do |type_in_order|
            if ProductType.find_by_id(type_in_order).product_id == product_in_order
                @colors_in_order.each do |color_in_order|
                  if ProductColor.find_by_id(color_in_order).product_type_id == type_in_order
                    @line_items.each do |line_item|
                      if ProductSize.find_by_id(line_item.product_size_id).product_color_id == color_in_order
                        if ProductSize.find_by_id(line_item.product_size_id).product_color_id == color_in_order
                          worksheet.write(3, 1, Product.find_by_id(product_in_order).name) 
                          worksheet.write(3, 2, ProductType.find_by_id(type_in_order).name) 
                          worksheet.write(3, 3, ProductColor.find_by_id(color_in_order).name)
                          worksheet.write(2, 4, ProductSize.find_by_id(line_item.product_size_id).name)
                          worksheet.write(3, 4, line_item.quantity)
                        end
                      end
                    end
                  end
                end
            end
          end   
      end
    workbook.close
    @order.destroy
=end
    respond_to do |format|
      format.html {redirect_to orders_url}
    end
  end
end
