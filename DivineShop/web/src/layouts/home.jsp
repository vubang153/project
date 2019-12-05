<%-- 
    Document   : home
    Created on : Nov 7, 2019, 10:10:00 PM
    Author     : Admin
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<title>${title}</title>
<div class="left-sidebar">
    <div class="bigshop">
        <a href="">
            <img src="src/img/banner.png" alt="" class="bigshop-banner">
        </a>
        <a href="">
            <img src="src/img/banner2.png" alt="" class="bigshop-banner">
        </a>
        <a href="">
            <img src="src/img/banner3.png" alt="" class="bigshop-banner">
        </a>
    </div>
    <div class="top-5-product"></div>
</div>
<div class="list-product">
    <jsp:include page="sub/carousel.jsp" flush="true" />
    <jsp:include page="sub/list-menu.jsp" flush="true" />
    <div class="list-product-item">
        <c:forEach items="${list_game}" var="game" >
                <div class="product-item">
                    <div class="product-item-thumb">
                        <img src="${game.getImage()}" alt="">
                        <a href="product.jsp?id=${game.getId()}"
                            <p class="game-title">${game.getName()}</p>
                        </a>
                        <div class="product-price-and-sale">
                            <span class="official-price">
                                <fmt:formatNumber type="number" value="${game.getPrice()}" />
                                VNĐ
                            </span>
                            <span class="sale-price">
                                <fmt:formatNumber type="number" value="${game.getSale_price()}" />
                                VNĐ
                            </span>
                            <span class="sale-percent">- ${game.getDiscount_percent()}%</span>
                        </div>
                        <div class="menu-cart-button">
                            <button class="btn btn-danger">Mua ngay
                            </button>
                            <button type="" class="btn btn-danger btn-add-to-cart">Thêm vào giỏ
                            </button>
                        </div>
                    </div>
                </div>
           
        </c:forEach>
    </div>
    <div class="commitment">
        <div class="bigshop-big-banner">
            <a href="">
                <img src="src/img/big-banner1.png" alt="">
            </a>
        </div>
        <div class="bigshop-big-banner">
            <a href="">
                <img src="src/img/big-banner2.png" alt="">
            </a>
        </div>
    </div>
</div>
<div class="future-box">
    <div class="future-box-item">
        <h5>giao hàng cực nhanh</h5>
        <p>Hệ thống giao hàng tự động chỉ 5 phút</p>
    </div>
    <div class="future-box-item">
        <h5>bảo hành chọn đời</h5>
        <p>Cam kết bảo hành chọn đời với sản phẩm của DivineShop bán ra</p>
    </div>
    <div class="future-box-item">
        <h5>uy tín 5 sao</h5>
        <p>2 năm liền từ khi ra mắt luôn được bình chọn là Shop Game Uy Tín nhất Việt Nam</p>
    </div>
    <div class="future-box-item">
        <h5>hỗ trợ nhiệt tình</h5>
        <p>Hệ thống support online từ 8-24h</p>
    </div>
</div>