# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/



`

$(document).on('page:change', function() {

	$('ul.portfolio_category_ul li').on('click', function(e){
		e.preventDefault()
		var selected = $(this)
		var litext = $(this).text()

		$('ul.portfolio_category_ul li').attr({
			class: "inactive"
		});

		$(selected).attr('class', "active")	

		if(litext == "Development") {
			$('.development').removeClass("hide");
			$('.design').addClass("hide");
		}
		else if(litext == "Design") {
			$('.design').removeClass("hide");
			$('.development').addClass("hide");
		}
		else {
			$('.design').removeClass("hide");
			$('.development').removeClass("hide");
		};

	});


	$('ul.portfolio_category_ul').on('hover', function(e){
		e.preventDefault()
		alert("Hello World")
	});


});


`