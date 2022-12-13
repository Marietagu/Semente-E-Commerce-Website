<%@ page import="controllers.CheckoutController" %>

<% float total = (float) session.getAttribute("total"); %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <jsp:include page="layouts/header.jsp"/>
    <title>Checkout</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/checkout.css">
</head>
<body>
<div class="card-checkout">
    <h1 class="heading">Checkout</h1>
    <!--<p>This the credit card checkout. When pressing pay now, the payment will pass through or something.</p>-->
    <div class="price-total">
        <span>PAY </span><%= total %></div>
    <form>
        <div class="content">
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
            <button class="-primary" type="submit" >Place your order</button>
        </div>
    </form>
</div>
</body>
</html>