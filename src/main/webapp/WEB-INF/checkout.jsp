<%@ page import="controllers.CheckoutController" %>

<% float total = (float) session.getAttribute("total"); %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>

    <title>Checkout</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/checkout.css">
</head>
<body>

<jsp:include page="layouts/header.jsp"/>
<div class="card-checkout">
    <h1 class="heading">Checkout</h1>
    <!--<p>This the credit card checkout. When pressing pay now, the payment will pass through or something.</p>-->
    <div class="price-total">
        <span>Order total: </span><%= total %></div>
    <form>
        <br><br>
        <div class="content">
            <p>Payment information:</p>
            <label>Name on Card</label>
            <label>
                <input class= "form-control" name="nameCard" type="text">
            </label>
        </div>
        <div class="input-group">
            <label>Card Number</label>
            <label>
                <input class="form-control" name="cardNumber" type="text">
            </label>
        </div>
        <div class="input-group">
            <label>CVV</label>
            <label>
                <input class="form-control" name="cvv" type="text" maxlength="3">
            </label>
        </div>
        <div class="input-group">
            <label>Expiry Date</label>
            <label>
                <input class="form-control" name="card-number" type="text">
            </label>
        </div>
        <div class="button">
            <button class="-primary" type="button" ><a href="${pageContext.request.contextPath}/confirmation" class="nav__link" type="submit">Place your order</a></button>
        </div>
    </form>
</div>
<jsp:include page="layouts/footer.jsp"/>
</body>
</html>