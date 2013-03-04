colors = ProductColor.find_all_by_product_type_id(2)
colors.each do |color|
	color.big_image_url = "wear/fff/f_f_kor/logo.png"
	color.save
end

colors = ProductColor.find_all_by_product_type_id(9)
colors.each do |color|
	color.big_image_url = "wear/fff/f_b_kor/logo.png"
	color.save
end

colors = ProductColor.find_all_by_product_type_id(10)
colors.each do |color|
	color.big_image_url = "wear/fff/f_b_bez/logo.png"
	color.save
end


