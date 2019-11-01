jQuery(document).ready(function() {
	$('.shopping-cart').click(function() {
		$('.shopping-cart-inner').slideToggle(0);
		$('.shopping-cart-link').css('color', 'red');
	});
});