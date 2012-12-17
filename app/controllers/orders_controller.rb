class OrdersController < ApplicationController
  # GET /orders
  def index
    #cost
    @orders = Order.all
    @orders.each do |order|
      if order.line_items.empty?
        order.destroy
      end
    end

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
    @order = Order.find_by_id(params[:id])
    if @order.user_id != 0
      @user = User.find_by_id(@order.user.id)
    end
    

    respond_to do |format|
      unless (@current_user) && (@current_group.admin_flag || @current_user.id == @user.id)
        format.html { redirect_to root_path, notice: "Нет прав доступа" }
      else
        
        @cost = 0

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

        @types_in_order.each do |temp_type_id|
          temp_type = ProductType.find_by_id(temp_type_id)
          quant_white = 0
          quant_color = 0
          @line_items.each do |line_item|
            if ProductSize.find_by_id(line_item.product_size_id).product_type_id == temp_type_id
              if ProductColor.find_by_id(ProductSize.find_by_id(line_item.product_size_id).product_color_id).name == "Белый"
                quant_white = quant_white + line_item.quantity
              else
                quant_color = quant_color + line_item.quantity
              end
            end
          end
          white_price = Price.find_by_id(temp_type.white_price_id)
          color_price = Price.find_by_id(temp_type.color_price_id)
          if quant_white < 10
            @cost = @cost + quant_white * white_price.price_1
          else
            if quant_white < 50
              @cost = @cost + quant_white * white_price.price_2
            else
              if quant_white < 100
                @cost = @cost + quant_white * white_price.price_3
              else
                if quant_white < 250
                  @cost = @cost + quant_white * white_price.price_4
                else
                  if quant_white < 500
                    @cost = @cost + quant_white * white_price.price_5
                  else
                    if quant_white < 1000
                      @cost = @cost + quant_white * white_price.price_6
                    else
                      @cost = @cost + quant_white * white_price.price_7
                    end
                  end
                end
              end
            end
          end

          if quant_color < 10
            @cost = @cost + quant_color * color_price.price_1
          else
            if quant_color < 50
              @cost = @cost + quant_color * color_price.price_2
            else
              if quant_color < 100
                @cost = @cost + quant_color * color_price.price_3
              else
                if quant_color < 250
                  @cost = @cost + quant_color * color_price.price_4
                else
                  if quant_color < 500
                    @cost = @cost + quant_color * color_price.price_5
                  else
                    if quant_color < 1000
                      @cost = @cost + quant_color * color_price.price_6
                    else
                      @cost = @cost + quant_color * color_price.price_7
                    end
                  end
                end
              end
            end
          end
        end
        format.html
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

    @line_items = LineItem.find_all_by_cart_id(@cart.id)

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

    @order = Order.new
    @user = @current_user
    respond_to :html # new.html.erb
  end

  # POST /orders
  def create
    if @current_user == nil
      @order = Order.new(params[:order])
      @order.status = "Ожидает"
    else 
      @order = Order.new(params[:order])
      @order.user_id = @current_user.id
      @order.name = @current_user.company_name
      @order.email = @current_user.email
      @order.status = "Ожидает"
    end
    @order.add_line_items_from_cart(current_cart)

    #cost
    @orders = Order.all
    @orders.each do |order|
      if order.line_items.empty?
        order.destroy
      end
    end


    respond_to do |format|
      if @order.save
        if @order.reserv_flag
          @order.line_items.each do |line_item|
            product_size = ProductSize.find_by_id(line_item.product_size_id)
            product_size.reserv = product_size.reserv + line_item.quantity
            product_size.save
          end
        end
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

  def update
    @order = Order.find(params[:id])
    if @order.reserv_flag
      @order.reserv_flag = false
      @order.line_items.each do |line_item|
        product_size = ProductSize.find_by_id(line_item.product_size_id)
        product_size.reserv = product_size.reserv - line_item.quantity
        product_size.save
      end
      @order.save
      redirect_to orders_path, notice: "Заказ сохранен"
    else
      @order.toggle(:archive_flag)
      if @order.archive_flag
        @order.status = "Завершен (перемещен в архив)"
      else
        @order.status = "Ожидает (восстановлен из архива)"
      end
      @order.save
      if @order.archive_flag
        redirect_to orders_path, notice: "Заказ отправлен в архив"
      else
        redirect_to orders_path, notice: "Заказ восстановлен из архива"
      end
    end
  end

  # DELETE /orders/1
  def destroy
    @order = Order.find(params[:id])
    if @order.reserv_flag
      @order.line_items.each do |line_item|
        product_size = ProductSize.find_by_id(line_item.product_size_id)
        product_size.reserv = product_size.reserv - line_item.quantity
        product_size.save
      end
    end
    @order.destroy
    respond_to do |format|
      format.html {redirect_to orders_url}
    end
  end
end
