# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/



`

$(document).on('page:change', function() {

	$('ul.portfolio_category_ul li').on('click', function(e){
		e.preventDefault()
		var selected = $(this)
		var litext = $(this).text()
		var pipe = $('ul.portfolio_category_ul li.pipe')

		$('ul.portfolio_category_ul li').attr({
			class: "inactive"
		});

		$(selected).attr('class', "active")
		$(pipe).attr('class', "pipe")


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


	$('.summary').click(function(e){
		e.preventDefault();
		//$(this).toggleClass('heightdiv');
		$(this).next().slideToggle();
	});

	$('.closedivbutton').click(function(e){
		e.preventDefault();
		$(this).closest('.showmessage').slideUp();
	});

	$('.closebutton').click(function(e){
		e.preventDefault();
		$(this).closest('.showmessage').slideUp();
	});



	$('.menubutton').click(function(e){
		e.preventDefault();
		$('.mainmenu').toggleClass('activate');
	});

	$('.checkbutton').click(function(e){
		e.preventDefault();
		$('.checkmenu').toggleClass('activate');
	});

	$('.username').click(function(e){
		e.preventDefault();
		$('.usernamemenu').toggleClass('activate');
	});

	$('.replymenu').click(function(e){
		e.preventDefault();
		$('.replymenudiv').toggleClass('active');
	});




	$('.details').click(function(e){
		e.preventDefault();
		$(this).closest('.messagediv').find('.expand_details').slideToggle('active');
	});

	$('.replymenu').mouseenter(function(){
		$('.middleline').hide();
	});

	$('.replymenu').mouseleave(function(){
		$('.middleline').show();
	});




	$('.reply').click(function(e){
		e.preventDefault();
	    var $container = $(this).closest('.showmessage');
	    $container.find('.replybox').slideDown();
	    setTimeout(function(){
	        $container.find('.replybox2').fadeIn(100);
	    },500);
	    $container.find('.replydivbutton').slideUp();
	    //$container.find('.replybox2').css('margin-top', '20px');
	});




	$('.replydivbutton').click(function(){
	    var $container = $(this).closest('.showmessage');
	    $container.find('.replybox').slideDown();
	    setTimeout(function(){
	        $container.find('.replybox2').fadeIn(100);
	    },500);
	    $container.find('.replydivbutton').slideUp();
	    //$container.find('.replydivbutton:hover').css('background', 'white');
		//$container.find('.replydivbutton:hover').css('color', 'white');
	    //$container.find('.replybox2').css('margin-top', '20px');
	});



	$('.replylist li:nth-child(4)').click(function(){
		var $container = $(this).closest('.showmessage');
		$container.find('.replydivbutton').fadeIn();
		$('.replybox').hide();
		//$('.replydivbutton').css('display', 'block');
		//$('.replydivbutton').css('background', 'white');
		//$('.replydivbutton').css('color', 'rgba(0,0,0,0.15)');
		//$('.replydivbutton:hover').css('background', '#D1DFED');
		//$('.replydivbutton:hover').css('color', '#3366CC');
		$('.replybox2').css('margin-top', '0');
		$('.replybox2').fadeOut();
	});



});


`