<%@ page import="controllers.RegistrationController" %>
<%--<%--%>
<%--   if (session.getAttribute("name")==null){--%>
<%--       response.sendRedirect("login.jsp");--%>
<%--   }--%>
<%--%>--%>
<%@ page contentType="text/html;charset=UTF-8" %>


<html>
<head>
</head>

<body>
<jsp:include page="layouts/header.jsp"/>
<br><br><br><br><br><br>
<title>Register</title>
<div class="register" id="register">
    <h1>Register</h1>
    <%if(session.getAttribute("RegError")!=null){%>
    <h3>This email is already registered</h3>
    <%session.removeAttribute("RegError");}%>
</div>
<form action="${pageContext.request.contextPath}/registration" method="post">

    <table>

        <tr>
            <td>Name:</td>
            <td><input type="text" placeholder="name" name="name" required pattern="[a-zA-z]+$" title="Must contain only letters"></td>
        </tr>

        <tr>
        <td>Email:</td>
        <td><input type="text" placeholder="Email" name="email" ></td>
        </tr>

        <tr>
            <td>Password:</td>
            <td><input type="password" placeholder="Password" name="password" ></td>
        </tr>

        <tr>
            <td><input type="submit" name="submit" value="Register"></td>
            <td><a href="${pageContext.request.contextPath}/login">Login</a></td>
        </tr>
    </table>

</form>
</body>
</html>

<%@include file="layouts/footer.jsp" %>
</body>
</html>