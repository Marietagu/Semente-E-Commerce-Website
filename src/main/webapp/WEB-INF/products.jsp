<%@ page import="controllers.ProductController" %><%-- webinf is useful to protect sensitive data*/--%>
<%--<%--%>
<%--   if (session.getAttribute("name")==null){--%>
<%--       response.sendRedirect("login.jsp");--%>
<%--   }--%>
<%--%>--%>
<%@ page contentType="text/html;charset=UTF-8" %>

<% String message = (String) request.getAttribute("servlet-message"); %>
<%@ page import="java.util.HashMap" %>
<%@ page import="models.entities.Product" %>
<%@ page import="java.util.Map" %>
<%@ page import="models.actions.ProductAction" %>
<%@ page contentType="text/html;charset=UTF-8" %>



<% HashMap<Integer, Product> products = (HashMap<Integer, Product>) request.getAttribute(ProductAction.PRODUCTS_NAME); %>

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

    <jsp:include page="layouts/header.jsp"/>

    <title>Product page</title>
</head>

<body>

<div id="page-container">
    <br><br><br>
    <h1>Product page</h1>

    <section class="search">
        <form action="${pageContext.request.contextPath}/products" method="get" >

            <label for="name-filter-id">Search by name</label>
            <input name="<%= ProductController.NAME_PARAM %>" id="name-filter-id" />
            <button type="submit"><img src="img/search.png" alt="search" /></button>

            <label for="category-filter-id">Search by category</label>
            <input name="<%= ProductController.CATEGORY_PARAM %>" id="category-filter-id" />
            <button type="submit"><img src="img/search.png" alt="search" /></button>

        </form>
    </section>

    <div class="container">
        <div class="card-header my-3"></div>
        <div class="row">
            <%
                if (!products.isEmpty()) {
                    for (Map.Entry<Integer, Product> product : products.entrySet()) {
            %>
            <div class="col-md-3 my-3">
                <div class="card w-100">
                    <img class="card-img-top" src="img/<%=product.getValue().getImage() %>">

                    <div class="card-body">
                        <h5 class="card-title"><%=product.getValue().getName() %></h5>
                        <h6 class="price">Price: $<%=product.getValue().getPrice() %></h6>
                        <h6 class="category">Category: <%=product.getValue().getCategory() %></h6>
                        <div class="mt-3 d-flex justify-content-between">
                            <a class="btn btn-dark" href="add-to-cart?id=<%=product.getValue().getId()%>">Add to Cart</a>
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