<%@include file="/WEB-INF/views/template/header.jsp"%>

<!-- Services Section -->
<section class="page-section" id="services">

    <div class="container">
        <div class="row">
            <div class="container">
                <table>
                    <tr>
                    <th>Tracking Id</th>
                    <th>Product Name</th>
                        <th>Brand</th>
                    <th>Manufacturer</th>
                    <th>Category</th>
                    <th>Price($)</th>
                    <th>Status</th>
                    </tr>
                <tr>
                <td>TP09876543213</td>
                    <td> Mushrooms</td>
                <td>Special Foods </td>
                <td>Jubiliant foods</td>
                <td>Special Foods"</td>
                <td><strong> 2.5 USD </strong></td>
                <td><a href="<c:url value="/viewCart"/>" onclick="window.alert('Order is cancelled')" class="button btn btn-success">Cancel the order</a></td>
                    <td><a href="<c:url value="/viewCart"/>" onclick="window.alert('Your order is delivered on next day of order place date')" class="button btn btn-success">Track the status</a></td>
                </tr>
                    <tr>
                        <td>TP09909987654</td>
                        <td> Tomatoes</td>
                        <td>Hybrid Large tomatoes. Rich flavor</td>
                        <td>Tropical Foods </td>
                        <td>Georgia Foods</td>
                        <td><strong> 2.5 USD </strong></td>
                        <td><a href="<c:url value="/viewCart"/>" onclick="window.alert('Order is cancelled')" class="button btn btn-success">Cancel the order</a></td>
                        <td><a href="<c:url value="/viewCart"/>" onclick="window.alert('Your order is delivered on next day of order place date')" class="button btn btn-success">Track the status</a></td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</section>
