#rails runner ~/Projects/modern/putdb.rb
#for heroku copy to heroku console

temp_product = Product.new
temp_product.name = "Футболки"
temp_product.small_image_url = "F1_small.png"				## I'M HERE WAITING!
temp_product.description_top = "<h1>Продажа футболок от компании «Модерн импорт»</h1>
<p>Существенным преимуществом компании «Модерн импорт» является возможность <strong>купить футболки в Минске оптом</strong>. Вы можете сделать заказ как на одну футболку, так и на целую фуру трикотажных изделий. Мы предлагаем детские, мужские и женские футболки.</p>
<p>Мы знаем, что при всем разнообразии рынка трикотажа, купить футболку высокого качества не так-то просто. Для трикотажной продукции практичность и удобство изделий – обязательные условия, кроме того, немаловажным фактором является наличие большого выбора цветов, фасонов и размеров – и здесь наши футболки для мужчин и женщин вне конкуренции. Наши покупатели остаются довольны!</p>"
temp_product.description_bottom = "<h2>Женские футболки (6 размеров, 18 цветов, хлопок и стрейч)</h2>
<p>Это изделия, отличающиеся удобством и практичностью. Женские футболки созданны специально для активных представительниц прекрасного пола, которые ценят стиль и комфорт. Купить футболки для женщин и девушек вы можете у нас - они всегда на складе.</p>
<h2>Мужские футболки (хлопок и стрейч, 8 размеров и 28 цветов)</h2>
<p>Данные модели не менее удобны. Широкий диапазон размеров позволяет подобрать изделие как для весьма крупных, так и для худых мужчин. Мужская половина человечества сможет носить их во время занятий спортом (посещения тренажерных залов, утренних пробежек и т.д.), в качестве повседневной одежды, надевать их под тёплые <a href='/tolstovki'>толстовки</a> в холодное время года и т.д.</p>
<h2>Детские футболки (6 размеров для детей от 2-х лет, 13 цветов, хлопок)</h2>
<p>Данные модели созданы с учётом того, что именно дети ценят комфорт больше всего. Им важно, чтобы изделия было в первую очередь удобным. Ребёнок может носить футболку на прогулки, дома и в любых ситуациях. Купив несколько ярких моделей, Вы создаёте полноценный гардероб ребёнка для любого времени года. Летом он сможет носить футболку с брюками, любыми штанами, <a href='/beysbolki'>бейсболками</a> а также юбками и другой одеждой. Зимой носить вместе с тёплой одеждой. Особенно актуальной данная одежда окажется, если Вы идёте в гости со своими детьми. Тепло одев их, Вы получаете возможность снять верхнюю одежду, и детям не будет жарко.</p>
<p>Купить футболки очень просто. Мы всегда предлагаем только качественные модели по наиболее привлекательной стоимости. Вами всегда могут быть выбраны и куплены футболки в любых цветах – популярностью в Минске сегодня пользуется мужские, женские, детские футболки белого цвета. И пусть они не отличаются практичностью, но зато очень привлекательны и смогут составить эффектный комплект с джинсами, юбками и брюками любых фасонов. Вами всегда может быть выбрана детская, мужская, женская футболка любого фасона и размера.</p>
<h3>Почему следует покупать футболки у нас?</h3>
<p><em>Мы предлагаем футболки по разумным ценам</em>. Заказ футболок MODERN для широкомасштабных рекламных акций дает мощный результат за счет долгой носки футболок и многократного показа логотипов. На потребительском рынке качество изделий MODERN является эталоном, но наши «рекламные» цены существенно ниже цен других поставщиков. Именно поэтому большое количество компаний Республики Беларусь заказывают и покупают <strong>женские и мужские футболки оптом</strong> именно у нас. Все модели на складе в Минске. Цену уточняйте у менеджеров.</p>"
temp_product.save
		temp_product_type = ProductType.new
		temp_product_type.product_id = temp_product.id
		temp_product_type.name = "Футболки кор. рук. Круглый ворот 155 гр. Хлопок 100%"
		temp_product_type.description = "Состав: хлопок 100%. Яркие цвета. Изделия не деформируются после многочисленных стирок. Воротник с добавлением лайкры. Мягкий компенсатор горловины. Усиленные плечевые швы. Везде двойная строчка. Суперстойкое активное крашение цветных и дополнительное отбеливание белых изделий. Для производства футболок используется суперчесанный хлопок высшего качества. Плотная вязка - идеально подходят для нанесения сложных цветных изображений. <b><br>Плотность: 155 гр/м2<br>
