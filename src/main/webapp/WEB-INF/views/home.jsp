<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@include file="/WEB-INF/views/template/home_header.jsp"%>
<!-- Masthead -->
<header class="masthead">
    <div class="container h-100">
        <div class="row h-100 align-items-center justify-content-center text-center">
            <div class="col-lg-10 align-self-end">
                <h1 class="text-uppercase text-white font-weight-bold">Order Food you love</h1>
                <hr class="divider my-4">
            </div>
            <div class="col-lg-8 align-self-baseline">
                <p class="text-white-75 font-weight-light mb-5">This online store is a largest store for all vegetables.
                    We also free deliver the orders as per your choice. </p>
                <a class="btn btn-primary btn-xl js-scroll-trigger" href="#about">Find Out More!</a>
            </div>
        </div>
    </div>
</header>

<!-- About Section -->
<section class="page-section bg-primary" id="about">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8 text-center">
                <h2 class="text-white mt-0">We've got what you need!</h2>
                <hr class="divider light my-4">
                <p class="text-white-50 mb-4">Order now! and get everything you need at a special discounts and running in no time! </p>
                <a class="btn btn-light btn-xl js-scroll-trigger" href="#services">Get Started!</a>
            </div>
        </div>
    </div>
</section>

<!-- Services Section -->
<section class="page-section" id="services">
    <div class="container">
        <h2 class="text-center mt-0">All Our Products</h2>
        <hr class="divider my-4">
    </div>
    <div class="col col-lg-12 col-sm-12 col-md-12">
    <table class="table table-striped table-hover toable-bordered">
        <thead>
        <tr>
            <th>Product</th>
            <th>Product Name</th>
            <th>Product Description</th>
            <th>Category</th>
            <th>Condition</th>
            <th>Price($)</th>
            <th></th>
        </tr>
        </thead>
        <c:forEach items="${products}" var="product">
            <tr>
                <td><img src="<c:url value="/resources/img/portfolio/thumbnails/${product.productId}.jpg"/>" height="70" width="70" /></td>
                <td>${product.productName}</td>
                <td>${product.productDescription}</td>
                <td>${product.productCategory}</td>
                <td>${product.productCondition}</td>
                <td>${product.productPrice}</td>
                <td>
                    <a href="<c:url value="/viewLogin"/>" >
                        <span>
                            <img src="<c:url value="/resources/img/portfolio/thumbnails/buy.jpg"/>" height="70" width="150"  />
                        </span>
                    </a>
                </td>
            </tr>
        </c:forEach>
    </table>
    </div>
</section>

<!-- Portfolio Section-->
<section id="portfolio">
</section>

    <div class="container-fluid p-0">
        <div class="row no-gutters">
<c:forEach items="${products}" var="product">
            <div class="col-lg-4 col-sm-6">
                <a href="<c:url value="/viewProduct/${product.productId}"/>" title="Order now">
                    <img class="img-fluid" src="<c:url value="/resources/img/portfolio/thumbnails/${product.productId}.jpg"/>" >
                </a>
            </div>
</c:forEach>
        </div>
    </div>

<!--</section>-->

<!-- Call to Action Section -->
<section class="page-section bg-dark text-white">
    <div class="container text-center">
        <h2 class="mb-4">Come and order !</h2>
        <a class="btn btn-light btn-xl" href="<c:url value="/" />#services">Order Now!</a>
    </div>
</section>

<%@include file="/WEB-INF/views/template/footer.jsp"%>
