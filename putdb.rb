#rails runner ~/Projects/modern/putdb.rb
#for heroku do in terminal
#heroku run console --app modernimport 'cat putdb.rb'

# struct of file:
# 	product
# 		product_type
# 			price(white)
#  			price(color)
# 			price(white_old)
# 			price(color_old)
#
# 			product_color
# 				product_size
# 				...
# 			... (colors)
# 		... (types)
# 	... (products)

rgbs = {"Белый"=>"#ffffff", "Голубой"=>"#00b2dc", "Ярко-синий"=>"#0057a5", "Темно-синий"=>"#001538", "Бирюзовый"=>"#00a8ba", "Океан"=>"#003b45", "Зеленый"=>"#00a950", "Темно-зеленый"=>"#00372a", "Слоновая кость"=>"#fff2c4", "Лимонный"=>"#f8ee06", "Светло-желтый"=>"#ffd602", "Желтый"=>"#fdb813", "Оранжевый"=>"#a47920", "Красный"=>"#d71635", "Темно-красный"=>"#b34215", "Шоколад"=>"#543019", "Салатовый"=>"#92c83e", "Песочный"=>"#c3b482", "Бордовый"=>"#8a0146", "Небесный"=>"#44c7ee", "Фиолетовый"=>"#7f3f98", "Серебристый"=>"#cbcfcb", "Серый"=>"#8e9291", "Черный"=>"#0a0405", "Бежевый"=>"#e7c8a5", "Оливковый"=>"#836b38", "Светло-голубой"=>"#c9eaf0", "Розовый"=>"#ed2061", "Кремовый"=>"#fcba63", "Хаки"=>"#918560"}
product = Product.new
product.name = "Футболки"
product.small_image_url = "F1_small.png"
product.description_top = "<h1>Продажа футболок от компании «Модерн импорт»</h1><p>Существенным преимуществом компании «Модерн импорт» является возможность <strong>купить футболки в Минске оптом</strong>. Вы можете сделать заказ как на одну футболку, так и на целую фуру трикотажных изделий. Мы предлагаем детские, мужские и женские футболки.</p><p>Мы знаем, что при всем разнообразии рынка трикотажа, купить футболку высокого качества не так-то просто. Для трикотажной продукции практичность и удобство изделий – обязательные условия, кроме того, немаловажным фактором является наличие большого выбора цветов, фасонов и размеров – и здесь наши футболки для мужчин и женщин вне конкуренции. Наши покупатели остаются довольны!</p>"
product.description_bottom = "<h2>Женские футболки (6 размеров, 18 цветов, хлопок и стрейч)</h2><p>Это изделия, отличающиеся удобством и практичностью. Женские футболки созданны специально для активных представительниц прекрасного пола, которые ценят стиль и комфорт. Купить футболки для женщин и девушек вы можете у нас - они всегда на складе.</p><h2>Мужские футболки (хлопок и стрейч, 8 размеров и 28 цветов)</h2><p>Данные модели не менее удобны. Широкий диапазон размеров позволяет подобрать изделие как для весьма крупных, так и для худых мужчин. Мужская половина человечества сможет носить их во время занятий спортом (посещения тренажерных залов, утренних пробежек и т.д.), в качестве повседневной одежды, надевать их под тёплые <a href='/tolstovki'>толстовки</a> в холодное время года и т.д.</p><h2>Детские футболки (6 размеров для детей от 2-х лет, 13 цветов, хлопок)</h2><p>Данные модели созданы с учётом того, что именно дети ценят комфорт больше всего. Им важно, чтобы изделия было в первую очередь удобным. Ребёнок может носить футболку на прогулки, дома и в любых ситуациях. Купив несколько ярких моделей, Вы создаёте полноценный гардероб ребёнка для любого времени года. Летом он сможет носить футболку с брюками, любыми штанами, <a href='/beysbolki'>бейсболками</a> а также юбками и другой одеждой. Зимой носить вместе с тёплой одеждой. Особенно актуальной данная одежда окажется, если Вы идёте в гости со своими детьми. Тепло одев их, Вы получаете возможность снять верхнюю одежду, и детям не будет жарко.</p><p>Купить футболки очень просто. Мы всегда предлагаем только качественные модели по наиболее привлекательной стоимости. Вами всегда могут быть выбраны и куплены футболки в любых цветах – популярностью в Минске сегодня пользуется мужские, женские, детские футболки белого цвета. И пусть они не отличаются практичностью, но зато очень привлекательны и смогут составить эффектный комплект с джинсами, юбками и брюками любых фасонов. Вами всегда может быть выбрана детская, мужская, женская футболка любого фасона и размера.</p><h3>Почему следует покупать футболки у нас?</h3><p><em>Мы предлагаем футболки по разумным ценам</em>. Заказ футболок MODERN для широкомасштабных рекламных акций дает мощный результат за счет долгой носки футболок и многократного показа логотипов. На потребительском рынке качество изделий MODERN является эталоном, но наши «рекламные» цены существенно ниже цен других поставщиков. Именно поэтому большое количество компаний Республики Беларусь заказывают и покупают <strong>женские и мужские футболки оптом</strong> именно у нас. Все модели на складе в Минске. Цену уточняйте у менеджеров.</p>"
product.save
path_bone = "wear/fff/f_m_kor/"
product_type = ProductType.new
product_type.product_id = product.id
product_type.name = "Футболки кор. рук. Круглый ворот 155 гр. Хлопок 100%"
product_type.description = "Состав: хлопок 100%. Яркие цвета. Изделия не деформируются после многочисленных стирок. Воротник с добавлением лайкры. Мягкий компенсатор горловины. Усиленные плечевые швы. Везде двойная строчка. Суперстойкое активное крашение цветных и дополнительное отбеливание белых изделий. Для производства футболок используется суперчесанный хлопок высшего качества. Плотная вязка - идеально подходят для нанесения сложных цветных изображений. <b><br>Плотность: 155 гр/м2<br>Размеры: S-3XL<br>Количество цветов: 24<br></b>"
product_type.big_image_url = path_bone+"example.png"
product_type.small_image_url = "F1_small.png"
product_type.white_price_id = 1
product_type.color_price_id = 2
product_type.white_old_price_id = 3
product_type.color_old_price_id = 4
product_type.all_sizes = "S-3XL"
product_type.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 59760
price.price_2 = 53400
price.price_3 = 51576
price.price_4 = 50052
price.price_5 = 48852
price.price_6 = 48336
price.price_7 = 47676
price.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 62244
price.price_2 = 55620
price.price_3 = 53736
price.price_4 = 52140
price.price_5 = 50880
price.price_6 = 50352
price.price_7 = 49656
price.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 59760
price.price_2 = 53400
price.price_3 = 51576
price.price_4 = 50052
price.price_5 = 48852
price.price_6 = 48336
price.price_7 = 47676
price.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 62244
price.price_2 = 55620
price.price_3 = 53736
price.price_4 = 52140
price.price_5 = 50880
price.price_6 = 50352
price.price_7 = 49656
price.save
colors = ["Белый", "Бежевый", "Бирюзовый", "Океан", "Бордовый", "Голубой", "Желтый", "Зеленый", "Красный", "Лимонный", "Небесный", "Оливковый", "Оранжевый", "Песочный", "Салатовый", "Светло-голубой", "Светло-желтый", "Серебристый", "Слоновая кость", "Темно-зеленый", "Темно-синий", "Фиолетовый", "Черный", "Шоколад", "Ярко-синий"]
big_image_urls = ["example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png"]
colors.each_index do |i|
product_color = ProductColor.new
product_color.product_id = product.id
product_color.product_type_id = product_type.id
product_color.name = colors[i]
product_color.rgb = rgbs[colors[i]]
product_color.big_image_url = path_bone+big_image_urls[i]
product_color.save
sizes = ["S","M","L","XL","2XL","3XL"]
sizes.each_index do |j|
product_size = ProductSize.new
product_size.product_id = product.id
product_size.product_type_id = product_type.id
product_size.product_color_id = product_color.id
product_size.name = sizes[j]
product_size.number = j+1
product_size.count = 100
product_size.reserv = 0
product_size.save
end
end
path_bone = "wear/fff/f_f_kor/"
product_type = ProductType.new
product_type.product_id = product.id
product_type.name = "Футболки жен. кор. рук. Круглый ворот 155 гр. Хлопок 100%"
product_type.description = "<b><br>Плотность: 155 гр/м2<br>Размеры: S-2XL<br>Количество цветов: 9<br></b>"
product_type.big_image_url = path_bone+"example.png"
product_type.small_image_url = "F1_small.png"
product_type.white_price_id = 5
product_type.color_price_id = 6
product_type.white_old_price_id = 7
product_type.color_old_price_id = 8
product_type.all_sizes = "S-2XL"
product_type.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 57264
price.price_2 = 51180
price.price_3 = 49428
price.price_4 = 47976
price.price_5 = 46812
price.price_6 = 46320
price.price_7 = 45684
price.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 59760
price.price_2 = 53400
price.price_3 = 51576
price.price_4 = 50052
price.price_5 = 48852
price.price_6 = 48336
price.price_7 = 47676
price.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 57264
price.price_2 = 51180
price.price_3 = 49428
price.price_4 = 47976
price.price_5 = 46812
price.price_6 = 46320
price.price_7 = 45684
price.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 59760
price.price_2 = 53400
price.price_3 = 51576
price.price_4 = 50052
price.price_5 = 48852
price.price_6 = 48336
price.price_7 = 47676
price.save
colors = ["Белый", "Светло-голубой", "Желтый", "Зеленый", "Красный", "Оранжевый", "Черный", "Ярко-синий", "Темно-синий"]
big_image_urls = ["example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png"]
colors.each_index do |i|
product_color = ProductColor.new
product_color.product_id = product.id
product_color.product_type_id = product_type.id
product_color.name = colors[i]
product_color.rgb = rgbs[colors[i]]
product_color.big_image_url = path_bone+big_image_urls[i]
product_color.save
sizes = ["S","M","L","XL","2XL"]
sizes.each_index do |j|
product_size = ProductSize.new
product_size.product_id = product.id
product_size.product_type_id = product_type.id
product_size.product_color_id = product_color.id
product_size.name = sizes[j]
product_size.number = j+1
product_size.count = 100
product_size.reserv = 0
product_size.save
end
end
path_bone = "wear/fff/f_k_kor/"
product_type = ProductType.new
product_type.product_id = product.id
product_type.name = "Футболки дет. кор. рук. Круглый ворот 155 гр. Хлопок 100%"
product_type.description = "Состав: хлопок 100%. Яркие цвета. Изделия не деформируются после многочисленных стирок. Воротник с добавлением лайкры. Мягкий компенсатор горловины. Усиленные плечевые швы. Везде двойная строчка. Суперстойкое активное крашение цветных и дополнительное отбеливание белых изделий. Для производства футболок используется суперчесанный хлопок высшего качества. Плотная вязка - идеально подходят для нанесения сложных цветных изображений.<b><br>Плотность: 155 гр/м2<br>Размеры: 5XS-S<br>Количество цветов: 14<br></b>"
product_type.big_image_url = path_bone+"example.png"
product_type.small_image_url = "F1_small.png"
product_type.white_price_id = 9
product_type.color_price_id = 10
product_type.white_old_price_id = 11
product_type.color_old_price_id = 12
product_type.all_sizes = "5XS-S"
product_type.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 40172
price.price_2 = 35904
price.price_3 = 34672
price.price_4 = 33649
price.price_5 = 32835
price.price_6 = 32494
price.price_7 = 32054
price.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 41998
price.price_2 = 37532
price.price_3 = 36256
price.price_4 = 35178
price.price_5 = 34331
price.price_6 = 33968
price.price_7 = 33506
price.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 40172
price.price_2 = 35904
price.price_3 = 34672
price.price_4 = 33649
price.price_5 = 32835
price.price_6 = 32494
price.price_7 = 32054
price.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 41998
price.price_2 = 37532
price.price_3 = 36256
price.price_4 = 35178
price.price_5 = 34331
price.price_6 = 33968
price.price_7 = 33506
price.save
colors = ["Белый", "Голубой", "Ярко-синий", "Слоновая кость", "Лимонный", "Желтый", "Зеленый", "Небесный", "Красный", "Оранжевый", "Черный", "Фиолетовый", "Бордовый", "Салатовый"]
big_image_urls = ["example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png"]
colors.each_index do |i|
product_color = ProductColor.new
product_color.product_id = product.id
product_color.product_type_id = product_type.id
product_color.name = colors[i]
product_color.rgb = rgbs[colors[i]]
product_color.big_image_url = path_bone+big_image_urls[i]
product_color.save
sizes = ["5XS","4XS","3XS","2XS","XS","S"]
sizes.each_index do |j|
product_size = ProductSize.new
product_size.product_id = product.id
product_size.product_type_id = product_type.id
product_size.product_color_id = product_color.id
product_size.name = sizes[j]
product_size.number = j+1
product_size.count = 100
product_size.reserv = 0
product_size.save
end
end
path_bone = "wear/fff/f_m_dl/"
product_type = ProductType.new
product_type.product_id = product.id
product_type.name = "Футболки дл. рук. Круглый-ворот 155 гр. Хлопок 100%"
product_type.description = "Состав: хлопок 100%. Яркие цвета. Изделия не деформируются после многочисленных стирок. Воротник с добавлением лайкры. Мягкий компенсатор горловины. Усиленные плечевые швы. Везде двойная строчка. Суперстойкое активное крашение цветных и дополнительное отбеливание белых изделий. Для производства футболок используется суперчесанный хлопок высшего качества. Плотная вязка - идеально подходят для нанесения сложных цветных изображений. <b><br>Плотность: 155 гр/м2<br>Размеры: S-3XL<br>Количество цветов: 7<br></b>"
product_type.big_image_url = path_bone+"example.png"
product_type.small_image_url = "F1_small.png"
product_type.white_price_id = 13
product_type.color_price_id = 14
product_type.white_old_price_id = 15
product_type.color_old_price_id = 16
product_type.all_sizes = "S-3XL"
product_type.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 84660
price.price_2 = 75648
price.price_3 = 73068
price.price_4 = 70908
price.price_5 = 69204
price.price_6 = 68472
price.price_7 = 67536
price.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 88632
price.price_2 = 79212
price.price_3 = 76512
price.price_4 = 74244
price.price_5 = 72456
price.price_6 = 71688
price.price_7 = 70716
price.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 84660
price.price_2 = 75648
price.price_3 = 73068
price.price_4 = 70908
price.price_5 = 69204
price.price_6 = 68472
price.price_7 = 67536
price.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 88632
price.price_2 = 79212
price.price_3 = 76512
price.price_4 = 74244
price.price_5 = 72456
price.price_6 = 71688
price.price_7 = 70716
price.save
colors = ["Белый", "Ярко-синий", "Красный", "Оранжевый", "Черный", "Слоновая кость", "Серебристый"]
big_image_urls = ["example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png"]
colors.each_index do |i|
product_color = ProductColor.new
product_color.product_id = product.id
product_color.product_type_id = product_type.id
product_color.name = colors[i]
product_color.rgb = rgbs[colors[i]]
product_color.big_image_url = path_bone+big_image_urls[i]
product_color.save
sizes = ["S","M","L","XL","2XL","3XL"]
sizes.each_index do |j|
product_size = ProductSize.new
product_size.product_id = product.id
product_size.product_type_id = product_type.id
product_size.product_color_id = product_color.id
product_size.name = sizes[j]
product_size.number = j+1
product_size.count = 100
product_size.reserv = 0
product_size.save
end
end
path_bone = "wear/fff/f_m_kor_s/"
product_type = ProductType.new
product_type.product_id = product.id
product_type.name = "Стрейчевые футболки муж. кор. рук. Круглый ворот 180 гр. хлопок 92% + эластан 8%"
product_type.description = "Состав: хлопок 92%+лайкра 8%. Для производства мужских футболок используется суперчесанный хлопок высшего качества. Подчеркивают фигуру. Суперстойкое активное крашение цветных и дополнительное отбеливание белых изделий. Идеально подходят для нанесения сложных цветных изображений.<b><br>Плотность: 180 гр/м2<br>Размеры: M-2XL<br>Количество цветов: 7<br></b>"
product_type.big_image_url = path_bone+"example.png"
product_type.small_image_url = "F1_small.png"
product_type.white_price_id = 17
product_type.color_price_id = 18
product_type.white_old_price_id = 19
product_type.color_old_price_id = 20
product_type.all_sizes = "M-2XL"
product_type.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 103572
price.price_2 = 92556
price.price_3 = 89400
price.price_4 = 86760
price.price_5 = 84660
price.price_6 = 83772
price.price_7 = 82632
price.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 107556
price.price_2 = 96120
price.price_3 = 92844
price.price_4 = 90096
price.price_5 = 87924
price.price_6 = 87000
price.price_7 = 85812
price.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 103572
price.price_2 = 92556
price.price_3 = 89400
price.price_4 = 86760
price.price_5 = 84660
price.price_6 = 83772
price.price_7 = 82632
price.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 107556
price.price_2 = 96120
price.price_3 = 92844
price.price_4 = 90096
price.price_5 = 87924
price.price_6 = 87000
price.price_7 = 85812
price.save
colors = ["Белый", "Ярко-синий", "Темно-синий", "Красный", "Оранжевый", "Черный", "Серебристый", "Фиолетовый"]
big_image_urls = ["example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png"]
colors.each_index do |i|
product_color = ProductColor.new
product_color.product_id = product.id
product_color.product_type_id = product_type.id
product_color.name = colors[i]
product_color.rgb = rgbs[colors[i]]
product_color.big_image_url = path_bone+big_image_urls[i]
product_color.save
sizes = ["M","L","XL","2XL"]
sizes.each_index do |j|
product_size = ProductSize.new
product_size.product_id = product.id
product_size.product_type_id = product_type.id
product_size.product_color_id = product_color.id
product_size.name = sizes[j]
product_size.number = j+1
product_size.count = 100
product_size.reserv = 0
product_size.save
end
end
path_bone = "wear/fff/f_f_kor_s/"
product_type = ProductType.new
product_type.product_id = product.id
product_type.name = "Стрейчевые футболки жен. кор. рук. Круглый ворот 200 гр. хлопок 92% + эластан 8%"
product_type.description = "Состав: хлопок 92%+лайкра 8%. Для производства женских футболок используется суперчесанный хлопок высшего качества. Зауженные двойные строчки и модельный ворот придают элегантность и подчеркивают женственность. Суперстойкое активное крашение цветных и дополнительное отбеливание белых изделий. Футболки идеально подходят для нанесения сложных цветных изображений.<b><br>Плотность: 200 гр/м2<br>Размеры: XS-XL<br>Количество цветов: 19<br></b>"
product_type.big_image_url = path_bone+"example.png"
product_type.small_image_url = "F1_small.png"
product_type.white_price_id = 21
product_type.color_price_id = 22
product_type.white_old_price_id = 23
product_type.color_old_price_id = 24
product_type.all_sizes = "XS-XL"
product_type.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 74700
price.price_2 = 66744
price.price_3 = 64476
price.price_4 = 62568
price.price_5 = 61056
price.price_6 = 60420
price.price_7 = 59592
price.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 77184
price.price_2 = 68976
price.price_3 = 66624
price.price_4 = 64656
price.price_5 = 63096
price.price_6 = 62436
price.price_7 = 61584
price.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 74700
price.price_2 = 66744
price.price_3 = 64476
price.price_4 = 62568
price.price_5 = 61056
price.price_6 = 60420
price.price_7 = 59592
price.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 77184
price.price_2 = 68976
price.price_3 = 66624
price.price_4 = 64656
price.price_5 = 63096
price.price_6 = 62436
price.price_7 = 61584
price.save
colors = ["Белый", "Бежевый", "Бирюзовый", "Голубой", "Желтый", "Зеленый", "Красный", "Лимонный", "Оранжевый", "Песочный", "Салатовый", "Серебристый", "Слоновая кость", "Темно-синий", "Фиолетовый", "Черный", "Ярко-синий", "Розовый", "Кремовый"]
big_image_urls = ["example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png"]
colors.each_index do |i|
product_color = ProductColor.new
product_color.product_id = product.id
product_color.product_type_id = product_type.id
product_color.name = colors[i]
product_color.rgb = rgbs[colors[i]]
product_color.big_image_url = path_bone+big_image_urls[i]
product_color.save
sizes = ["XS","S","M","L","XL"]
sizes.each_index do |j|
product_size = ProductSize.new
product_size.product_id = product.id
product_size.product_type_id = product_type.id
product_size.product_color_id = product_color.id
product_size.name = sizes[j]
product_size.number = j+1
product_size.count = 100
product_size.reserv = 0
product_size.save
end
end
path_bone = "wear/fff/f_m_dl_s/"
product_type = ProductType.new
product_type.product_id = product.id
product_type.name = "Стрейчевые футболки муж. дл. рук. Круглый ворот 180 гр. хлопок 92% + эластан 8%"
product_type.description = "Состав: хлопок 92%+лайкра 8%. Для производства мужских футболок используется суперчесанный хлопок высшего качества. Подчеркивают фигуру. Суперстойкое активное крашение цветных и дополнительное отбеливание белых изделий. Идеально подходят для нанесения сложных цветных изображений.<b><br>Плотность: 180 гр/м2<br>Размеры: M-2XL<br>Количество цветов: 7<br></b>"
product_type.big_image_url = path_bone+"example.png"
product_type.small_image_url = "F1_small.png"
product_type.white_price_id = 25
product_type.color_price_id = 26
product_type.white_old_price_id = 27
product_type.color_old_price_id = 28
product_type.all_sizes = "M-2XL"
product_type.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 110544
price.price_2 = 98784
price.price_3 = 95424
price.price_4 = 92604
price.price_5 = 90360
price.price_6 = 89419
price.price_7 = 88188
price.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 114528
price.price_2 = 102348
price.price_3 = 98856
price.price_4 = 95940
price.price_5 = 93624
price.price_6 = 92640
price.price_7 = 91368
price.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 110544
price.price_2 = 98784
price.price_3 = 95424
price.price_4 = 92604
price.price_5 = 90360
price.price_6 = 89419
price.price_7 = 88188
price.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 114528
price.price_2 = 102348
price.price_3 = 98856
price.price_4 = 95940
price.price_5 = 93624
price.price_6 = 92640
price.price_7 = 91368
price.save
colors = ["Белый", "Ярко-синий", "Темно-синий", "Красный", "Оранжевый", "Черный", "Серебристый"]
big_image_urls = ["example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png"]
colors.each_index do |i|
product_color = ProductColor.new
product_color.product_id = product.id
product_color.product_type_id = product_type.id
product_color.name = colors[i]
product_color.rgb = rgbs[colors[i]]
product_color.big_image_url = path_bone+big_image_urls[i]
product_color.save
sizes = ["M","L","XL","2XL"]
sizes.each_index do |j|
product_size = ProductSize.new
product_size.product_id = product.id
product_size.product_type_id = product_type.id
product_size.product_color_id = product_color.id
product_size.name = sizes[j]
product_size.number = j+1
product_size.count = 100
product_size.reserv = 0
product_size.save
end
end
path_bone = "wear/fff/f_f_dl_s/"
product_type = ProductType.new
product_type.product_id = product.id
product_type.name = "Стрейчевые футболки жен. дл. рук. Круглый ворот 180 гр. хлопок 92% + эластан 8%"
product_type.description = "Состав: хлопок 92%+лайкра 8%. Для производства женских футболок используется суперчесанный хлопок высшего качества. Зауженные двойные строчки и модельный ворот придают элегантность и подчеркивают женственность. Суперстойкое активное крашение цветных и дополнительное отбеливание белых изделий. Футболки идеально подходят для нанесения сложных цветных изображений.<b><br>Плотность: 180 гр/м2<br>Размеры: S-XL<br>Количество цветов: 8<br></b>"
product_type.big_image_url = path_bone+"example.png"
product_type.small_image_url = "F1_small.png"
product_type.white_price_id = 29
product_type.color_price_id = 30
product_type.white_old_price_id = 31
product_type.color_old_price_id = 32
product_type.all_sizes = "S-XL"
product_type.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 0
price.price_2 = 0
price.price_3 = 0
price.price_4 = 0
price.price_5 = 0
price.price_6 = 0
price.price_7 = 0
price.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 0
price.price_2 = 0
price.price_3 = 0
price.price_4 = 0
price.price_5 = 0
price.price_6 = 0
price.price_7 = 0
price.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 0
price.price_2 = 0
price.price_3 = 0
price.price_4 = 0
price.price_5 = 0
price.price_6 = 0
price.price_7 = 0
price.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 0
price.price_2 = 0
price.price_3 = 0
price.price_4 = 0
price.price_5 = 0
price.price_6 = 0
price.price_7 = 0
price.save
colors = ["Белый", "Голубой", "Лимонный", "Оранжевый", "Салатовый", "Черный", "Ярко-синий", "Кремовый"]
big_image_urls = ["example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png"]
colors.each_index do |i|
product_color = ProductColor.new
product_color.product_id = product.id
product_color.product_type_id = product_type.id
product_color.name = colors[i]
product_color.rgb = rgbs[colors[i]]
product_color.big_image_url = path_bone+big_image_urls[i]
product_color.save
sizes = ["S","M","L","XL"]
sizes.each_index do |j|
product_size = ProductSize.new
product_size.product_id = product.id
product_size.product_type_id = product_type.id
product_size.product_color_id = product_color.id
product_size.name = sizes[j]
product_size.number = j+1
product_size.count = 100
product_size.reserv = 0
product_size.save
end
end
path_bone = "wear/fff/f_b_kor/"
product_type = ProductType.new
product_type.product_id = product.id
product_type.name = "Футболки Topic кор. рук. хлопок 100% 125гр."
product_type.description = "Состав: хлопок 100%. Яркие цвета. Воротник с добавлением лайкры. Мягкий компенсатор горловины. Усиленные плечевые швы. Везде двойная строчка. Суперстойкое активное крашение цветных и дополнительное отбеливание белых изделий. Для производства футболок используется суперчесанный хлопок высшего качества.<b><br>Плотность: 125 гр/м2<br>Размеры: S-3XL<br>Количество цветов: 15<br></b>"
product_type.big_image_url = path_bone+"example.png"
product_type.small_image_url = "F1_small.png"
product_type.white_price_id = 33
product_type.color_price_id = 34
product_type.white_old_price_id = 35
product_type.color_old_price_id = 36
product_type.all_sizes = "S-3XL"
product_type.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 0
price.price_2 = 0
price.price_3 = 0
price.price_4 = 0
price.price_5 = 0
price.price_6 = 0
price.price_7 = 0
price.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 0
price.price_2 = 0
price.price_3 = 0
price.price_4 = 0
price.price_5 = 0
price.price_6 = 0
price.price_7 = 0
price.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 0
price.price_2 = 0
price.price_3 = 0
price.price_4 = 0
price.price_5 = 0
price.price_6 = 0
price.price_7 = 0
price.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 0
price.price_2 = 0
price.price_3 = 0
price.price_4 = 0
price.price_5 = 0
price.price_6 = 0
price.price_7 = 0
price.save
colors = ["Белый", "Бирюзовый", "Голубой", "Светло-желтый", "Зеленый", "Красный", "Оранжевый", "Салатовый", "Серебристый", "Темно-синий", "Фиолетовый", "Черный", "Ярко-синий"]
big_image_urls = ["example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png"]
colors.each_index do |i|
product_color = ProductColor.new
product_color.product_id = product.id
product_color.product_type_id = product_type.id
product_color.name = colors[i]
product_color.rgb = rgbs[colors[i]]
product_color.big_image_url = path_bone+big_image_urls[i]
product_color.save
sizes = ["S","M","L","XL","2XL","3XL"]
sizes.each_index do |j|
product_size = ProductSize.new
product_size.product_id = product.id
product_size.product_type_id = product_type.id
product_size.product_color_id = product_color.id
product_size.name = sizes[j]
product_size.number = j+1
product_size.count = 100
product_size.reserv = 0
product_size.save
end
end
path_bone = "wear/fff/f_b_bez/"
product_type = ProductType.new
product_type.product_id = product.id
product_type.name = "Футболки Topic без рук. хлопок 100% 125гр."
product_type.description = "Состав: хлопок 100%. Яркие цвета. Воротник с добавлением лайкры. Мягкий компенсатор горловины. Усиленные плечевые швы. Везде двойная строчка. Суперстойкое активное крашение цветных и дополнительное отбеливание белых изделий. Для производства футболок используется суперчесанный хлопок высшего качества.<b><br>Плотность: 125 гр/м2<br>Размеры: S-3XL<br>Количество цветов: 12<br></b>"
product_type.big_image_url = path_bone+"example.png"
product_type.small_image_url = "F1_small.png"
product_type.white_price_id = 37
product_type.color_price_id = 38
product_type.white_old_price_id = 39
product_type.color_old_price_id = 40
product_type.all_sizes = "S-3XL"
product_type.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 0
price.price_2 = 0
price.price_3 = 0
price.price_4 = 0
price.price_5 = 0
price.price_6 = 0
price.price_7 = 0
price.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 0
price.price_2 = 0
price.price_3 = 0
price.price_4 = 0
price.price_5 = 0
price.price_6 = 0
price.price_7 = 0
price.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 0
price.price_2 = 0
price.price_3 = 0
price.price_4 = 0
price.price_5 = 0
price.price_6 = 0
price.price_7 = 0
price.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 0
price.price_2 = 0
price.price_3 = 0
price.price_4 = 0
price.price_5 = 0
price.price_6 = 0
price.price_7 = 0
price.save
colors = ["Белый", "Бирюзовый", "Голубой", "Светло-желтый", "Зеленый", "Красный", "Оранжевый", "Салатовый", "Серебристый", "Темно-синий", "Фиолетовый", "Черный", "Ярко-синий"]
big_image_urls = ["example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png"]
colors.each_index do |i|
product_color = ProductColor.new
product_color.product_id = product.id
product_color.product_type_id = product_type.id
product_color.name = colors[i]
product_color.rgb = rgbs[colors[i]]
product_color.big_image_url = path_bone+big_image_urls[i]
product_color.save
sizes = ["S","M","L","XL","2XL","3XL"]
sizes.each_index do |j|
product_size = ProductSize.new
product_size.product_id = product.id
product_size.product_type_id = product_type.id
product_size.product_color_id = product_color.id
product_size.name = sizes[j]
product_size.number = j+1
product_size.count = 100
product_size.reserv = 0
product_size.save
end
end
product = Product.new
product.name = "Рубашки поло"
product.small_image_url = "F1_small.png"
product.description_top = "<h1>Рубашки поло – качество проверенное временем</h1><p><strong>Классические рубашки поло </strong>– мягкие рубашки тонкого трикотажа с воротничком и короткими рукавами. От воротника три пуговицы. Классическая модель сформировалась достаточно давно и не меняется уже десятилетия. Сегодня это не только спортивная одежда, но и удобная офисная и даже деловая одежда. Рубашка поло прекрасно сочетается с бейсболками, шортами, джинсами, юбками и брюками.</p>"
product.description_bottom = "<p>Удобная рубашка поло придется по душе всякому, кто ее наденет. Кроме прочего они отличная рекламная площадка: их с логотипом вашей компании можно дарить сотрудникам, партнерам и клиентам. Этим шагом вы укрепите положительное отношение к вашей компании. В «Модерн импорт» можно выгодно заказать качественные рубашки поло.</p><p>Наш ассортимент рубашек:</p><ul><li>Мужские рубашки поло: 6 размеров от XS до 2XL. Приятно удивят 13 цветов на выбор.</li><li>Женские рубашки поло: 7 размеров от S до 4XL в 12 вариантах цветов.</li></ul>"
product.save
path_bone = "wear/rrr/r_m/"
product_type = ProductType.new
product_type.product_id = product.id
product_type.name = "Рубашки поло муж. кор. рук. 190 гр. Хлопок 100%"
product_type.description = "Материал: пике, хлопок 100%. Усиленные плечевые швы. Декоративная отделка планки пуговицами в тон ткани. Суперстойкое активное крашение цветных и дополнительное отбеливание белых изделий. Плотная вязка полотна, качественный пошив. Для производства используется суперчесанный хлопок высшего качества.<b><br>Плотность: 180 гр/м2<br>Размеры: XS-2XL<br>Количество цветов: 14<br></b>"
product_type.big_image_url = path_bone+"black.png"
product_type.small_image_url = "F1_small.png"
product_type.white_price_id = 41
product_type.color_price_id = 42
product_type.white_old_price_id = 43
product_type.color_old_price_id = 44
product_type.all_sizes = "XS-2XL"
product_type.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 109548
price.price_2 = 97896
price.price_3 = 94560
price.price_4 = 91764
price.price_5 = 89544
price.price_6 = 88608
price.price_7 = 87396
price.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 114528
price.price_2 = 102348
price.price_3 = 98856
price.price_4 = 95940
price.price_5 = 93624
price.price_6 = 92640
price.price_7 = 91368
price.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 109548
price.price_2 = 97896
price.price_3 = 94560
price.price_4 = 91764
price.price_5 = 89544
price.price_6 = 88608
price.price_7 = 87396
price.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 114528
price.price_2 = 102348
price.price_3 = 98856
price.price_4 = 95940
price.price_5 = 93624
price.price_6 = 92640
price.price_7 = 91368
price.save
colors = ["Белый", "Бирюзовый", "Желтый", "Зеленый", "Красный", "Оранжевый", "Песочный", "Серебристый", "Слоновая кость", "Темно-красный", "Темно-синий", "Черный", "Ярко-синий"]
big_image_urls = ["white.png", "biru.png", "yellow.png", "green.png", "red.png", "orange.png", "sand.png", "sereb.png", "slon.png", "tred.png", "tblue.png", "black.png", "yablue.png"]
colors.each_index do |i|
product_color = ProductColor.new
product_color.product_id = product.id
product_color.product_type_id = product_type.id
product_color.name = colors[i]
product_color.rgb = rgbs[colors[i]]
product_color.big_image_url = path_bone+big_image_urls[i]
product_color.save
sizes = ["XS","S","M","L","XL","2XL"]
sizes.each_index do |j|
product_size = ProductSize.new
product_size.product_id = product.id
product_size.product_type_id = product_type.id
product_size.product_color_id = product_color.id
product_size.name = sizes[j]
product_size.number = j+1
product_size.count = 100
product_size.reserv = 0
product_size.save
end
end
path_bone = "wear/rrr/r_f/"
product_type = ProductType.new
product_type.product_id = product.id
product_type.name = "Рубашки поло жен. кор. рук. 220 гр. Хлопок 92% + эластан 8%"
product_type.description = "Материал: пике, хлопок 92% + лайкра 8%. Приталенный силуэт.Усиленные плечевые швы. Декоративная отделка планки пуговицами в тон ткани. Суперстойкое активное крашение цветных и дополнительное отбеливание белых изделий. Плотная вязка полотна, качественный пошив. Для производства используется суперчесанный хлопок высшего качества.<b><br>Плотность: 220 гр/м2<br>Размеры: S-4XL<br>Количество цветов: 12<br></b>"
product_type.big_image_url = path_bone+"black.png"
product_type.small_image_url = "F1_small.png"
product_type.white_price_id = 45
product_type.color_price_id = 46
product_type.white_old_price_id = 47
product_type.color_old_price_id = 48
product_type.all_sizes = "S-4XL"
product_type.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 124488
price.price_2 = 111240
price.price_3 = 107460
price.price_4 = 104280
price.price_5 = 101760
price.price_6 = 100692
price.price_7 = 99312
price.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 129468
price.price_2 = 115692
price.price_3 = 111756
price.price_4 = 108456
price.price_5 = 105828
price.price_6 = 104712
price.price_7 = 103284
price.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 124488
price.price_2 = 111240
price.price_3 = 107460
price.price_4 = 104280
price.price_5 = 101760
price.price_6 = 100692
price.price_7 = 99312
price.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 114528
price.price_2 = 102348
price.price_3 = 98856
price.price_4 = 95940
price.price_5 = 93624
price.price_6 = 92640
price.price_7 = 91368
price.save
colors = ["Белый", "Бирюзовый", "Желтый", "Зеленый", "Красный", "Оранжевый", "Серебристый", "Слоновая кость", "Голубой", "Черный", "Ярко-синий"]
big_image_urls = ["white.png", "biru.png", "yellow.png", "green.png", "red.png", "orange.png", "sereb.png", "slon.png", "golub.png", "black.png", "yablue.png"]
colors.each_index do |i|
product_color = ProductColor.new
product_color.product_id = product.id
product_color.product_type_id = product_type.id
product_color.name = colors[i]
product_color.rgb = rgbs[colors[i]]
product_color.big_image_url = path_bone+big_image_urls[i]
product_color.save
sizes = ["S","M","L","XL","2XL","3XL","4XL"]
sizes.each_index do |j|
product_size = ProductSize.new
product_size.product_id = product.id
product_size.product_type_id = product_type.id
product_size.product_color_id = product_color.id
product_size.name = sizes[j]
product_size.number = j+1
product_size.count = 100
product_size.reserv = 0
product_size.save
end
end
product = Product.new
product.name = "Толстовки"
product.small_image_url = "F1_small.png"
product.description_top = "<h1>Толстовки от «Модерн импорт»</h1><p>Один из самых удобных и модных предметов повседневной одежды – толстовки на молнии и свитшоты ( от англ. sweatshirt — кофта без молнии, с капюшоном на кулиске и карманом в стиле «кенгуру» на животе). Качественная толстовка идеальна для прогулки, занятий спортом и других не слишком официальных случаев. В такой одежде Вы везде будете чувствовать себя «в своей тарелке».</p>"
product.description_bottom = "<p>В нашей компании можно выбрать моделей разных цветов и размеров. Мы строго относимся к выбору тканей. Следим за тем, чтобы наша продукция была не только красивой внешне, но и приятной к телу. Еще один важнейший критерий – на ткань легко нанести любой рисунок.</p><p>У нас в продаже имеются свитшоты, <strong>мужские и женские толстовки</strong>, с капюшонами и без. Прекрасно сидят по фигуре и держат форму даже после многочисленных стирок. Выбирайте модель, её цвет и заказывайте в «Модерн импорт»!</p>"
product.save
path_bone = "wear/ttt/t_m/"
product_type = ProductType.new
product_type.product_id = product.id
product_type.name = "Толстовки муж. с капюшоном 320 гр. Хлопок 100%"
product_type.description = "Материал: футер, хлопок 100%. Элегантная современная модель с карманами и декоративными манжетами снизу и на рукавах. Использование суперчесанного хлопка высшего качества и новейших технологий обработки ткани обеспечивают мягкость и шелковистость изделия. Не оставляют ворса на одежде. Вся фурнитура окрашена в цвет изделия. Суперстойкое активное крашение цветных и дополнительное отбеливание белых изделий.<b><br>Плотность: 260 гр/м2<br>Размеры: S-2XL<br>Количество цветов: 6<br></b>"
product_type.big_image_url = path_bone+"black.png"
product_type.small_image_url = "F1_small.png"
product_type.white_price_id = 49
product_type.color_price_id = 50
product_type.white_old_price_id = 51
product_type.color_old_price_id = 52
product_type.all_sizes = "S-2XL"
product_type.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 229056
price.price_2 = 204684
price.price_3 = 197712
price.price_4 = 191868
price.price_5 = 187236
price.price_6 = 185268
price.price_7 = 182736
price.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 229056
price.price_2 = 204684
price.price_3 = 197712
price.price_4 = 191868
price.price_5 = 187236
price.price_6 = 185268
price.price_7 = 182736
price.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 229056
price.price_2 = 204684
price.price_3 = 197712
price.price_4 = 191868
price.price_5 = 187236
price.price_6 = 185268
price.price_7 = 182736
price.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 229056
price.price_2 = 204684
price.price_3 = 197712
price.price_4 = 191868
price.price_5 = 187236
price.price_6 = 185268
price.price_7 = 182736
price.save
colors = ["Белый", "Ярко-синий", "Темно-синий", "Оранжевый", "Красный", "Черный"]
big_image_urls = ["white.png", "yablue.png", "tblue.png", "orange.png", "red.png", "black.png"]
colors.each_index do |i|
product_color = ProductColor.new
product_color.product_id = product.id
product_color.product_type_id = product_type.id
product_color.name = colors[i]
product_color.rgb = rgbs[colors[i]]
product_color.big_image_url = path_bone+big_image_urls[i]
product_color.save
sizes = ["S","M","L","XL","2XL"]
sizes.each_index do |j|
product_size = ProductSize.new
product_size.product_id = product.id
product_size.product_type_id = product_type.id
product_size.product_color_id = product_color.id
product_size.name = sizes[j]
product_size.number = j+1
product_size.count = 100
product_size.reserv = 0
product_size.save
end
end
path_bone = "wear/ttt/t_f/"
product_type = ProductType.new
product_type.product_id = product.id
product_type.name = "Толстовки жен. с капюшоном 260 гр. Хлопок 100%"
product_type.description = "Материал: футер, хлопок 100%. Элегантная современная модель с карманами и декоративными манжетами снизу и на рукавах. Использование суперчесанного хлопка высшего качества и новейших технологий обработки ткани обеспечивают мягкость и шелковистость изделия. Не оставляют ворса на одежде. Вся фурнитура окрашена в цвет изделия. Суперстойкое активное крашение цветных и дополнительное отбеливание белых изделий. <b><br>Плотность: 260 гр/м2<br>Размеры: XS-XL<br>Количество цветов: 8<br></b>"
product_type.big_image_url = path_bone+"black.png"
product_type.small_image_url = "F1_small.png"
product_type.white_price_id = 53
product_type.color_price_id = 54
product_type.white_old_price_id = 55
product_type.color_old_price_id = 56
product_type.all_sizes = "XS-XL"
product_type.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 0
price.price_2 = 0
price.price_3 = 0
price.price_4 = 0
price.price_5 = 0
price.price_6 = 0
price.price_7 = 0
price.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 0
price.price_2 = 0
price.price_3 = 0
price.price_4 = 0
price.price_5 = 0
price.price_6 = 0
price.price_7 = 0
price.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 0
price.price_2 = 0
price.price_3 = 0
price.price_4 = 0
price.price_5 = 0
price.price_6 = 0
price.price_7 = 0
price.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 0
price.price_2 = 0
price.price_3 = 0
price.price_4 = 0
price.price_5 = 0
price.price_6 = 0
price.price_7 = 0
price.save
colors = ["Белый", "Ярко-синий", "Темно-синий", "Оранжевый", "Красный", "Черный", "Голубой", "Желтый"]
big_image_urls = ["white.png", "yablue.png", "tblue.png", "orange.png", "red.png", "black.png", "golub.png", "yellow.png"]
colors.each_index do |i|
product_color = ProductColor.new
product_color.product_id = product.id
product_color.product_type_id = product_type.id
product_color.name = colors[i]
product_color.rgb = rgbs[colors[i]]
product_color.big_image_url = path_bone+big_image_urls[i]
product_color.save
sizes = ["XS","S","M","L","XL"]
sizes.each_index do |j|
product_size = ProductSize.new
product_size.product_id = product.id
product_size.product_type_id = product_type.id
product_size.product_color_id = product_color.id
product_size.name = sizes[j]
product_size.number = j+1
product_size.count = 100
product_size.reserv = 0
product_size.save
end
end
product = Product.new
product.name = "Бейсболки"
product.small_image_url = "F1_small.png"
product.description_top = "<h1>Яркие бейсболки на любой вкус</h1><p>Один из самых популярных головных уборов во всем мире – это бейсболки. У нас они чаще называют кепками, в связи с удаленностью от родины бейсбола, но суть ее от этого не меняется. Бейсболка остается удобным и практичным головным убором, идеальным для спорта и отдыха. Как не трудно догадаться, на заре своего появления они были формой для игроков одноименной игры. Козырек хорошо защищал от слепящего солнца – короче очень удобно.</p><p>Затем они широко разошлись по всему земному шару. На сегодняшний день такой аксессуар украшает головы людей разных по возрасту, полу и социальному положению. Бейсболки, скорее всего, есть и в вашем гардеробе. А сегодня вы можете заказать цветную кепку со своим логотипом в «Модерн импорт». Но это не всё, так же вы можете заказать отличные футболки!</p>"
product.description_bottom = "<p>В нашей компании Вы всегда сможете <strong>купить бейсболки</strong>, которые могут быть использованы Вами как для прямого назначения, так и в рекламных целях. Купленные оптом, они могут стать элементом корпоративной одежды. Особенно популярны бейсболки, как элемент сотрудников торговых сетей, специалистов в такой сфере, как общепит.</p><p>По Вашему желанию мы сможем нанести любые изображения и надписи. Это может быть логотип Вашей компании, яркая, привлекающая внимание информация или любое другое изображение.</p><p>Приобрести нашу продукцию Вы сможете в любом количестве со склада в Минске. Обратите внимание, что все бейсболки мы сможем отгрузить в день оплаты. Для этого Вам необходимо лишь сделать заказ и провести оплату.</p><p>Ассортимент бейсболок на сегодня:</p><ul><li><strong>Классика</strong> – пятиклинка из 100% хлопка, представленная в нескольких цветовых решениях. Бейсболка имеет металлическую застёжку, а также плотный козырёк со вставкой из пластика, позволяющий поддерживать форму.</li><li><strong>Комфорт</strong> – пятиклинка также выполнена из 100% натурального материала, что делает её ношение максимально комфортным и практичным. Изготовлена из велюровой джинсы, очень приятны на ощупь. Плотность изделия составляет 200 гр на кв.метр. Мы предлагаем Вам 14 цветовых решений бейсболок на выбор.</li><li><strong>Люкс</strong> – изделия данного класса также представляют собой пятиклинку из велюровой джинсы. В отличие от предыдущей модели, эти имеют вставку другого цвета на козырьке и представлено в 18 цветовых решениях.</li><li><strong>Экстра</strong> – бейсболка с шестью клиньями. Отличаются трехслойным комбинированным козырьком высокой плотности. Модели имеют декоративные канты и вставки козырька другого цвета. Модели этого класса также отличаются высокой плотностью. </li></ul><p>Подробнее о каждой модели вы сможете получить информацию у консультантов нашей компании.</p>"
product.save
path_bone = "wear/bbb/b_kl/"
product_type = ProductType.new
product_type.product_id = product.id
product_type.name = "Бейсболки Классика 100 гр."
product_type.description = "Состав: хлопок 100%. Пятиклинка. Яркие цвета. Металлическая застежка. Плотный козырек с пластиковой вставкой.<b><br>Плотность: 100 гр/м2<br>Количество цветов: 20<br></b>"
product_type.big_image_url = path_bone+"black.png"
product_type.small_image_url = "F1_small.png"
product_type.white_price_id = 57
product_type.color_price_id = 58
product_type.white_old_price_id = 59
product_type.color_old_price_id = 60
product_type.all_sizes = "-"
product_type.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 38844
price.price_2 = 34716
price.price_3 = 33528
price.price_4 = 32544
price.price_5 = 31752
price.price_6 = 31416
price.price_7 = 30996
price.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 38844
price.price_2 = 34716
price.price_3 = 33528
price.price_4 = 32544
price.price_5 = 31752
price.price_6 = 31416
price.price_7 = 30996
price.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 38844
price.price_2 = 34716
price.price_3 = 33528
price.price_4 = 32544
price.price_5 = 31752
price.price_6 = 31416
price.price_7 = 30996
price.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 38844
price.price_2 = 34716
price.price_3 = 33528
price.price_4 = 32544
price.price_5 = 31752
price.price_6 = 31416
price.price_7 = 30996
price.save
colors = ["Белый", "Хаки", "Бирюзовый", "Голубой", "Желтый", "Зеленый", "Красный", "Светло-желтый", "Оранжевый", "Песочный", "Салатовый", "Серебристый", "Слоновая кость", "Темно-синий", "Черный", "Ярко-синий", "Темно-красный", "Бордовый", "Небесный", "Темно-зеленый"]
big_image_urls = ["white.jpg", "haki.jpg", "biru.jpg", "golub.jpg", "yellow.jpg", "green.jpg", "red.jpg", "syellow.jpg", "example.png", "sand.jpg", "salat.jpg", "sereb.jpg", "example.png", "tblue.jpg", "black.jpg", "yablue.jpg", "tred.jpg", "bord.jpg", "sky.jpg", "tgreen.jpg"]
colors.each_index do |i|
product_color = ProductColor.new
product_color.product_id = product.id
product_color.product_type_id = product_type.id
product_color.name = colors[i]
product_color.rgb = rgbs[colors[i]]
product_color.big_image_url = path_bone+big_image_urls[i]
product_color.save
sizes = ["-"]
sizes.each_index do |j|
product_size = ProductSize.new
product_size.product_id = product.id
product_size.product_type_id = product_type.id
product_size.product_color_id = product_color.id
product_size.name = sizes[j]
product_size.number = j+1
product_size.count = 100
product_size.reserv = 0
product_size.save
end
end
path_bone = "wear/bbb/b_kom/"
product_type = ProductType.new
product_type.product_id = product.id
product_type.name = "Бейсболки Комфорт 200 гр."
product_type.description = "Состав: хлопок 100%. Пятиклинка. Велюровая джинса. Яркие цвета. Металлическая застежка. Плотный козырек с пластиковой вставкой.<b><br>Плотность: 200 гр/м2<br>Количество цветов: 14<br></b>"
product_type.big_image_url = path_bone+"example.png"
product_type.small_image_url = "F1_small.png"
product_type.white_price_id = 61
product_type.color_price_id = 62
product_type.white_old_price_id = 63
product_type.color_old_price_id = 64
product_type.all_sizes = "-"
product_type.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 44820
price.price_2 = 40056
price.price_3 = 38688
price.price_4 = 37548
price.price_5 = 36636
price.price_6 = 36252
price.price_7 = 35760
price.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 44820
price.price_2 = 40056
price.price_3 = 38688
price.price_4 = 37548
price.price_5 = 36636
price.price_6 = 36252
price.price_7 = 35760
price.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 44820
price.price_2 = 40056
price.price_3 = 38688
price.price_4 = 37548
price.price_5 = 36636
price.price_6 = 36252
price.price_7 = 35760
price.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 44820
price.price_2 = 40056
price.price_3 = 38688
price.price_4 = 37548
price.price_5 = 36636
price.price_6 = 36252
price.price_7 = 35760
price.save
colors = ["Белый", "Серый", "Бирюзовый", "Желтый", "Зеленый", "Красный", "Оранжевый", "Серебристый", "Слоновая кость", "Темно-синий", "Черный", "Ярко-синий", "Бордовый", "Небесный"]
big_image_urls = ["example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png"]
colors.each_index do |i|
product_color = ProductColor.new
product_color.product_id = product.id
product_color.product_type_id = product_type.id
product_color.name = colors[i]
product_color.rgb = rgbs[colors[i]]
product_color.big_image_url = path_bone+big_image_urls[i]
product_color.save
sizes = ["-"]
sizes.each_index do |j|
product_size = ProductSize.new
product_size.product_id = product.id
product_size.product_type_id = product_type.id
product_size.product_color_id = product_color.id
product_size.name = sizes[j]
product_size.number = j+1
product_size.count = 100
product_size.reserv = 0
product_size.save
end
end
path_bone = "wear/bbb/b_lx/"
product_type = ProductType.new
product_type.product_id = product.id
product_type.name = "Бейсболки Люкс 200 гр/м2"
product_type.description = "Состав: хлопок 100%. Пятиклинка. Велюровая джинса. Яркие цвета. Металлическая застежка. Плотный козырек со вставкой другого цвета. <b><br>Плотность: 200 гр/м2<br>Количество цветов: 18<br></b>"
product_type.big_image_url = path_bone+"example.png"
product_type.small_image_url = "F1_small.png"
product_type.white_price_id = 65
product_type.color_price_id = 66
product_type.white_old_price_id = 67
product_type.color_old_price_id = 68
product_type.all_sizes = "-"
product_type.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 52284
price.price_2 = 46728
price.price_3 = 45132
price.price_4 = 43800
price.price_5 = 42744
price.price_6 = 42288
price.price_7 = 41712
price.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 52284
price.price_2 = 46728
price.price_3 = 45132
price.price_4 = 43800
price.price_5 = 42744
price.price_6 = 42288
price.price_7 = 41712
price.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 52284
price.price_2 = 46728
price.price_3 = 45132
price.price_4 = 43800
price.price_5 = 42744
price.price_6 = 42288
price.price_7 = 41712
price.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 52284
price.price_2 = 46728
price.price_3 = 45132
price.price_4 = 43800
price.price_5 = 42744
price.price_6 = 42288
price.price_7 = 41712
price.save
colors = ["Белый", "Голубой", "Желтый", "Зеленый", "Красный", "Оранжевый", "Песочный", "Салатовый", "Серебристый", "Слоновая кость", "Серый", "Темно-синий", "Черный", "Ярко-синий", "Темно-красный", "Бордовый"]
big_image_urls = ["example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png"]
colors.each_index do |i|
product_color = ProductColor.new
product_color.product_id = product.id
product_color.product_type_id = product_type.id
product_color.name = colors[i]
product_color.rgb = rgbs[colors[i]]
product_color.big_image_url = path_bone+big_image_urls[i]
product_color.save
sizes = ["-"]
sizes.each_index do |j|
product_size = ProductSize.new
product_size.product_id = product.id
product_size.product_type_id = product_type.id
product_size.product_color_id = product_color.id
product_size.name = sizes[j]
product_size.number = j+1
product_size.count = 100
product_size.reserv = 0
product_size.save
end
end
path_bone = "wear/bbb/b_lx_ex/"
product_type = ProductType.new
product_type.product_id = product.id
product_type.name = "Бейсболки Люкс-Экстра 200гр/м2"
product_type.description = "Состав: хлопок 100%. Шестиклинка. Велюровая джинса. Яркие цвета. Металлическая застежка. Трехслойный комбинированный плотный козырек. Декоративные канты и вставка козырька другого цвета.<b><br>Плотность: 200 гр/м2<br>Количество цветов: 10<br></b>"
product_type.big_image_url = path_bone+"example.png"
product_type.small_image_url = "F1_small.png"
product_type.white_price_id = 69
product_type.color_price_id = 70
product_type.white_old_price_id = 71
product_type.color_old_price_id = 72
product_type.all_sizes = "-"
product_type.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 53784
price.price_2 = 48060
price.price_3 = 46428
price.price_4 = 45048
price.price_5 = 43968
price.price_6 = 43500
price.price_7 = 42912
price.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 53784
price.price_2 = 48060
price.price_3 = 46428
price.price_4 = 45048
price.price_5 = 43968
price.price_6 = 43500
price.price_7 = 42912
price.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 53784
price.price_2 = 48060
price.price_3 = 46428
price.price_4 = 45048
price.price_5 = 43968
price.price_6 = 43500
price.price_7 = 42912
price.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 53784
price.price_2 = 48060
price.price_3 = 46428
price.price_4 = 45048
price.price_5 = 43968
price.price_6 = 43500
price.price_7 = 42912
price.save
colors = ["Белый", "Желтый", "Красный", "Оранжевый", "Серебристый", "Слоновая кость", "Темно-синий", "Черный", "Ярко-синий"]
big_image_urls = ["example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png", "example.png"]
colors.each_index do |i|
product_color = ProductColor.new
product_color.product_id = product.id
product_color.product_type_id = product_type.id
product_color.name = colors[i]
product_color.rgb = rgbs[colors[i]]
product_color.big_image_url = path_bone+big_image_urls[i]
product_color.save
sizes = ["-"]
sizes.each_index do |j|
product_size = ProductSize.new
product_size.product_id = product.id
product_size.product_type_id = product_type.id
product_size.product_color_id = product_color.id
product_size.name = sizes[j]
product_size.number = j+1
product_size.count = 100
product_size.reserv = 0
product_size.save
end
end

#-------------------------- add user, admin and two groups

user_group = UserGroup.new
user_group.name = "admin_group"
user_group.admin_flag = true
user_group.view_reserv_flag = true
user_group.view_sklad_flag = true
user_group.save

user_group = UserGroup.new
user_group.name = "user_group"
user_group.admin_flag = false
user_group.view_reserv_flag = true
user_group.view_sklad_flag = true
user_group.save

temp_user = User.new
temp_user.name = "admin"
temp_user.company_name = "admin_company"
temp_user.email = "admin@admin.com"
temp_user.juridical_address = "admin's_street"
temp_user.type_of_ownership = "ooo"
temp_user.password = "adminadmin"
temp_user.password_confirmation = "adminadmin"
temp_user.reg_confirm_admin = true
temp_user.user_group_id = 1
temp_user.last_in = DateTime.now
temp_user.save

temp_user = User.new
temp_user.name = "user"
temp_user.company_name = "user_company"
temp_user.email = "user@user.com"
temp_user.juridical_address = "user's_street"
temp_user.type_of_ownership = "ooo"
temp_user.password = "useruser"
temp_user.password_confirmation = "useruser"
temp_user.reg_confirm_admin = true
temp_user.last_in = DateTime.now
temp_user.save
