#= require jquery
#= require jquery-ui
#= require jquery_ujs
#= require twitter/bootstrap
#= require_tree .

# product_type#show
$ ->
	$('#link_to_order_menu').click(()->
		$('#order_menu').slideToggle(500)
		$('#link_to_order_menu').slideToggle(500))
$ ->
	$('#link_out_order_menu').click(()->
		$('#order_menu').slideToggle(500)
		$('#link_to_order_menu').slideToggle(500))

# product_sizes#index (search product)
$ ->
	$("#product_id").change(->
		$("#product_type_id > option").removeProp('selected')
		$("#product_color_id > option").removeProp('selected')
		$(this).closest("form").submit())

	$("#product_type_id").change(->
		$("#product_color_id > option").removeProp('selected')
		$(this).closest("form").submit())

	$("#product_color_id").change(->
		$(this).closest("form").submit())