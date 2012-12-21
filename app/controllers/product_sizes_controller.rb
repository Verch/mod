class ProductSizesController < ApplicationController
  # GET /product_sizes
  def index
    @products = Product.all
    @product_types = ProductType.where("id = 0")
    @product_colors = ProductColor.where("id = 0")
    @product_sizes = ProductSize.where("id = 0")
    @current_product = Product.first
    @current_product_type = ProductType.first
    @current_product_color = ProductColor.first
    @current_product.name = ''
    @current_product_type.name = ''
    @current_product_color.name = ''
    @current_product.id = 0
    @current_product_type.id = 0
    @current_product_color.id = 0

    if params[:product_id] && params[:product_id] != ''
      @product_types = ProductType.where("product_id = ?", params[:product_id])
      @current_product = Product.find_by_id(params[:product_id])
    end
    if params[:product_type_id] && params[:product_type_id] != ''
      @product_colors = ProductColor.where("product_type_id = ?", params[:product_type_id])
      @current_product_type = ProductType.find_by_id(params[:product_type_id])
      @current_product = Product.find_by_id(params[:product_id])
    end
    if params[:product_color_id] && params[:product_color_id] != ''
      @product_sizes = ProductSize.where("product_color_id = ?", params[:product_color_id])
      @current_product_color = ProductColor.find_by_id(params[:product_color_id])
      @current_product_type = ProductType.find_by_id(params[:product_type_id])
      @current_product = Product.find_by_id(params[:product_id])
    end

    if params[:get_product_type_id]
      @product_colors = ProductColor.where("product_type_id = ?", params[:get_product_type_id])
      @product_type = ProductType.find_by_id(params[:get_product_type_id])
    end

    respond_to :html # index.html.erb
  end

  # PUT /product_sizes/1
  def update
    @product_size = ProductSize.find(params[:id])

    if params[:product_size]
      @product_color = ProductColor.find_by_id(@product_size.product_color_id)
      @product_sizes = ProductSize.where("product_color_id = ?", @product_color.id)
      @product_colors = ProductColor.where("product_type_id = ?", @product_size.product_type_id)
      if params[:common_size]
        @product_sizes.each do |product_size|
          product_size.price = params[:product_size][:price]
          product_size.save
        end

      else
      if params[:common_color]
        temp_product_colors = ProductColor.where("product_type_id = ?", @product_color.product_type_id)
        temp_product_colors.each do |product_color_temp|
          product_color_temp.product_sizes.each do |product_size_temp|
            if product_size_temp.name == @product_size.name
              product_size_temp.price = params[:product_size][:price]
              product_size_temp.save
            end
          end
        end
      else
        if params[:product_size][:count]
          @new_count = params[:product_size][:count].to_i # + @product_size.count # for +-
          params.update(:product_size=>{:count => @new_count})
        end    
        @product_size.update_attributes(params[:product_size])
        @current_product_size_id = @product_size.id
      end
      end
    end
    respond_to do |format|
      #format.html { redirect_to @product_size, notice: 'Product size was successfully updated.' }
      format.js { @current_product_size_id}
    end
  end
end