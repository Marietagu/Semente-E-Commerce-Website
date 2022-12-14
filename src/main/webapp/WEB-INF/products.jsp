
<%@ page import="controllers.ProductController" %>
<%@ page import="controllers.CartController" %>
<%@ page import="models.managers.ProductManager" %>
<%@ page import="services.*" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="models.entities.Product" %>
<%@ page import="java.util.Map" %>
<%@ page import="models.actions.ProductAction" %>
<%@ page import="models.entities.Cart" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<% String message = (String) request.getAttribute("servlet-message"); %>

<% HashMap<Integer, Product> products = (HashMap<Integer, Product>) request.getAttribute(ProductAction.PRODUCTS_NAME); %>

<%--<%  ArrayList<Cart> cartContent = (ArrayList<Cart>) session.getAttribute("content");--%>
<%--    if(cartContent != null) {--%>
<%--        request.setAttribute("cartContent", cartContent);--%>
<%--    };--%>
<%--%>--%>



<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!--=============== FAVICON ===============-->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/img/favicon.png" type="image/x-icon">

    <!--=============== REMIX ICONS ===============-->
    <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">



    <title>Product page</title>
</head>

<body>
<jsp:include page="layouts/header.jsp"/>
<div id="page-container" class="test">
<%--    style="padding: 100px 10% 0--%>

    <section class="search">
        <form action="${pageContext.request.contextPath}/products" method="get" >

            <label for="name-filter-id">Search by name: </label>
            <input name="<%= ProductController.NAME_PARAM %>" id="name-filter-id" />
            <button type="submit" class="btn btn-"><img src="img/search.png" alt="Search" /></button>

            <label for="category-filter-id">Search by category: </label>
            <input name="<%= ProductController.CATEGORY_PARAM %>" id="category-filter-id" />
            <button type="submit" class="btn btn-"><img src="img/search.png" alt="Search" /></button>

        </form>
    </section>

    <div class="page-container">
        <div class="card-header my-3" style="position: center">Our Seeds' packs: </div>
        <div class="row">
            <%
                if (!products.isEmpty()) {
                    for (Map.Entry<Integer, Product> product : products.entrySet()) {
            %>
            <div class="col-md-3">
                <div class="card w-100" style="width: 18rem;">
                    <img class="card-img-top" src="img/<%=product.getValue().getImage() %>" alt="image">
                    <div class="card-body">
                        <h5 class="card-title"><%=product.getValue().getName() %></h5>
                        <h6 class="price">Price: $<%=product.getValue().getPrice() %></h6>
                        <h6 class="category">Category: <%=product.getValue().getCategory() %></h6>
                        <div class="mt-3 d-flex justify-content-between">
                            <a class="btn btn-dark" href="cart?id=<%=product.getValue().getId()%>">Add to Cart</a>
                        </div>
                    </div>
                </div>
            </div>
            <%
                    }
                } else {
                    out.println("No products!");
                }
            %>

        </div>
    </div>

    <jsp:include page="layouts/footer.jsp"/>
</div>



</body>
</html>