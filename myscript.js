 $(function() {
 	$(document).ready(function() {
 		$('#navigation').navPlugin({
 			'itemWidth':150,
 			'itemHeight':30
 			});
 		});
    $( "#accordion" ).accordion();

    $('.login-link').click(function(e) {
    	$('.login').fadeIn(1000);
    	e.preventDefault();
    });
  });
  