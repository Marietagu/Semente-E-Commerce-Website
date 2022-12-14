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
//      ProductManager p = (ProductManager) session.getAttribute("");
//      float total =   ProductManager.getTotalCartPrice(cartContent);
//      request.setAttribute("cartContent", cartContent);
//      request.setAttribute("total", total);
//
//  }
float total = 0;
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

<div id="page-container">
    <h1>Cart</h1>

    <table class="table table-light">

        <thead>
        <tr>
<%--            <th scope="col"></th>--%>
            <th scope="col">ID</th>
            <th scope="col">Image</th>
            <th scope="col">Name</th>
            <th scope="col">Category</th>
            <th scope="col">Price(per pack)</th>
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
            <td><img class="" src="img/<%=seed.getImage() %>" width="50" alt="image"></td>
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


                        <%
                            total += (seed.getPrice())*(seed.getQuantity());
                            out.println(": " + (seed.getPrice())*(seed.getQuantity()));

                        %>


                </form>
            </td>

            <td><a href="remove?id=<%=seed.getId() %>" class="btn btn-sm btn-danger">Remove</a></td>

        </tr>

<%

    }}%>

        </tbody>
    </table>
    <h3><%= dcf.format(total) %></h3>
    <% session.setAttribute("total", total); %>

    <button type="button" class="btn btn-"> <a href="${pageContext.request.contextPath}/products" class="nav__link">Buy more!</a></button>

    <button type="button" class="btn btn-"> <a href="${pageContext.request.contextPath}/checkout"> CHECKOUT </a></button>


</div>
</body>
</html>

