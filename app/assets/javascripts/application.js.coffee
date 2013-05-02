#= require jquery
#= require jquery-ui
#= require jquery_ujs
#= require ckeditor-jquery
#= require twitter/bootstrap
#= require_tree .

# product_type#show
$ ->
	$('#link_to_order_menu').click(()->
		$('#order_menu').slideToggle(500)
		$('#to_order_menu').slideToggle(500))
$ ->
	$('#link_out_order_menu').click(()->
		$('#order_menu').slideToggle(500)
		$('#to_order_menu').slideToggle(500))
$ ->
  $("#get_product_color_id").change(->
    $(this).closest("form").submit())

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


# users registration form
$ -> #add phone number by press button
	$("#phones").children(".control-group").each(()->
			$(this).addClass("hide") if $(this).find("input").val() == "")
	$("#phones").children(".control-group:eq(0)").removeClass("hide")
	$("#my_button").click(()->
		$("#phones").children(".control-group.hide:first").slideDown(350).removeClass("hide"))


# users company sort
$ -> #reload page when change option for sort
	$("#temp_id").change(->
		$(this).closest("form").submit())

$ ->
	$("input")
    .change(()-> 
      filter = $(this).val();
      if(filter)
        $("tr.company_name").children("td:first:not(:Contains(" + filter + "))").parent().slideUp();
        $("tr.company_name").children("td:first:Contains(" + filter + ")").parent().slideDown();
      else
        $("tr.company_name").slideDown();
      return false;
    )
    .keyup(()->
      $(this).change();
  );

# on registration option copy juridical address to mailing address 
$ ->
  $("#mail_duplicate").click(()->
    if($(this).val() == "false")
      $("#user_mailing_address").parent().parent().slideUp();
      $(this).val("true");
    else
      $("#user_mailing_address").parent().parent().slideDown();
      $(this).val("false");
  );


# order edit
$ ->
  $('.hide_order_edit').click(()->
    $(this).parent().parent().slideUp(500))

# order sort & etc.
$ ->
	$("#temp_order_id").change(()->
    $("form").submit()
	)

$ ->
	$("input")
      .change(()-> 
        filter = $(this).val();
        if(filter)
          $("tr.order_name").children("td:first:not(:Contains(" + filter + "))").parent().slideUp();
          $("tr.order_name").children("td:first:Contains(" + filter + ")").parent().slideDown();
        else
          $("tr.order_name").slideDown();
        return false;
      )
    .keyup(()->
        $(this).change();
    );

#orders search and orders filter
$ ->
  $("#temp_order_id").change(()->
    $("table").find("form").submit()
  )

$ ->
  $("input")
      .change(()-> 
        filter = $(this).val();
        if(filter)
          $("tr.order_name td:nth-child(2):not(:Contains(" + filter + "))").parent().slideUp();
          $("tr.order_name td:nth-child(2):Contains(" + filter + ")").parent().slideDown();
        else
          $("tr.order_name").slideDown();
        return false;
      )
    .keyup(()->
        $(this).change();
    );

# products
$ ->
  $("#count_price_slider").click(()->
    $('#count_slider').fadeToggle(200)
    $('#price_slider').fadeToggle(200))

$ ->
  $('.reserv_hide_button').click(()->
    $('.warning').addClass("hide")
    $('.reserv_hide_button').addClass("hide")
    $('.reserv_view_button').removeClass("hide"))
$ ->
  $('.reserv_view_button').click(()->
    $('.warning').removeClass("hide")
    $('.reserv_view_button').addClass("hide")
    $('.reserv_hide_button').removeClass("hide"))