Размеры: S-5XL<br>
Количество цветов: 24<br></b>"
	    temp_product_type.big_image_url = "wear/f_m_kor_krug/okean_zeleniy.jpg"			## I'M HERE WAITING!
	    temp_product_type.small_image_url = "F1_small.png"	## I'M HERE WAITING!
	    temp_product_type.white_price_id = 0
	    temp_product_type.color_price_id = 0
	    temp_product_type.white_old_price_id = 0
	    temp_product_type.color_old_price_id = 0
	    temp_product_type.all_sizes = "S-5XL"
		temp_product_type.save
				temp_product_color = ProductColor.new
				temp_product_color.product_id = temp_product.id
				temp_product_color.product_type_id = temp_product_type.id
				temp_product_color.name = "Белый"
				temp_product_color.rgb = "#eeeeee"
		    	temp_product_color.big_image_url = "wear/f_m_kor_krug/okean_zeleniy.jpg"
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
						temp_product_size = ProductSize.new
						temp_product_size.product_id = temp_product.id
						temp_product_size.product_type_id = temp_product_type.id
						temp_product_size.product_color_id = temp_product_color.id
						temp_product_size.name = "4XL"
						temp_product_size.number = 1
						temp_product_size.count = 120
						temp_product_size.reserv = 0
						temp_product_size.save
						temp_product_size = ProductSize.new
						temp_product_size.product_id = temp_product.id
						temp_product_size.product_type_id = temp_product_type.id
						temp_product_size.product_color_id = temp_product_color.id
						temp_product_size.name = "5XL"
						temp_product_size.number = 1
						temp_product_size.count = 120
						temp_product_size.reserv = 0
						temp_product_size.save
		temp_product_type = ProductType.new
		temp_product_type.product_id = temp_product.id
		temp_product_type.name = "Футболки жен. кор. рук. Круглый ворот 155 гр. Хлопок 100%"
		temp_product_type.description = "<b><br>Плотность: 155 гр/м2<br>Размеры: S-2XL<br>Количество цветов: 9<br></b>"
	    temp_product_type.big_image_url = "wear/f_f_kor_krug/red_blue.png"
	    temp_product_type.small_image_url = "F1_small.png"	## I'M HERE WAITING!
	    temp_product_type.white_price_id = 0
	    temp_product_type.color_price_id = 0
	    temp_product_type.white_old_price_id = 0
	    temp_product_type.color_old_price_id = 0
	    temp_product_type.all_sizes = "S-2XL"
		temp_product_type.save
				temp_product_color = ProductColor.new
				temp_product_color.product_id = temp_product.id
				temp_product_color.product_type_id = temp_product_type.id
				temp_product_color.name = "Белый"
				temp_product_color.rgb = "#eeeeee"
		    	temp_product_color.big_image_url = "wear/f_f_kor_krug/red_blue.jpg"
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
		temp_product_type = ProductType.new
		temp_product_type.product_id = temp_product.id
		temp_product_type.name = "Футболки длин. рук. Круглый ворот 155 гр. Хлопок 100% !!!!"
		temp_product_type.description = "Состав: хлопок 100%. Яркие цвета. Изделия не деформируются после многочисленных стирок. Воротник с добавлением лайкры. Мягкий компенсатор горловины. Усиленные плечевые швы. Везде двойная строчка. Суперстойкое активное крашение цветных и дополнительное отбеливание белых изделий. Для производства футболок используется суперчесанный хлопок высшего качества. Плотная вязка - идеально подходят для нанесения сложных цветных изображений. <b><br>Плотность: 155 гр/м2 !!!!!!!!!!!!<br>
Размеры: S-5XL<br>
Количество цветов: 24<br></b>"
	    temp_product_type.big_image_url = "wear/f_m_dl_krug/black_red.jpg"
	    temp_product_type.small_image_url = "F1_small.png"	## I'M HERE WAITING!
	    temp_product_type.white_price_id = 0
	    temp_product_type.color_price_id = 0
	    temp_product_type.white_old_price_id = 0
	    temp_product_type.color_old_price_id = 0
	    temp_product_type.all_sizes = "S-5XL"
		temp_product_type.save
				temp_product_color = ProductColor.new
				temp_product_color.product_id = temp_product.id
				temp_product_color.product_type_id = temp_product_type.id
				temp_product_color.name = "Белый"
				temp_product_color.rgb = "#eeeeee"
		    	temp_product_color.big_image_url = "wear/f_m_dl_krug/black_red.jpg"
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
						temp_product_size = ProductSize.new
						temp_product_size.product_id = temp_product.id
						temp_product_size.product_type_id = temp_product_type.id
						temp_product_size.product_color_id = temp_product_color.id
						temp_product_size.name = "4XL"
						temp_product_size.number = 1
						temp_product_size.count = 120
						temp_product_size.reserv = 0
						temp_product_size.save
						temp_product_size = ProductSize.new
						temp_product_size.product_id = temp_product.id
						temp_product_size.product_type_id = temp_product_type.id
						temp_product_size.product_color_id = temp_product_color.id
						temp_product_size.name = "5XL"
						temp_product_size.number = 1
						temp_product_size.count = 120
						temp_product_size.reserv = 0
						temp_product_size.save
		temp_product_type = ProductType.new
		temp_product_type.product_id = temp_product.id
		temp_product_type.name = "Стрейчевые футболки кор. рук. Круглый ворот 155 гр. Хлопок 100%"
		temp_product_type.description = "!!!Состав: хлопок 100%. Яркие цвета. Изделия не деформируются после многочисленных стирок. Воротник с добавлением лайкры. Мягкий компенсатор горловины. Усиленные плечевые швы. Везде двойная строчка. Суперстойкое активное крашение цветных и дополнительное отбеливание белых изделий. Для производства футболок используется суперчесанный хлопок высшего качества. Плотная вязка - идеально подходят для нанесения сложных цветных изображений. <b><br>Плотность: 155 гр/м2<br>
