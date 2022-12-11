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
    <title>Product page</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

</head>
<body>
<div id="container">
    <jsp:include page="layouts/header.jsp"/>

    <h1>Product page</h1>

    <br><br><br><br><br>

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


    <table>
        <thead>
        <tr>
            <th>Name</th>
            <th>Category</th>
            <th>Price</th>
        </tr>
        </thead>
        <tbody>

        <%
            for (Map.Entry<Integer, Product> product : products.entrySet()) {
        %>
        <tr>
            <td><%= product.getValue().getName() %></td>
            <td><%= product.getValue().getCategory() %></td>
            <td><%= product.getValue().getPrice() %></td>
        </tr>
        <%
            }
        %>

        </tbody>
    </table>



    <jsp:include page="layouts/footer.jsp"/>
</div>
</body>
</html>
