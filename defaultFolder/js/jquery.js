jQuery(document).ready(function() {
	$('.shopping-cart').click(function() {
		$('.shopping-cart-inner').slideToggle(0);
		$('.shopping-cart-link').toggleClass('text-danger')
	});
	$("#reg-form").validate({
		onfocusout: false,
		onkeyup: false,
		onclick: false,
		rules: {
			"txtUsername": {
				required: true,
				maxlength: 15
			},
			"txtPassword": {
				required: true,
				minlength: 8
			}
		}
	});
});