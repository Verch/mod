colors = ProductColor.all
colors.each do |color|
	case color.name
		when "Бежевый"
			color.rgb = "#ffefd5"
			color.save
		when "Голубой"
			color.rgb = "#008cf0"
			color.save
		when "Желтый"
			color.rgb = "#ffa500"
			color.save
		when "Оранжевый"
			color.rgb = "#ff7518"
			color.save
		when "Лимонный"
			color.rgb = "#ffff00"
			color.save
		when "Небесный"
			color.rgb = "#7fc5ff"
			color.save
		when "Песочный"
			color.rgb = "#b5a53f"
			color.save
		when "Салатовый"
			color.rgb = "#b7ff49"
			color.save
		when "Светло-голубой"
			color.rgb = "#c6e6ff"
			color.save
		when "Светло-желтый"
			color.rgb = "#ffd700"
			color.save
		when "Слоновая кость"
			color.rgb = "#fff8dc"
			color.save
		when "Темно-зеленый"
			color.rgb = "#013220"
			color.save
		#when "Темно-синий"
		#	color.rgb = "#
		#	color.save
		when "Шоколад"
			color.rgb = "#4e2c0a"
			color.save
		when "Ярко-синий"
			color.rgb = "#120a8f"
			color.save
	end	
end