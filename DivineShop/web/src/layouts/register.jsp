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
            <form action="Register" method="POST" accept-charset="utf-8" id="login-form">
                <h4>Đăng ký</h4>
                <h6>Tôi là khách hàng mới</h6>
                <label for="txtUsername">Địa chỉ E-mail:</label>
                <input type="text" name="txtUsername" placeholder="Địa chỉ E-Mail: " id="txtUsername">
                <label for="txtPassword">Mật khẩu: </label>
                <input type="password" name="txtPassword"  placeholder="Mật khẩu: " id="txtPassword">
                <label for="txtRepeatPassword">Nhập lại mật khẩu: </label>
                <input type="password" name="txtRepeatPassword"  placeholder="Nhập lại mật khẩu: " id="txtRepeatPassword">
                <label for="txtRealName">Họ và tên: </label>
                <input type="text" name="txtRealName" placeholder="Họ và tên: " id="txtRealName">
                <label for="txtPhoneNumber">Số điện thoại</label>
                <input type="text" name="txtPhoneNumber" placeholder="Số điện thoại: " id="txtPhoneNumber">
                <button type="submit" class="btn btn-red">Đăng ký</button>
            </form>
        </div>
    </div>
    <jsp:include page="account-options.jsp" />
</div>	