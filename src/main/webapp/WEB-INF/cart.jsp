<%@ page import="models.entities.*" %>
<%@ page import="java.text.DecimalFormat" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.*"%>
<%@ page import="controllers.CartController"%>
<%@ page import="controllers.ProductController"%>
<%@ page import="models.managers.ProductManager"%>
<%@page import="models.entities.Cart"%>
<%@page import="models.entities.Product"%>
<%@ page import="static services.DatabaseConnection.getInstance" %>
<%@ page import="services.DatabaseConnection" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>




<%

//    User auth = (User) request.getSession().getAttribute("auth");
//        if (auth != null) {
//       request.setAttribute("auth", auth);
//    }

  DecimalFormat dcf = new DecimalFormat("#.##");
  request.setAttribute("dcf", dcf);

  ArrayList<Cart> cartContent = (ArrayList<Cart>) session.getAttribute("content");

//  if(cartContent != null) {
//
////      float total =   ProductManager.getTotalCartPrice(cartContent);
////      request.setAttribute("cartContent", cartContent);
////      request.setAttribute("total", total);
//  }

 %>




<!DOCTYPE html>
<html>
<head>

    <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!--=============== FAVICON ===============-->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/img/favicon.png" type="image/x-icon">

    <!--=============== REMIX ICONS ===============-->
    <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

    <jsp:include page="layouts/header.jsp"/>

    <title>Cart</title>

    <style type="styles/css">
        .table tbody td{
            vertical-align: middle;}
            .btn-incre, .btn-decre{
                box-shadow: none;
                font-size: 25px;
            }
    </style>

</head>

<body>

<%--${(total>0)?dcf.format(total):0}--%>

<div id="page-container">
    <h1>Cart</h1>
<%--    <div class="d-flex py-3"><h3>$ ${(total>0)?total:0}  </h3> <a class="mx-3 btn btn-primary" href="cart-check-out">Check Out</a></div>--%>
    <table class="table table-light">

        <thead>
        <tr>
<%--            <th scope="col"></th>--%>
            <th scope="col">ID</th>
            <th scope="col">Image</th>
            <th scope="col">Name</th>
            <th scope="col">Category</th>
            <th scope="col">Price</th>
            <th scope="col">Quantity</th>
            <th scope="col"></th>
        </tr>
        </thead>

        <tbody>
        <%
            if (cartContent != null) {
                for (Cart seed : cartContent) {
        %>

        <tr>

            <td><%=seed.getId()%></td>

<%--            <div class="card w-100" style="width: 9rem;">--%>
            <td><img class="" src="img/<%=seed.getImage() %>" width="50" alt="image"></td>
<%--            </div>--%>

            <td><%=seed.getName()%></td>
            <td><%=seed.getCategory()%></td>
            <td><%= dcf.format(seed.getPrice())%></td>

            <td>
                <form action="" method="post" class="form-inline">
                    <input type="hidden" name="id" value="<%= seed.getId()%>" class="form-input">
                    <div class="form-group d-flex justify-content-between">
                        <a class="btn btn-sm btn-decre" href="quantity-inc-dec?action=dec&id=<%=seed.getId()%>"><i class="fas fa-minus-square"></i></a>
                        <label>
                            <input type="number" name="quantity" class="form-control"  value="<%=seed.getQuantity()%>" readonly>
                        </label>
                        <a class="btn bnt-sm btn-incre" href="quantity-inc-dec?action=inc&id=<%=seed.getId()%>"><i class="fas fa-plus-square"></i></a>
                    </div>

                </form>
            </td>
            <td><a href="remove-from-cart?id=<%=seed.getId() %>" class="btn btn-sm btn-danger">Remove</a></td>
        </tr>
<%

    }}%>

        </tbody>
    </table>

<button type="button" class="btn btn-"><a href="${pageContext.request.contextPath}/products" class="nav__link">Buy more!</a></button>

</div>
</body>
</html>

