<%-- 
    Document   : product
    Created on : Nov 29, 2019, 11:44:02 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<title>${title}</title>
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
            <a href="${requestScope['javax.servlet.forward.request_uri']}" title="">${game.getName()}</a>
        </li>
    </ol>
</nav>
<div class="product-header">
    <p class="product-title big-title">
        ${game.getName()}
    </p>
    <div class="product-container clearfix">
        <img src="${game.getImage()}" class="product-image">
        <div class="product-info">
            <div class="product-info-top">
                <div>
                    <p>
                        <i class="fas fa-tags"></i>
                    </p>
                    <span>
                        <h5>Mã sản phẩm</h5>
                        <span>${game.getId()}</span>
                    </span>
                </div>
                <div>
                    <p>
                        <i class="far fa-question-circle"></i>
                    </p>
                    <span>
                        <h5>Tình trạng</h5>
                        <span>${game.isStatus()}</span>
                    </span>
                </div>
                <div>
                    <p>
                        <i class="fab fa-steam"></i>
                    </p>
                    <span>
                        <h5>Link gốc</h5>
                        <span>Steam</span>
                    </span>
                </div>
            </div>
            <div class="product-info-body">
                <b class=" product-title">giá sản phẩm</b>
                <b class="sale-price">
                    <fmt:formatNumber type="number" value="${game.getSale_price()}" />
                    VNĐ
                </b>
                <h4 class="price">
                    <fmt:formatNumber type="number" value="${game.getPrice()}" />
                    VNĐ
                </h4>
            </div>
            <div class="product-info-bottom">
                <p>Số lượng: </p>
                <form action="trang-san-pham_submit" method="get" accept-charset="utf-8">

                    <div class="quantity-button">
                        <button type="button" class="quantity-down" onclick="changeQuantity()">-</button>
                        <input type="text" name="" value="1" id="quantity" readonly="">
                        <button type="button" class="quantity-up" onclick="changeQuantity()">+</button>
                    </div>
                    <div class="button-cart">
                        <button type="button" class="btn btn-success">Mua ngay</button>
                        <button type="button" class="btn btn-warning">Thêm vào giỏ</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<div class="product-body">
    <p class="product-title big-title">Chi tiết sản phẩm</p>
    <div class="product-detail">
        ${game.getDescription()}
    </div>
</div>	
