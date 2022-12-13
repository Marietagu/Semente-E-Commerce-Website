
<%@ page import="models.entities.*" %>
<%@ page import="java.util.ArrayList" %>

<% User auth = (User) request.getSession().getAttribute("auth");
  if(auth!=null){
    request.setAttribute("auth", auth);
  }
%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%  ArrayList<Cart> cartContent = (ArrayList<Cart>) session.getAttribute("content");
    if(cartContent != null) {
        request.setAttribute("cartContent", cartContent);
    };
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

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

    <jsp:include page="layouts/header.jsp"/>

    <title>Orders</title>

</head>

<body>
<h1>Orders</h1>

<jsp:include page="layouts/footer.jsp"/>
</body>
</html>
