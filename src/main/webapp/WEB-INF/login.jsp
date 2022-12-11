
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
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
</body>
</html>