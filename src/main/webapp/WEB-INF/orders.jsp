
<%@ page import="models.entities.*" %>

<% User auth = (User) request.getSession().getAttribute("auth");
  if(auth!=null){
    request.setAttribute("auth", auth);
  }
%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>
<html>

<head>
    <jsp:include page="layouts/header.jsp"/>
    <title>Orders</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>

<body>
<h1>Orders</h1>

</body>
</html>
