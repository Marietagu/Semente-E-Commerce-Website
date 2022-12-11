
<%@ page import="models.entities.*" %>

<% User auth = (User) request.getSession().getAttribute("auth");
  if(auth!=null){
    request.setAttribute("auth", auth);
  }
%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Orders</title>
</head>
<body>
<h1>Orders</h1>

</body>
</html>
