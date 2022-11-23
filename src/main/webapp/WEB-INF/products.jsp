
<%@ page import="java.util.HashMap" %>
<%@ page import="models.entities.Product" %>
<%@ page import="java.util.Map" %>
<%@ page contentType="text/html;charset=UTF-8" %>



<% HashMap<Integer, Product> products = (HashMap<Integer, Product>) request.getAttribute("products"); %>

<html>
<head>
    <title>Product page</title>
</head>
<body>
<div id="container">

    <jsp:include page="layouts/header.jsp"/>

    <h1>Product page</h1>

    <%
        for (Map.Entry<Integer, Product> product : products.entrySet()) {
        %>
            <p><%= product.getValue().getName() %></p>
        <%
        }
    %>
    <jsp:include page="layouts/footer.jsp"/>

</div>
</body>
</html>
