<%@ page import="controllers.RegistrationController" %>
<%--<%--%>
<%--   if (session.getAttribute("name")==null){--%>
<%--       response.sendRedirect("login.jsp");--%>
<%--   }--%>
<%--%>--%>
<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>

    <head>
        <jsp:include page="layouts/header.jsp"/>
        <title>Registration</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    </head>


<body>
<div id="page-container">
<title>Sign-up</title>
<div class="register" id="register">
    <h1>Sign-up</h1>
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
        <td>
            <label>
            <input type="text" placeholder="Email" name="email" >
            </label>
        </td>
        </tr>

        <tr>
            <td>Password:</td>
            <td>
                <label>
                <input type="password" placeholder="Password" name="password" >
                </label>
            </td>
        </tr>

        <tr>
            <td><input type="submit" name="submit" value="Register"></td>
            <td><a href="${pageContext.request.contextPath}/login">Login</a></td>
        </tr>
    </table>

</form>

    <%@include file="layouts/footer.jsp" %>
</div>


</body>
</html>

