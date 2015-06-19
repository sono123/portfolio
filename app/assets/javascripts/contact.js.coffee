
# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/



`

$(document).on('page:change', function() {

	$('ul.contact_options li').on('click', function(e){
		e.preventDefault()
		var selected = $(this)
		var litext = $(this).text()

		$('ul.contact_options li').attr({
			class: "inactive"
		});

		$(selected).attr('class', "active")	

		if(litext == "Contact Me") {
			$('.development').removeClass("hide");
			$('.design').addClass("hide");
		}
		else if(litext == "Guest Post") {
			$('.design').removeClass("hide");
			$('.development').addClass("hide");
		}
		else {
			$('.design').removeClass("hide");
			$('.development').removeClass("hide");
		};

	});


	$('ul.contact_options').on('hover', function(e){
		e.preventDefault()
		alert("Hello World")
	});


});



`
