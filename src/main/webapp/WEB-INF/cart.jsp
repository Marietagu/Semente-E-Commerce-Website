

<%@ page import="models.entities.*" %>

<%--<% User auth = (User) request.getSession().getAttribute("auth");--%>
<%--    if(auth!=null){--%>
<%--        request.setAttribute("auth", auth);--%>
<%--    }--%>
<%--%>--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

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

    <title>Cart</title>

</head>

<body>

<div id="container">

<h1>Cart</h1>

    <p>HELLO WORLD!</p>

</div>

</body>

</html>
