
# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/



`

$(document).on('page:change', function() {

	$('ul.contact_options li').on('click', function(e){
		e.preventDefault()
		var selected = $(this)
		var litext = $(this).text()
		var pipe = $('ul.contact_options li.pipe')

		$('ul.contact_options li').attr({
			class: "inactive"
		});

		$(selected).attr('class', "active")
		
		$(pipe).attr('class', "pipe")	

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


	// From here down, this only works when placed at the bottom of page. Why??
	
	var recaptcha1;
  var recaptcha2;

  var myCallBack = function() {
    recaptcha1 = grecaptcha.render('recaptcha1', {
	  	'sitekey' : '6Lft6AgTAAAAAKQZ0oyCDiF8PdIIY8HW5lMChkt0',
	  	'theme' : 'light'
  	});
		
		recaptcha2 = grecaptcha.render('recaptcha2', {
      'sitekey' : '6Lft6AgTAAAAAKQZ0oyCDiF8PdIIY8HW5lMChkt0',
      'theme' : 'light'
    });
  };


});



`
