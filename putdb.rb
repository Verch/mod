#rails runner ~/Projects/modern/putdb.rb
#for heroku copy to heroku console

temp_product = Product.new
temp_product.name = "Футболки"
temp_product.small_image_url = "F1_small.png"				## I'M HERE WAITING!
temp_product.description_top = "prod1_desc_top"
temp_product.description_bottom = "prod1_desc_bot"
temp_product.save
		temp_product_type = ProductType.new
		temp_product_type.product_id = temp_product.id
		temp_product_type.name = "Футболки жен. кор. рук. Круглый ворот 155гр. Хлопок 100%"
		temp_product_type.description = "prod_type1_desc"							## I'M HERE WAITING!
	    temp_product_type.big_image_url = "F1.png"			## I'M HERE WAITING!
	    temp_product_type.small_image_url = "F1_small.png"	## I'M HERE WAITING!
	    temp_product_type.white_price_id = 0
	    temp_product_type.color_price_id = 0
	    temp_product_type.white_old_price_id = 0
	    temp_product_type.color_old_price_id = 0
	    temp_product_type.all_sizes = "S-3XL"
		temp_product_type.save
				temp_product_color = ProductColor.new
				temp_product_color.product_id = temp_product.id
				temp_product_color.product_type_id = temp_product_type.id
				temp_product_color.name = "Белый"
				temp_product_color.rgb = "#eeeeee" 		## OR #FFFFFF
		    	temp_product_color.big_image_url = ""		## I'M HERE WAITING!
				temp_product_color.save
						temp_product_size = ProductSize.new
						temp_product_size.product_id = temp_product.id
						temp_product_size.product_type_id = temp_product_type.id
						temp_product_size.product_color_id = temp_product_color.id
						temp_product_size.name = "S"
						temp_product_size.number = 1
						temp_product_size.count = 120
						temp_product_size.reserv = 0
						temp_product_size.save
						temp_product_size = ProductSize.new
						temp_product_size.product_id = temp_product.id
						temp_product_size.product_type_id = temp_product_type.id
						temp_product_size.product_color_id = temp_product_color.id
						temp_product_size.name = "M"
						temp_product_size.number = 1
						temp_product_size.count = 120
						temp_product_size.reserv = 0
						temp_product_size.save
						temp_product_size = ProductSize.new
						temp_product_size.product_id = temp_product.id
						temp_product_size.product_type_id = temp_product_type.id
						temp_product_size.product_color_id = temp_product_color.id
						temp_product_size.name = "L"
						temp_product_size.number = 1
						temp_product_size.count = 120
						temp_product_size.reserv = 0
						temp_product_size.save
						temp_product_size = ProductSize.new
						temp_product_size.product_id = temp_product.id
						temp_product_size.product_type_id = temp_product_type.id
						temp_product_size.product_color_id = temp_product_color.id
						temp_product_size.name = "XL"
						temp_product_size.number = 1
						temp_product_size.count = 120
						temp_product_size.reserv = 0
						temp_product_size.save
						temp_product_size = ProductSize.new
						temp_product_size.product_id = temp_product.id
						temp_product_size.product_type_id = temp_product_type.id
						temp_product_size.product_color_id = temp_product_color.id
						temp_product_size.name = "2XL"
						temp_product_size.number = 1
						temp_product_size.count = 120
						temp_product_size.reserv = 0
						temp_product_size.save
						temp_product_size = ProductSize.new
						temp_product_size.product_id = temp_product.id
						temp_product_size.product_type_id = temp_product_type.id
						temp_product_size.product_color_id = temp_product_color.id
						temp_product_size.name = "3XL"
						temp_product_size.number = 1
						temp_product_size.count = 120
						temp_product_size.reserv = 0
						temp_product_size.save

temp_product = Product.new
temp_product.name = "Рубашки поло"
temp_product.save
temp_product = Product.new
temp_product.name = "Бейсболки"
temp_product.save
temp_product = Product.new
temp_product.name = "Толстовки"
temp_product.save

#-------------------------- add user, admin and two groups

temp_user_group = UserGroup.new
temp_user_group.name = "admin"
temp_user_group.admin_flag = true
temp_user_group.view_reserv_flag = true
temp_user_group.view_sklad_flag = true
temp_user_group.save

temp_user_group = UserGroup.new
temp_user_group.name = "user"
temp_user_group.admin_flag = false
temp_user_group.view_reserv_flag = true
temp_user_group.view_sklad_flag = true
temp_user_group.save

temp_user = User.new
temp_user.name = "admin"
temp_user.email = "admin@admin"
temp_user.password = "admin"
temp_user.password_confirmation = "admin"
temp_user.reg_confirm_admin = true
temp_user.user_group_id = 1
temp_user.last_in = DateTime.now
temp_user.save

temp_user = User.new
temp_user.name = "user"
temp_user.email = "user@user"
temp_user.password = "user"
temp_user.password_confirmation = "user"
temp_user.reg_confirm_admin = true
temp_user.last_in = DateTime.now
temp_user.save

