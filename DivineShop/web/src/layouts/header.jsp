<%-- 
    Document   : header
    Created on : Nov 7, 2019, 10:26:27 AM
    Author     : Admin
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <jsp:include page="file-include.jsp" flush="true" />
    <!--Open body tag-->
    <body>
        <!--Open .wrapper tag-->
        <div class="wrapper">
            <div class="header">
                <div class="header-menu">
                    <a href="" class="header-menu-item menu-item text-success">Các hình thức thanh toán</a>
                    <a href="">
                        <i class="fas fa-plus-circle"></i>
                    </a>
                    <a href="login.jsp" class="header-menu-item menu-item">Đăng nhập</a>
                    <a href="register.jsp" class="header-menu-item menu-item">Đăng ký</a>
                </div>
                <div class="header-bar">
                    <div class="logo">
                        <a href="home.jsp">
                            <img src="src/img/logo.png" alt="">
                        </a>
                    </div>
                    <div class="search-bar">
                        <form action="" method="POST" accept-charset="utf-8">
                            <div class="search-bar-inner">
                                <input type="text" name="" value="" placeholder="Tìm kiếm">
                                <button type="submit">
                                    <i class="fas fa-search"></i>
                                </button>
                            </div>
                        </form>
                    </div>
                    <div class="header-contact-bar">
                        <div class="header-contact-bar-inner">
                            <ul>
                                <li>
                                    <i class="fas fa-phone"></i> 0332298289
                                </li>
                                <li>
                                    <i class="fas fa-envelope-open"></i> tuvan@gmail.com
                                </li>
                            </ul>
                            <div class="shopping-cart">
                                <i class="fas fa-shopping-bag "></i><span class="shopping-cart-link">&nbsp0 sản phẩm - 0 VND&nbsp<i class="fa fa-caret-down"></i></span>
                                <div class="shopping-cart-inner">
                                    <div class="mini-shopping-list-product">
                                        <div class="mini-shopping-product">
                                            <div class="mini-shopping-product-img">
                                                <a href="">
                                                    <img src="src/img/game.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="mini-shopping-product-title">
                                                <a href="">Random Code Steam</a>
                                            </div>
                                            <div class="mini-shopping-product-quantity">
                                                <p>x 1</p>
                                            </div>
                                            <div class="mini-shopping-product-price">
                                                <p>11.000 VND</p>
                                            </div>
                                            <div class="mini-shopping-product-cancel">
                                                <a href="">
                                                    <i class="fas fa-times-circle"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="mini-shopping-payment">
                                        <table>
                                            <tr>
                                                <th>Thành tiền</th>
                                                <td>11.000 VNĐ</td>
                                            </tr>
                                        </table>
                                        <p class="mt-3 mini-shopping-payment-button">
                                            <button type="button" class="btn btn-danger">Xem chi tiết giỏ hàng</button>
                                            <button type="button" class="btn btn-danger">Thanh toán</button>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="main-content">
                <div class="content-wrapper">
                    <jsp:include page="navbar.jsp" flush="true" />
                    <div class="content">