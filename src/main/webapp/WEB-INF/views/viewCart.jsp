<%@include file="/WEB-INF/views/template/header.jsp"%>
<div class="container">
    <div class="row">
        <div class="col-md-5">
            <h2> Order Details</h2>
            <h4>Product Name : ${cart.ItemName} Tomatoes</h4>
            <h4>Order Total : ${cart.totalAmount} 17$</h4>
            <a type="submit" href="<c:url value="/viewCustomer"/>" class="button btn btn-success">Proceed</a>
        </div>
    </div>
</div>
<%@include file="/WEB-INF/views/template/footer.jsp"%>