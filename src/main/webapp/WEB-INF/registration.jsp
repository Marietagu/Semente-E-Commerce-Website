<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="models.entities.User" %>



<html>
<head>
    <title>Register</title>
</head>
<body>
<form action="RegistrationController" method="post">
    <h1>Register</h1>
    <table>
        <tr>
            <td>Email:</td>
            <td><input type="text" name="username"></td>
        </tr>
        <tr>
            <td>Name:</td>
            <td><input type="text" name="name"></td>
        </tr>
        <tr>
            <td>Password:</td>
            <td><input type="password" name="password1"></td>
        </tr>
        <tr>
            <td><input type="submit" name="submit" value="Register"></td>
            <td><a href="login.jsp">Login</a></td>
        </tr>

    </table>
</form>

</body>
</html>


<%@include file="layouts/footer.jsp" %>
</body>
</html>
