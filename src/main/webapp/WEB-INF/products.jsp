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

<html>
<head>
    <br><br><br>
    <title>Product page</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

</head>
<body>
<div id="container">
    <jsp:include page="layouts/header.jsp"/>

    <h1>Product page</h1>

    <br><br><br>

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
        <div class="card-header my-3">Our Seeds</div>
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
                    out.println("There is no proucts");
                }
            %>

        </div>
    </div>

    <jsp:include page="layouts/footer.jsp"/>
</div>
</body>
</html>
