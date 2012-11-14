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
colors = ["Белый", "Бежевый", "Бирюзовый", "Бордовый", "Голубой", "Желтый", "Зеленый", "Красный", "Лимонный", "Небесный", "Оливковый", "Оранжевый", "Песочный", "Салатовый", "Светло-голубой", "Светло-желтый", "Серебристый", "Слоновая кость", "Темно-зеленый", "Темно-синий", "Фиолетовый", "Черный", "Шоколад", "Ярко-синий"]
rgbs = ["#ffffff", "#ccffff", "#ccffff", "#ccffff", "#ccffff", "#ccffff", "#ccffff", "#ccffff", "#ccffff", "#ccffff", "#ccffff", "#ccffff", "#ccffff", "#ccffff", "#ccffff", "#ccffff", "#ccffff", "#ccffff", "#ccffff", "#ccffff", "#ccffff", "#ccffff", "#ccffff", "#ccffff"]
big_image_urls = ["wear/f_m_kor_krug/okean_zeleniy.jpg", "wear/f_m_kor_krug/okean_zeleniy.jpg", "wear/f_m_kor_krug/okean_zeleniy.jpg", "wear/f_m_kor_krug/okean_zeleniy.jpg", "wear/f_m_kor_krug/okean_zeleniy.jpg", "wear/f_m_kor_krug/okean_zeleniy.jpg", "wear/f_m_kor_krug/okean_zeleniy.jpg", "wear/f_m_kor_krug/okean_zeleniy.jpg", "wear/f_m_kor_krug/okean_zeleniy.jpg", "wear/f_m_kor_krug/okean_zeleniy.jpg", "wear/f_m_kor_krug/okean_zeleniy.jpg", "wear/f_m_kor_krug/okean_zeleniy.jpg", "wear/f_m_kor_krug/okean_zeleniy.jpg", "wear/f_m_kor_krug/okean_zeleniy.jpg", "wear/f_m_kor_krug/okean_zeleniy.jpg", "wear/f_m_kor_krug/okean_zeleniy.jpg", "wear/f_m_kor_krug/okean_zeleniy.jpg", "wear/f_m_kor_krug/okean_zeleniy.jpg", "wear/f_m_kor_krug/okean_zeleniy.jpg", "wear/f_m_kor_krug/okean_zeleniy.jpg", "wear/f_m_kor_krug/okean_zeleniy.jpg", "wear/f_m_kor_krug/okean_zeleniy.jpg", "wear/f_m_kor_krug/okean_zeleniy.jpg", "wear/f_m_kor_krug/okean_zeleniy.jpg"]
colors.each_index do |i|
product_color = ProductColor.new
product_color.product_id = product.id
product_color.product_type_id = product_type.id
product_color.name = colors[i]
product_color.rgb = rgbs[i]
product_color.big_image_url = big_image_urls[i]
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
product_type = ProductType.new
product_type.product_id = product.id
product_type.name = "Футболки жен. кор. рук. Круглый ворот 155 гр. Хлопок 100%"
product_type.description = "Плотность: 155 гр/м2<br>Размеры: S-2XL<br>Количество цветов: 9<br></b>"
product_type.big_image_url = "wear/f_m_kor_krug/okean_zeleniy.jpg"
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
rgbs = ["#ffffff", "#ccffff", "#ccffff", "#ccffff", "#ccffff", "#ccffff", "#ccffff", "#ccffff", "#ccffff"]
big_image_urls = ["wear/f_m_kor_krug/okean_zeleniy.jpg", "wear/f_m_kor_krug/okean_zeleniy.jpg", "wear/f_m_kor_krug/okean_zeleniy.jpg", "wear/f_m_kor_krug/okean_zeleniy.jpg", "wear/f_m_kor_krug/okean_zeleniy.jpg", "wear/f_m_kor_krug/okean_zeleniy.jpg", "wear/f_m_kor_krug/okean_zeleniy.jpg", "wear/f_m_kor_krug/okean_zeleniy.jpg", "wear/f_m_kor_krug/okean_zeleniy.jpg"]
colors.each_index do |i|
product_color = ProductColor.new
product_color.product_id = product.id
product_color.product_type_id = product_type.id
product_color.name = colors[i]
product_color.rgb = rgbs[i]
product_color.big_image_url = big_image_urls[i]
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
product = Product.new
product.name = "Рубашки поло"
product.small_image_url = "F1_small.png"
product.description_top = "<h1>Продажа рубашек поло от компании «Модерн импорт»</h1>"
product.description_bottom = ""
product.save
product_type = ProductType.new
product_type.product_id = product.id
product_type.name = "Рубашки поло муж. кор. рук. 190 гр. Хлопок 100%"
product_type.description = "desc"
product_type.big_image_url = "wear/f_m_kor_krug/okean_zeleniy.jpg"
product_type.small_image_url = "F1_small.png"
product_type.white_price_id = 1
product_type.color_price_id = 1
product_type.white_old_price_id = 1
product_type.color_old_price_id = 1
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
rgbs = ["#ffffff", "#ccffff", "#ccffff", "#ccffff", "#ccffff", "#ccffff", "#ccffff", "#ccffff", "#ccffff", "#ccffff", "#ccffff", "#ccffff", "#ccffff"]
big_image_urls = ["wear/f_m_kor_krug/okean_zeleniy.jpg", "wear/f_m_kor_krug/okean_zeleniy.jpg", "wear/f_m_kor_krug/okean_zeleniy.jpg", "wear/f_m_kor_krug/okean_zeleniy.jpg", "wear/f_m_kor_krug/okean_zeleniy.jpg", "wear/f_m_kor_krug/okean_zeleniy.jpg", "wear/f_m_kor_krug/okean_zeleniy.jpg", "wear/f_m_kor_krug/okean_zeleniy.jpg", "wear/f_m_kor_krug/okean_zeleniy.jpg", "wear/f_m_kor_krug/okean_zeleniy.jpg", "wear/f_m_kor_krug/okean_zeleniy.jpg", "wear/f_m_kor_krug/okean_zeleniy.jpg", "wear/f_m_kor_krug/okean_zeleniy.jpg"]
colors.each_index do |i|
product_color = ProductColor.new
product_color.product_id = product.id
product_color.product_type_id = product_type.id
product_color.name = colors[i]
product_color.rgb = rgbs[i]
product_color.big_image_url = big_image_urls[i]
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
product_type = ProductType.new
product_type.product_id = product.id
product_type.name = "Рубашки поло жен. кор. рук. 220 гр. Хлопок 92% + эластан 8%"
product_type.description = "desc"
product_type.big_image_url = "wear/f_m_kor_krug/okean_zeleniy.jpg"
product_type.small_image_url = "F1_small.png"
product_type.white_price_id = 1
product_type.color_price_id = 1
product_type.white_old_price_id = 1
product_type.color_old_price_id = 1
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
colors = ["Белый", "Бирюзовый", "Желтый", "Зеленый", "Красный", "Оранжевый", "Серебристый", "Слоновая кость", "Темно-красный", "Черный", "Ярко-синий"]
rgbs = ["#ffffff", "#ccffff", "#ccffff", "#ccffff", "#ccffff", "#ccffff", "#ccffff", "#ccffff", "#ccffff", "#ccffff", "#ccffff"]
big_image_urls = ["wear/f_m_kor_krug/okean_zeleniy.jpg", "wear/f_m_kor_krug/okean_zeleniy.jpg", "wear/f_m_kor_krug/okean_zeleniy.jpg", "wear/f_m_kor_krug/okean_zeleniy.jpg", "wear/f_m_kor_krug/okean_zeleniy.jpg", "wear/f_m_kor_krug/okean_zeleniy.jpg", "wear/f_m_kor_krug/okean_zeleniy.jpg", "wear/f_m_kor_krug/okean_zeleniy.jpg", "wear/f_m_kor_krug/okean_zeleniy.jpg", "wear/f_m_kor_krug/okean_zeleniy.jpg", "wear/f_m_kor_krug/okean_zeleniy.jpg"]
colors.each_index do |i|
product_color = ProductColor.new
product_color.product_id = product.id
product_color.product_type_id = product_type.id
product_color.name = colors[i]
product_color.rgb = rgbs[i]
product_color.big_image_url = big_image_urls[i]
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
product.name = "Бейсболки"
product.small_image_url = "F1_small.png"
product.description_top = "<h1>Продажа бейсболок от компании «Модерн импорт»</h1>"
product.description_bottom = ""
product.save
product_type = ProductType.new
product_type.product_id = product.id
product_type.name = "Бейсболки Классика 100 гр."
product_type.description = "desc"
product_type.big_image_url = "wear/f_m_kor_krug/okean_zeleniy.jpg"
product_type.small_image_url = "F1_small.png"
product_type.white_price_id = 1
product_type.color_price_id = 1
product_type.white_old_price_id = 1
product_type.color_old_price_id = 1
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
colors = ["Белый", "Цвет"]
rgbs = ["#ffffff", "#ccffff"]
big_image_urls = ["wear/f_m_kor_krug/okean_zeleniy.jpg", "wear/f_m_kor_krug/okean_zeleniy.jpg"]
colors.each_index do |i|
product_color = ProductColor.new
product_color.product_id = product.id
product_color.product_type_id = product_type.id
product_color.name = colors[i]
product_color.rgb = rgbs[i]
product_color.big_image_url = big_image_urls[i]
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
product_type = ProductType.new
product_type.product_id = product.id
product_type.name = "Бейсболки Комфорт 200 гр."
product_type.description = "desc"
product_type.big_image_url = "wear/f_m_kor_krug/okean_zeleniy.jpg"
product_type.small_image_url = "F1_small.png"
product_type.white_price_id = 1
product_type.color_price_id = 1
product_type.white_old_price_id = 1
product_type.color_old_price_id = 1
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
colors = ["Белый", "Цвет"]
rgbs = ["#ffffff", "#ccffff"]
big_image_urls = ["wear/f_m_kor_krug/okean_zeleniy.jpg", "wear/f_m_kor_krug/okean_zeleniy.jpg"]
colors.each_index do |i|
product_color = ProductColor.new
product_color.product_id = product.id
product_color.product_type_id = product_type.id
product_color.name = colors[i]
product_color.rgb = rgbs[i]
product_color.big_image_url = big_image_urls[i]
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
product_type = ProductType.new
product_type.product_id = product.id
product_type.name = "Бейсболки 3"
product_type.description = "desc"
product_type.big_image_url = "wear/f_m_kor_krug/okean_zeleniy.jpg"
product_type.small_image_url = "F1_small.png"
product_type.white_price_id = 1
product_type.color_price_id = 1
product_type.white_old_price_id = 1
product_type.color_old_price_id = 1
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
colors = ["Белый", "Цвет"]
rgbs = ["#ffffff", "#ccffff"]
big_image_urls = ["wear/f_m_kor_krug/okean_zeleniy.jpg", "wear/f_m_kor_krug/okean_zeleniy.jpg"]
colors.each_index do |i|
product_color = ProductColor.new
product_color.product_id = product.id
product_color.product_type_id = product_type.id
product_color.name = colors[i]
product_color.rgb = rgbs[i]
product_color.big_image_url = big_image_urls[i]
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
product_type = ProductType.new
product_type.product_id = product.id
product_type.name = "Бейсболки 4"
product_type.description = "desc"
product_type.big_image_url = "wear/f_m_kor_krug/okean_zeleniy.jpg"
product_type.small_image_url = "F1_small.png"
product_type.white_price_id = 1
product_type.color_price_id = 1
product_type.white_old_price_id = 1
product_type.color_old_price_id = 1
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
colors = ["Белый", "Цвет"]
rgbs = ["#ffffff", "#ccffff"]
big_image_urls = ["wear/f_m_kor_krug/okean_zeleniy.jpg", "wear/f_m_kor_krug/okean_zeleniy.jpg"]
colors.each_index do |i|
product_color = ProductColor.new
product_color.product_id = product.id
product_color.product_type_id = product_type.id
product_color.name = colors[i]
product_color.rgb = rgbs[i]
product_color.big_image_url = big_image_urls[i]
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
product = Product.new
product.name = "Толстовки"
product.small_image_url = "F1_small.png"
product.description_top = "<h1>Продажа толстовок от компании «Модерн импорт»</h1>"
product.description_bottom = ""
product.save
product_type = ProductType.new
product_type.product_id = product.id
product_type.name = "Толстовки муж. с капюшоном 320 гр. Хлопок 100%"
product_type.description = "desc"
product_type.big_image_url = "wear/f_m_kor_krug/okean_zeleniy.jpg"
product_type.small_image_url = "F1_small.png"
product_type.white_price_id = 1
product_type.color_price_id = 1
product_type.white_old_price_id = 1
product_type.color_old_price_id = 1
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
colors = ["Белый", "Цвет"]
rgbs = ["#ffffff", "#ccffff"]
big_image_urls = ["wear/f_m_kor_krug/okean_zeleniy.jpg", "wear/f_m_kor_krug/okean_zeleniy.jpg"]
colors.each_index do |i|
product_color = ProductColor.new
product_color.product_id = product.id
product_color.product_type_id = product_type.id
product_color.name = colors[i]
product_color.rgb = rgbs[i]
product_color.big_image_url = big_image_urls[i]
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
product_type = ProductType.new
product_type.product_id = product.id
product_type.name = "Толстовки жен. с капюшоном 260 гр. Хлопок 100%"
product_type.description = "desc"
product_type.big_image_url = "wear/f_m_kor_krug/okean_zeleniy.jpg"
product_type.small_image_url = "F1_small.png"
product_type.white_price_id = 1
product_type.color_price_id = 1
product_type.white_old_price_id = 1
product_type.color_old_price_id = 1
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
colors = ["Белый", "Цвет"]
rgbs = ["#ffffff", "#ccffff"]
big_image_urls = ["wear/f_m_kor_krug/okean_zeleniy.jpg", "wear/f_m_kor_krug/okean_zeleniy.jpg"]
colors.each_index do |i|
product_color = ProductColor.new
product_color.product_id = product.id
product_color.product_type_id = product_type.id
product_color.name = colors[i]
product_color.rgb = rgbs[i]
product_color.big_image_url = big_image_urls[i]
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
