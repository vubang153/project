<%-- 
    Document   : register
    Created on : Nov 7, 2019, 9:59:58 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="" title="">
                <i class="fas fa-home"></i>
            </a>
        </li>
        <li class="breadcrumb-item">
            <a href="" title="">Tài khoản</a>
        </li>
        <li class="breadcrumb-item active">
            <a href="" title="">Đăng nhập</a>
        </li>
    </ol>
</nav>
<div class="login">
    <div class="login-side">
        <div class="login-welcome box-white-border">
            <form action="dang-ky_submit" method="POST" accept-charset="utf-8">
                <h4>Khách hàng cũ</h4>
                <h6>Tôi là khách hàng cũ</h6>
                <label for="txtUsername">Địa chỉ E-mail:</label>
                <input type="text" name="txtUsername" placeholder="Địa chỉ E-Mail: " id="txtUsername">
                <label for="txtPassword">Mật khẩu: </label>
                <input type="text" name=""  placeholder="Mật khẩu: " id="txtPassword">
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
    <div class="login-account-option">
        <h4>TÀI KHOẢN</h4>
        <ul>
            <li>
                <a href="" title="">Đăng nhập</a>
            </li>
            <li>
                <a href="" title="">Đăng kí</a>
            </li>
            <li>
                <a href="" title="">Quên mật khẩu</a>
            </li>
            <li>
                <a href="" title="">Tài khoản của tôi</a>
            </li>
            <li>
                <a href="" title="">Sản phẩm yêu thích</a>
            </li>
            <li>
                <a href="" title="">Lịch sử đơn hàng</a>
            </li>
            <li>
                <a href="" title="">Lịch sử giao dịch</a>
            </li>
            <li>
                <a href="" title="">Xác minh số điện thoại</a>
            </li>
        </ul>
    </div>
</div>	