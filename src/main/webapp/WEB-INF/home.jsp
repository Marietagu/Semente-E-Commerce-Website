<%@ page import="controllers.ProductController" %><%-- webinf is useful to protect sensitive data*/--%>
<%--<%--%>
<%--   if (session.getAttribute("name")==null){--%>
<%--       response.sendRedirect("login.jsp");--%>
<%--   }--%>
<%--%>--%>
<%@ page contentType="text/html;charset=UTF-8" %>

<% String message = (String) request.getAttribute("servlet-message"); %>

<html>
<head>
    <title>Home</title>
</head>
<body>
<div id="page-container">
    <jsp:include page="layouts/header.jsp"/>

    <h1>Home page</h1>
    <p><%= message %></p>


    <form action="${pageContext.request.contextPath}/products" method="get" >
        <label for="name-filter-id">Search by name</label>
        <input name="<%= ProductController.NAME_PARAM %>>" id="name-filter-id" />
        <button type="submit"> Search </button>
    </form>

    <img src=${pageContext.request.contextPath}/img/lulo.jpeg alt="lulo">


    <jsp:include page="layouts/footer.jsp"/>
</div>
</body>
</html>