Размеры: S-5XL<br>
Количество цветов: 24<br></b>"
	    temp_product_type.big_image_url = "wear/f_m_kor_krug_s/fiol_black.jpg"
	    temp_product_type.small_image_url = "F1_small.png"	## I'M HERE WAITING!
	    temp_product_type.white_price_id = 0
	    temp_product_type.color_price_id = 0
	    temp_product_type.white_old_price_id = 0
	    temp_product_type.color_old_price_id = 0
	    temp_product_type.all_sizes = "S-5XL"
		temp_product_type.save
				temp_product_color = ProductColor.new
				temp_product_color.product_id = temp_product.id
				temp_product_color.product_type_id = temp_product_type.id
				temp_product_color.name = "Белый"
				temp_product_color.rgb = "#eeeeee"
		    	temp_product_color.big_image_url = "wear/f_m_kor_krug_s/fiol_black.jpg"
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
						temp_product_size = ProductSize.new
						temp_product_size.product_id = temp_product.id
						temp_product_size.product_type_id = temp_product_type.id
						temp_product_size.product_color_id = temp_product_color.id
						temp_product_size.name = "4XL"
						temp_product_size.number = 1
						temp_product_size.count = 120
						temp_product_size.reserv = 0
						temp_product_size.save
						temp_product_size = ProductSize.new
						temp_product_size.product_id = temp_product.id
						temp_product_size.product_type_id = temp_product_type.id
						temp_product_size.product_color_id = temp_product_color.id
						temp_product_size.name = "5XL"
						temp_product_size.number = 1
						temp_product_size.count = 120
						temp_product_size.reserv = 0
						temp_product_size.save
		temp_product_type = ProductType.new
		temp_product_type.product_id = temp_product.id
		temp_product_type.name = "Стрейчевые футболки женские кор. рук. Круглый ворот 155 гр. Хлопок 100%"
		temp_product_type.description = "!!!Состав: хлопок 100%. Яркие цвета. Изделия не деформируются после многочисленных стирок. Воротник с добавлением лайкры. Мягкий компенсатор горловины. Усиленные плечевые швы. Везде двойная строчка. Суперстойкое активное крашение цветных и дополнительное отбеливание белых изделий. Для производства футболок используется суперчесанный хлопок высшего качества. Плотная вязка - идеально подходят для нанесения сложных цветных изображений. <b><br>Плотность: 155 гр/м2<br>
Размеры: S-5XL<br>
Количество цветов: 24<br></b>"
	    temp_product_type.big_image_url = "wear/f_f_kor_krug_s/black_red.jpg"
	    temp_product_type.small_image_url = "F1_small.png"	## I'M HERE WAITING!
	    temp_product_type.white_price_id = 0
	    temp_product_type.color_price_id = 0
	    temp_product_type.white_old_price_id = 0
	    temp_product_type.color_old_price_id = 0
	    temp_product_type.all_sizes = "S-5XL"
		temp_product_type.save
				temp_product_color = ProductColor.new
				temp_product_color.product_id = temp_product.id
				temp_product_color.product_type_id = temp_product_type.id
				temp_product_color.name = "Белый"
				temp_product_color.rgb = "#eeeeee"
		    	temp_product_color.big_image_url = "wear/f_f_kor_krug_s/black_red.jpg"
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
						temp_product_size = ProductSize.new
						temp_product_size.product_id = temp_product.id
						temp_product_size.product_type_id = temp_product_type.id
						temp_product_size.product_color_id = temp_product_color.id
						temp_product_size.name = "4XL"
						temp_product_size.number = 1
						temp_product_size.count = 120
						temp_product_size.reserv = 0
						temp_product_size.save
						temp_product_size = ProductSize.new
						temp_product_size.product_id = temp_product.id
						temp_product_size.product_type_id = temp_product_type.id
						temp_product_size.product_color_id = temp_product_color.id
						temp_product_size.name = "5XL"
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