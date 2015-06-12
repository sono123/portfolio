$(document).on('page:change', function() {

   $('img#ruby_logo').on('mouseenter', function(e){
      e.preventDefault()
      $(this).attr('src', "/assets/ruby_logo_hover.png")
   });

   $('img#ruby_logo').on('mouseleave', function(e){
      e.preventDefault()
      $(this).attr('src', "/assets/ruby_logo.png")
   });

   $('img#js_logo').on('mouseenter', function(e){
      e.preventDefault()
      $(this).attr('src', "/assets/js_logo_hover.png")
   });

   $('img#js_logo').on('mouseleave', function(e){
      e.preventDefault()
      $(this).attr('src', "/assets/js_logo.png")
   });

   $('img#html_logo').on('mouseenter', function(e){
      e.preventDefault()
      $(this).attr('src', "/assets/html_logo_hover.png")
   });

   $('img#html_logo').on('mouseleave', function(e){
      e.preventDefault()
      $(this).attr('src', "/assets/html_logo.png")
   });

   $('img#css_logo').on('mouseenter', function(e){
      e.preventDefault()
      $(this).attr('src', "/assets/css_logo_hover.png")
   });

   $('img#css_logo').on('mouseleave', function(e){
      e.preventDefault()
      $(this).attr('src', "/assets/css_logo.png")
   });

   $('img#sql_logo').on('mouseenter', function(e){
      e.preventDefault()
      $(this).attr('src', "/assets/sql_logo_hover.png")
   });

   $('img#sql_logo').on('mouseleave', function(e){
      e.preventDefault()
      $(this).attr('src', "/assets/sql_logo.png")
   });

});












