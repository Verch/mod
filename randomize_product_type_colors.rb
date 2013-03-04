product_types = ProductType.all
product_types.each do |type|
	#1 Футболки/1
	if (type.big_image_url == "wear/fff/f_m_kor/black.jpg")
		type.big_image_url = "wear/fff/f_m_kor/golub.jpg"
		type.save
	end

	#2 Футболки/2
	#if (type.big_image_url == "wear/fff/f_f_kor/example.png")
	#3 Футболки/3
	if (type.big_image_url == "wear/fff/f_k_kor/black.jpg")
		type.big_image_url = "wear/fff/f_k_kor/green.jpg"
		type.save
	end

	#4 Футболки/4
	if (type.big_image_url == "wear/fff/f_m_dl/black.jpg")
		type.big_image_url = "wear/fff/f_m_dl/orange.jpg"
		type.save
	end

	#5 Футболки/5
	if (type.big_image_url == "wear/fff/f_m_kor_s/black.jpg")
		type.big_image_url = "wear/fff/f_m_kor_s/white.jpg"
		type.save
	end

	#6 Футболки/6
	if (type.big_image_url == "wear/fff/f_f_kor_s/black.jpg")
		type.big_image_url = "wear/fff/f_f_kor_s/pink.jpg"
		type.save
	end

	#7 Футболки/7
	if (type.big_image_url == "wear/fff/f_m_dl_s/black.jpg")
		type.big_image_url = "wear/fff/f_m_dl_s/sereb.jpg"
		type.save
	end

	#8 Футболки/8
	if (type.big_image_url == "wear/fff/f_f_dl_s/black.jpg")
		type.big_image_url = "wear/fff/f_f_dl_s/lime.jpg"
		type.save
	end

	#9 Футболки/9
	#if (type.big_image_url == "wear/fff/f_b_kor/black.jpg")
	#	type.big_image_url = "wear/fff/f_b_kor/yablue.jpg"
	#end

	#10 Футболки/10
	#if (type.big_image_url == "wear/fff/f_b_bez/black.jpg")
	#	type.big_image_url = "wear/fff/f_b_bez/yablue.jpg"
	#end

	#11 Рубашки поло/11
	if (type.big_image_url == "wear/rrr/r_m/black.png")
		type.big_image_url = "wear/rrr/r_m/green.png"
		type.save
	end

	#12 Рубашки поло/12
	if (type.big_image_url == "wear/rrr/r_f/black.png")
		type.big_image_url = "wear/rrr/r_f/slon.png"
		type.save
	end

	#13 Толстовки/13
	if (type.big_image_url == "wear/ttt/t_m/black.png")
		type.big_image_url = "wear/ttt/t_m/orange.png"
		type.save
	end

	#14 Толстовки/14
	if (type.big_image_url == "wear/ttt/t_f/black.png")
		type.big_image_url = "wear/ttt/t_f/tblue.png"
		type.save
	end

	#15 Бейсболки/15
	if (type.big_image_url == "wear/bbb/b_kl/black.jpg")
		type.big_image_url = "wear/bbb/b_kl/green.jpg"
		type.save
	end

	#16 Бейсболки/16
	if (type.big_image_url == "wear/bbb/b_kom/black.jpg")
		type.big_image_url = "wear/bbb/b_kom/yellow.jpg"
		type.save
	end

	#17 Бейсболки/17
	if (type.big_image_url == "wear/bbb/b_lx/black.jpg")
		type.big_image_url = "wear/bbb/b_lx/white.jpg"
		type.save
	end

	#18 Бейсболки/18
	if (type.big_image_url == "wear/bbb/b_lx_ex/black.jpg")
		type.big_image_url = "wear/bbb/b_lx_ex/orange_black.jpg"
		type.save
	end
end
