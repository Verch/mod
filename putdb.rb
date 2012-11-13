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

product = Product.new
product.name = "Футболки"
product.small_image_url = "F1_small.png"
product.description_top = "<h1>Продажа футболок от компании «Модерн импорт»</h1><p>Существенным преимуществом компании «Модерн импорт» является возможность <strong>купить футболки в Минске оптом</strong>. Вы можете сделать заказ как на одну футболку, так и на целую фуру трикотажных изделий. Мы предлагаем детские, мужские и женские футболки.</p><p>Мы знаем, что при всем разнообразии рынка трикотажа, купить футболку высокого качества не так-то просто. Для трикотажной продукции практичность и удобство изделий – обязательные условия, кроме того, немаловажным фактором является наличие большого выбора цветов, фасонов и размеров – и здесь наши футболки для мужчин и женщин вне конкуренции. Наши покупатели остаются довольны!</p>"
product.description_bottom = "<h2>Женские футболки (6 размеров, 18 цветов, хлопок и стрейч)</h2><p>Это изделия, отличающиеся удобством и практичностью. Женские футболки созданны специально для активных представительниц прекрасного пола, которые ценят стиль и комфорт. Купить футболки для женщин и девушек вы можете у нас - они всегда на складе.</p><h2>Мужские футболки (хлопок и стрейч, 8 размеров и 28 цветов)</h2><p>Данные модели не менее удобны. Широкий диапазон размеров позволяет подобрать изделие как для весьма крупных, так и для худых мужчин. Мужская половина человечества сможет носить их во время занятий спортом (посещения тренажерных залов, утренних пробежек и т.д.), в качестве повседневной одежды, надевать их под тёплые <a href='/tolstovki'>толстовки</a> в холодное время года и т.д.</p><h2>Детские футболки (6 размеров для детей от 2-х лет, 13 цветов, хлопок)</h2><p>Данные модели созданы с учётом того, что именно дети ценят комфорт больше всего. Им важно, чтобы изделия было в первую очередь удобным. Ребёнок может носить футболку на прогулки, дома и в любых ситуациях. Купив несколько ярких моделей, Вы создаёте полноценный гардероб ребёнка для любого времени года. Летом он сможет носить футболку с брюками, любыми штанами, <a href='/beysbolki'>бейсболками</a> а также юбками и другой одеждой. Зимой носить вместе с тёплой одеждой. Особенно актуальной данная одежда окажется, если Вы идёте в гости со своими детьми. Тепло одев их, Вы получаете возможность снять верхнюю одежду, и детям не будет жарко.</p><p>Купить футболки очень просто. Мы всегда предлагаем только качественные модели по наиболее привлекательной стоимости. Вами всегда могут быть выбраны и куплены футболки в любых цветах – популярностью в Минске сегодня пользуется мужские, женские, детские футболки белого цвета. И пусть они не отличаются практичностью, но зато очень привлекательны и смогут составить эффектный комплект с джинсами, юбками и брюками любых фасонов. Вами всегда может быть выбрана детская, мужская, женская футболка любого фасона и размера.</p><h3>Почему следует покупать футболки у нас?</h3><p><em>Мы предлагаем футболки по разумным ценам</em>. Заказ футболок MODERN для широкомасштабных рекламных акций дает мощный результат за счет долгой носки футболок и многократного показа логотипов. На потребительском рынке качество изделий MODERN является эталоном, но наши «рекламные» цены существенно ниже цен других поставщиков. Именно поэтому большое количество компаний Республики Беларусь заказывают и покупают <strong>женские и мужские футболки оптом</strong> именно у нас. Все модели на складе в Минске. Цену уточняйте у менеджеров.</p>"
product.save
product_type = ProductType.new
product_type.product_id = product.id
product_type.name = "Футболки кор. рук. Круглый ворот 155 гр. Хлопок 100%"
product_type.description = "Состав: хлопок 100%. Яркие цвета. Изделия не деформируются после многочисленных стирок. Воротник с добавлением лайкры. Мягкий компенсатор горловины. Усиленные плечевые швы. Везде двойная строчка. Суперстойкое активное крашение цветных и дополнительное отбеливание белых изделий. Для производства футболок используется суперчесанный хлопок высшего качества. Плотная вязка - идеально подходят для нанесения сложных цветных изображений. <b><br>Плотность: 155 гр/м2<br>Размеры: S-5XL<br>Количество цветов: 24<br></b>"
product_type.big_image_url = "wear/f_m_kor_krug/okean_zeleniy.jpg"
product_type.small_image_url = "F1_small.png"
product_type.white_price_id = 1
product_type.color_price_id = 2
product_type.white_old_price_id = 3
product_type.color_old_price_id = 4
product_type.all_sizes = "S-5XL"
product_type.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 34200
price.price_2 = 34100
price.price_3 = 34000
price.price_4 = 33800
price.price_5 = 33200
price.price_6 = 32600
price.price_7 = 32500
price.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 35200
price.price_2 = 35100
price.price_3 = 35000
price.price_4 = 34800
price.price_5 = 34200
price.price_6 = 33600
price.price_7 = 33500
price.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 34300
price.price_2 = 34200
price.price_3 = 34100
price.price_4 = 33800
price.price_5 = 33300
price.price_6 = 32700
price.price_7 = 32600
price.save
price = Price.new
price.product_type_id = product_type.id
price.price_1 = 36400
price.price_2 = 36200
price.price_3 = 36100
price.price_4 = 36000
price.price_5 = 35400
price.price_6 = 34800
price.price_7 = 34700
price.save
product_color = ProductColor.new
product_color.product_id = product.id
product_color.product_type_id = product_type.id
product_color.name = "Белый"
product_color.rgb = "#eeeeee"
product_color.big_image_url = "wear/f_m_kor_krug/okean_zeleniy.jpg"
product_color.save
product_size = ProductSize.new
product_size.product_id = product.id
product_size.product_type_id = product_type.id
product_size.product_color_id = product_color.id
product_size.name = "S"
product_size.number = 1
product_size.count = 120
product_size.reserv = 0
product_size.save
product_size = ProductSize.new
product_size.product_id = product.id
product_size.product_type_id = product_type.id
product_size.product_color_id = product_color.id
product_size.name = "M"
product_size.number = 1
product_size.count = 120
product_size.reserv = 0
product_size.save
product_size = ProductSize.new
product_size.product_id = product.id
product_size.product_type_id = product_type.id
product_size.product_color_id = product_color.id
product_size.name = "L"
product_size.number = 1
product_size.count = 120
product_size.reserv = 0
product_size.save
product_size = ProductSize.new
product_size.product_id = product.id
product_size.product_type_id = product_type.id
product_size.product_color_id = product_color.id
product_size.name = "XL"
product_size.number = 1
product_size.count = 120
product_size.reserv = 0
product_size.save
product_size = ProductSize.new
product_size.product_id = product.id
product_size.product_type_id = product_type.id
product_size.product_color_id = product_color.id
product_size.name = "2XL"
product_size.number = 1
product_size.count = 120
product_size.reserv = 0
product_size.save
product_size = ProductSize.new
product_size.product_id = product.id
product_size.product_type_id = product_type.id
product_size.product_color_id = product_color.id
product_size.name = "3XL"
product_size.number = 1
product_size.count = 120
product_size.reserv = 0
product_size.save
product_size = ProductSize.new
product_size.product_id = product.id
product_size.product_type_id = product_type.id
product_size.product_color_id = product_color.id
product_size.name = "4XL"
product_size.number = 1
product_size.count = 120
product_size.reserv = 0
product_size.save
product_size = ProductSize.new
product_size.product_id = product.id
product_size.product_type_id = product_type.id
product_size.product_color_id = product_color.id
product_size.name = "5XL"
product_size.number = 1
product_size.count = 120
product_size.reserv = 0
product_size.save
product_type = ProductType.new
product_type.product_id = product.id
product_type.name = "Футболки жен. кор. рук. Круглый ворот 155 гр. Хлопок 100%"
product_type.description = "<b><br>Плотность: 155 гр/м2<br>Размеры: S-2XL<br>Количество цветов: 9<br></b>"
product_type.big_image_url = "wear/f_f_kor_krug/red_blue.png"
product_type.small_image_url = "F1_small.png"
product_type.white_price_id = 0
product_type.color_price_id = 0
product_type.white_old_price_id = 0
product_type.color_old_price_id = 0
product_type.all_sizes = "S-2XL"
product_type.save
product_color = ProductColor.new
product_color.product_id = product.id
product_color.product_type_id = product_type.id
product_color.name = "Белый"
product_color.rgb = "#eeeeee"
product_color.big_image_url = "wear/f_f_kor_krug/red_blue.jpg"
product_color.save
product_size = ProductSize.new
product_size.product_id = product.id
product_size.product_type_id = product_type.id
product_size.product_color_id = product_color.id
product_size.name = "S"
product_size.number = 1
product_size.count = 120
product_size.reserv = 0
product_size.save
product_size = ProductSize.new
product_size.product_id = product.id
product_size.product_type_id = product_type.id
product_size.product_color_id = product_color.id
product_size.name = "M"
product_size.number = 1
product_size.count = 120
product_size.reserv = 0
product_size.save
product_size = ProductSize.new
product_size.product_id = product.id
product_size.product_type_id = product_type.id
product_size.product_color_id = product_color.id
product_size.name = "L"
product_size.number = 1
product_size.count = 120
product_size.reserv = 0
product_size.save
product_size = ProductSize.new
product_size.product_id = product.id
product_size.product_type_id = product_type.id
product_size.product_color_id = product_color.id
product_size.name = "XL"
product_size.number = 1
product_size.count = 120
product_size.reserv = 0
product_size.save
product_size = ProductSize.new
product_size.product_id = product.id
product_size.product_type_id = product_type.id
product_size.product_color_id = product_color.id
product_size.name = "2XL"
product_size.number = 1
product_size.count = 120
product_size.reserv = 0
product_size.save
product_type = ProductType.new
product_type.product_id = product.id
product_type.name = "Футболки длин. рук. Круглый ворот 155 гр. Хлопок 100% !!!!"
product_type.description = "Состав: хлопок 100%. Яркие цвета. Изделия не деформируются после многочисленных стирок. Воротник с добавлением лайкры. Мягкий компенсатор горловины. Усиленные плечевые швы. Везде двойная строчка. Суперстойкое активное крашение цветных и дополнительное отбеливание белых изделий. Для производства футболок используется суперчесанный хлопок высшего качества. Плотная вязка - идеально подходят для нанесения сложных цветных изображений. <b><br>Плотность: 155 гр/м2 !!!!!!!!!!!!<br>Размеры: S-5XL<br>Количество цветов: 24<br></b>"
product_type.big_image_url = "wear/f_m_dl_krug/black_red.jpg"
product_type.small_image_url = "F1_small.png"
product_type.white_price_id = 0
product_type.color_price_id = 0
product_type.white_old_price_id = 0
product_type.color_old_price_id = 0
product_type.all_sizes = "S-5XL"
product_type.save
product_color = ProductColor.new
product_color.product_id = product.id
product_color.product_type_id = product_type.id
product_color.name = "Белый"
product_color.rgb = "#eeeeee"
product_color.big_image_url = "wear/f_m_dl_krug/black_red.jpg"
product_color.save
product_size = ProductSize.new
product_size.product_id = product.id
product_size.product_type_id = product_type.id
product_size.product_color_id = product_color.id
product_size.name = "S"
product_size.number = 1
product_size.count = 120
product_size.reserv = 0
product_size.save
product_size = ProductSize.new
product_size.product_id = product.id
product_size.product_type_id = product_type.id
product_size.product_color_id = product_color.id
product_size.name = "M"
product_size.number = 1
product_size.count = 120
product_size.reserv = 0
product_size.save
product_size = ProductSize.new
product_size.product_id = product.id
product_size.product_type_id = product_type.id
product_size.product_color_id = product_color.id
product_size.name = "L"
product_size.number = 1
product_size.count = 120
product_size.reserv = 0
product_size.save
product_size = ProductSize.new
product_size.product_id = product.id
product_size.product_type_id = product_type.id
product_size.product_color_id = product_color.id
product_size.name = "XL"
product_size.number = 1
product_size.count = 120
product_size.reserv = 0
product_size.save
product_size = ProductSize.new
product_size.product_id = product.id
product_size.product_type_id = product_type.id
product_size.product_color_id = product_color.id
product_size.name = "2XL"
product_size.number = 1
product_size.count = 120
product_size.reserv = 0
product_size.save
product_size = ProductSize.new
product_size.product_id = product.id
product_size.product_type_id = product_type.id
product_size.product_color_id = product_color.id
product_size.name = "3XL"
product_size.number = 1
product_size.count = 120
product_size.reserv = 0
product_size.save
product_size = ProductSize.new
product_size.product_id = product.id
product_size.product_type_id = product_type.id
product_size.product_color_id = product_color.id
product_size.name = "4XL"
product_size.number = 1
product_size.count = 120
product_size.reserv = 0
product_size.save
product_size = ProductSize.new
product_size.product_id = product.id
product_size.product_type_id = product_type.id
product_size.product_color_id = product_color.id
product_size.name = "5XL"
product_size.number = 1
product_size.count = 120
product_size.reserv = 0
product_size.save
product_type = ProductType.new
product_type.product_id = product.id
product_type.name = "Стрейчевые футболки кор. рук. Круглый ворот 155 гр. Хлопок 100%"
product_type.description = "!!!Состав: хлопок 100%. Яркие цвета. Изделия не деформируются после многочисленных стирок. Воротник с добавлением лайкры. Мягкий компенсатор горловины. Усиленные плечевые швы. Везде двойная строчка. Суперстойкое активное крашение цветных и дополнительное отбеливание белых изделий. Для производства футболок используется суперчесанный хлопок высшего качества. Плотная вязка - идеально подходят для нанесения сложных цветных изображений. <b><br>Плотность: 155 гр/м2<br>Размеры: S-5XL<br>Количество цветов: 24<br></b>"
product_type.big_image_url = "wear/f_m_kor_krug_s/fiol_black.jpg"
product_type.small_image_url = "F1_small.png"
product_type.white_price_id = 0
product_type.color_price_id = 0
product_type.white_old_price_id = 0
product_type.color_old_price_id = 0
product_type.all_sizes = "S-5XL"
product_type.save
product_color = ProductColor.new
product_color.product_id = product.id
product_color.product_type_id = product_type.id
product_color.name = "Белый"
product_color.rgb = "#eeeeee"
product_color.big_image_url = "wear/f_m_kor_krug_s/fiol_black.jpg"
product_color.save
product_size = ProductSize.new
product_size.product_id = product.id
product_size.product_type_id = product_type.id
product_size.product_color_id = product_color.id
product_size.name = "S"
product_size.number = 1
product_size.count = 120
product_size.reserv = 0
product_size.save
product_size = ProductSize.new
product_size.product_id = product.id
product_size.product_type_id = product_type.id
product_size.product_color_id = product_color.id
product_size.name = "M"
product_size.number = 1
product_size.count = 120
product_size.reserv = 0
product_size.save
product_size = ProductSize.new
product_size.product_id = product.id
product_size.product_type_id = product_type.id
product_size.product_color_id = product_color.id
product_size.name = "L"
product_size.number = 1
product_size.count = 120
product_size.reserv = 0
product_size.save
product_size = ProductSize.new
product_size.product_id = product.id
product_size.product_type_id = product_type.id
product_size.product_color_id = product_color.id
product_size.name = "XL"
product_size.number = 1
product_size.count = 120
product_size.reserv = 0
product_size.save
product_size = ProductSize.new
product_size.product_id = product.id
product_size.product_type_id = product_type.id
product_size.product_color_id = product_color.id
product_size.name = "2XL"
product_size.number = 1
product_size.count = 120
product_size.reserv = 0
product_size.save
product_size = ProductSize.new
product_size.product_id = product.id
product_size.product_type_id = product_type.id
product_size.product_color_id = product_color.id
product_size.name = "3XL"
product_size.number = 1
product_size.count = 120
product_size.reserv = 0
product_size.save
product_size = ProductSize.new
product_size.product_id = product.id
product_size.product_type_id = product_type.id
product_size.product_color_id = product_color.id
product_size.name = "4XL"
product_size.number = 1
product_size.count = 120
product_size.reserv = 0
product_size.save
product_size = ProductSize.new
product_size.product_id = product.id
product_size.product_type_id = product_type.id
product_size.product_color_id = product_color.id
product_size.name = "5XL"
product_size.number = 1
product_size.count = 120
product_size.reserv = 0
product_size.save
product_type = ProductType.new
product_type.product_id = product.id
product_type.name = "Стрейчевые футболки женские кор. рук. Круглый ворот 155 гр. Хлопок 100%"
product_type.description = "!!!Состав: хлопок 100%. Яркие цвета. Изделия не деформируются после многочисленных стирок. Воротник с добавлением лайкры. Мягкий компенсатор горловины. Усиленные плечевые швы. Везде двойная строчка. Суперстойкое активное крашение цветных и дополнительное отбеливание белых изделий. Для производства футболок используется суперчесанный хлопок высшего качества. Плотная вязка - идеально подходят для нанесения сложных цветных изображений. <b><br>Плотность: 155 гр/м2<br>Размеры: S-5XL<br>Количество цветов: 24<br></b>"
product_type.big_image_url = "wear/f_f_kor_krug_s/black_red.jpg"
product_type.small_image_url = "F1_small.png"
product_type.white_price_id = 0
product_type.color_price_id = 0
product_type.white_old_price_id = 0
product_type.color_old_price_id = 0
product_type.all_sizes = "S-5XL"
product_type.save
product_color = ProductColor.new
product_color.product_id = product.id
product_color.product_type_id = product_type.id
product_color.name = "Белый"
product_color.rgb = "#eeeeee"
product_color.big_image_url = "wear/f_f_kor_krug_s/black_red.jpg"
product_color.save
product_size = ProductSize.new
product_size.product_id = product.id
product_size.product_type_id = product_type.id
product_size.product_color_id = product_color.id
product_size.name = "S"
product_size.number = 1
product_size.count = 120
product_size.reserv = 0
product_size.save
product_size = ProductSize.new
product_size.product_id = product.id
product_size.product_type_id = product_type.id
product_size.product_color_id = product_color.id
product_size.name = "M"
product_size.number = 1
product_size.count = 120
product_size.reserv = 0
product_size.save
product_size = ProductSize.new
product_size.product_id = product.id
product_size.product_type_id = product_type.id
product_size.product_color_id = product_color.id
product_size.name = "L"
product_size.number = 1
product_size.count = 120
product_size.reserv = 0
product_size.save
product_size = ProductSize.new
product_size.product_id = product.id
product_size.product_type_id = product_type.id
product_size.product_color_id = product_color.id
product_size.name = "XL"
product_size.number = 1
product_size.count = 120
product_size.reserv = 0
product_size.save
product_size = ProductSize.new
product_size.product_id = product.id
product_size.product_type_id = product_type.id
product_size.product_color_id = product_color.id
product_size.name = "2XL"
product_size.number = 1
product_size.count = 120
product_size.reserv = 0
product_size.save
product_size = ProductSize.new
product_size.product_id = product.id
product_size.product_type_id = product_type.id
product_size.product_color_id = product_color.id
product_size.name = "3XL"
product_size.number = 1
product_size.count = 120
product_size.reserv = 0
product_size.save
product_size = ProductSize.new
product_size.product_id = product.id
product_size.product_type_id = product_type.id
product_size.product_color_id = product_color.id
product_size.name = "4XL"
product_size.number = 1
product_size.count = 120
product_size.reserv = 0
product_size.save
product_size = ProductSize.new
product_size.product_id = product.id
product_size.product_type_id = product_type.id
product_size.product_color_id = product_color.id
product_size.name = "5XL"
product_size.number = 1
product_size.count = 120
product_size.reserv = 0
product_size.save
product = Product.new
product.name = "Рубашки поло"
product.save
product = Product.new
product.name = "Бейсболки"
product.save
product = Product.new
product.name = "Толстовки"
product.save

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
temp_user.email = "admin@admin"
temp_user.password = "admin"
temp_user.password_confirmation = "admin"
temp_user.reg_confirm_admin = true
temp_user.user_group_id = 1
temp_user.last_in = DateTime.now
temp_user.save

temp_user = User.new
temp_user.name = "user"
temp_user.company_name = "user_company"
temp_user.email = "user@user"
temp_user.password = "user"
temp_user.password_confirmation = "user"
temp_user.reg_confirm_admin = true
temp_user.last_in = DateTime.now
temp_user.save
