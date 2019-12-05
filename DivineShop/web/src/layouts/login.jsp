<%-- 
    Document   : register
    Created on : Nov 7, 2019, 9:59:58 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="web_breadcrumb.jsp" flush="true" />
<div class="login">
    <div class="login-side">
        <div class="login-welcome box-white-border">
            <form action="login.html" method="POST" accept-charset="utf-8" id="login-form">
                <h4>Khách hàng cũ</h4>
                <h6>Tôi là khách hàng cũ</h6>
                <label for="txtUsername">Địa chỉ E-mail:</label>
                <input type="text" name="txtUsername" placeholder="Địa chỉ E-Mail: " id="txtUsername">
                <label for="txtPassword">Mật khẩu: </label>
                <input type="password" name="txtPassword"  placeholder="Mật khẩu: " id="txtPassword">
                <button type="submit" class="btn btn-red">Đăng nhập</button>
            </form>
        </div>
        <div class="register-welcome box-white-border">
            <h4>Khách hàng mới</h4>
            <h6>Đăng kí tài khoản</h6>
            <p>Bằng cách tạo tài khoản bạn sẽ có thể mua sắm nhanh hơn, cập nhật tình trạng đơn hàng, theo dõi những đơn hàng đã đặt.
            </p>
            <a href="" title="">
                <button type="button" class="btn btn-red">Tiếp tục</button>
            </a>
        </div>
    </div>
    <jsp:include page="account-options.jsp" />
</div>	
