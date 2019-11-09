jQuery(document).ready(function() {
	$('.shopping-cart').click(function() {
		$('.shopping-cart-inner').slideToggle(0);
		$('.shopping-cart-link').toggleClass('text-danger')
	});
	$('#login-form').validate({
		rules: {
			"txtUsername" : {
				required: true,
                                email: true,
				minlength: 10,
			},
			"txtPassword" : {
				required: true,
				minlength: 10
			}
		},
                messages: {
                        "txtUsername" : {
                            required : "Bạn phải nhập email",
                            minlength: "Tài khoản phải từ 10 kí tự trở lên",
                            email: "Bạn phải nhập email cho trường này"
                        },
                        "txtPassword" : {
                            required: "Mật khẩu là bắt buộc",
                            minlength: "Mật khẩu phải từ 10 kí tự trở lên"
                        }   
                }
	})
});