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
#$ ->
#  $('.link_to_color').click(()->
#    new_src = this.id
#    console.log(new_src)
#    $('.click_image_color').attr('src',new_src)
#    )

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
#in order go to link when clicked a row !!!!!! finish me !!!!!!
$ ->
  $("table").delegate("tr", "click", ()->
    console.log($(this).val()))
