<%-- 
    Document   : carousel
    Created on : Nov 12, 2019, 2:14:24 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div id="carousel" class="carousel slide" data-ride="carousel">
    <!-- The slideshow -->
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="src/img/carousel1.png" alt="Los Angeles" width="1100" height="500">
        </div>
        <div class="carousel-item">
            <img src="src/img/carousel2.png" alt="Chicago" width="1100" height="500">
        </div>
        <div class="carousel-item">
            <img src="src/img/carousel1.png" alt="New York" width="1100" height="500">
        </div>
    </div>

    <!-- Left and right controls -->
    <a class="carousel-control-prev" href="#carousel" data-slide="prev">
        <span class="carousel-control-prev-icon"></span>
    </a>
    <a class="carousel-control-next" href="#carousel" data-slide="next">
        <span class="carousel-control-next-icon"></span>
    </a>
</div>