product_colors = ProductColor.all
product_colors.each do |color|
	if (color.name == "Оранжевый")
		color.rgb = "#f47920"
		color.save
	end
end
