
<%@ page import="models.entities.*" %>

<% User auth = (User) request.getSession().getAttribute("auth");
    if(auth!=null){
//        request.setAttribute("auth", auth);
        response.sendRedirect("home.jsp");
    }
%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>

<head>
    <jsp:include page="layouts/header.jsp"/>
    <title>Login</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>

<br><br><br>

<body>

<div id="page-container">
<form action="${pageContext.request.contextPath}/login" method="post">
    <h1>Login</h1>
    <table>
        <tr>
            <td>Email:</td>
            <td><input type="text" placeholder="email" name="email" required></td>
        </tr>
        <tr>
            <td>Password:</td>
            <td><input type="password" placeholder="password" name="password" required></td>
        </tr>
        <tr>
            <td><input type="submit" name="submit" value="login"></td>
            <td><a href="${pageContext.request.contextPath}/registration">Registration</a></td>
        </tr>
    </table>
</form>

    <jsp:include page="layouts/footer.jsp"/>
</div>
</body>

</html>