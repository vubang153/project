jQuery(document).ready(function () {
    $('.shopping-cart').click(function () {
        $('.shopping-cart-inner').slideToggle(0);
        $('.shopping-cart-link').toggleClass('text-danger')
    });
    $('#login-form').validate({
        rules: {
            "txtUsername": {
                required: true,
                email: true,
                minlength: 10
            },
            "txtPassword": {
                required: true,
                minlength: 10
            },
            "txtRealName": {
                required: true,
                minlength: 9
            },
            "txtRepeatPassword": {
                required: true,
                equalTo: "#txtPassword"
            },
            "txtPhoneNumber": {
                number: true,
                required: true,
                minlength: 11,
            }
        },
        messages: {
            "txtUsername": {
                required: "Bạn phải nhập email",
                minlength: "Tài khoản phải từ 10 kí tự trở lên",
                email: "Bạn phải nhập email cho trường này"
            },
            "txtPassword": {
                required: "Mật khẩu là bắt buộc",
                minlength: "Mật khẩu phải từ 10 kí tự trở lên",
            },
            "txtRepeatPassword": {
                required: "Nhập lại mật khẩu",
                equalTo: "Mật khẩu bạn vừa nhập không trùng khớp với mật khẩu đã khai báo"
            },
            "txtRealName": {
                required: "Họ và tên là bắt buộc",
                minlength: "Họ và tên phải là chữ và dài hơn 8 kí tự"
            },
            "txtPhoneNumber": {
                required: "Bạn phải nhập số điện thoại",
                number: "Số điện thoại phải là số",
                minlength: "Số điện thoại phải dài hơn 10 kí tự"
            }
        }
    })
});
function checkQuantity() {
    var quantity = parseInt($('#quantity').val());
    if (quantity == 1 || quantity < 0) {
        $('.quantity-down').attr('disabled', '');
    }
    else {
        $('.quantity-down').removeAttr('disabled');
    }
}
function loginFailed() {
    $("#txtPassword-error").css("display", "block")
}
function changeQuantity() {
    checkQuantity();
    var quantity = Number($('#quantity').val());
    $('.quantity-up').click(function () {
        quantity++;
        $('#quantity').val(quantity);
    });
    $('.quantity-down').click(function () {
        quantity--;
        $('#quantity').val(quantity);
    });
}