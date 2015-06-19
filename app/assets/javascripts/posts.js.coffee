# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


`

$(document).on('page:change', function() {

	$('ul.post_approved_ul li').on('click', function(e){
		e.preventDefault()
		var selected = $(this)
		var litext = $(this).text()

		$('ul.post_approved_ul li').attr({
			class: "inactive"
		});

		$(selected).attr('class', "active")	

		if(litext == "Approved") {
			$('.approved').removeClass("hide");
			$('.not_approved').addClass("hide");
		}
		else if(litext == "Pending") {
			$('.not_approved').removeClass("hide");
			$('.approved').addClass("hide");
		}
		else {
			$('.approved').removeClass("hide");
			$('.not_approved').addClass("hide");
		};

	});


	$('ul.portfolio_category_ul').on('hover', function(e){
		e.preventDefault()
		alert("Hello World")
	});


});


`