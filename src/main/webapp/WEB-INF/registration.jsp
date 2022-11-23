<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Shopping Cart Login</title>
</head>
<body>
<div class="container">
    <jsp:include page="layouts/header.jsp"/>
    <div class="card w-50 mx-auto my-5">
        <div class="card-header text-center">User Login</div>
        <div class="card-body">
            <form action="register" method="post">
                <div class="form-group">
                    <label>User name</label>
                    <input type="email" class="form-control" name="name" id="name" placeholder="Enter your name" required>
                </div>
                <div class="form-group">
                    <label>Email Address</label>
                    <input type="email" class="form-control" name="email" id="email" placeholder="Enter your email" required>
                </div>
                <div class="form-group">
                    <label>Password</label>
                    <input type="password" class="form-control" name="password" id="password" placeholder="#@$*%&" required>
                </div>
                <div class="text-center">
                    <button type="submit" class="btn=btn primary">Login</button>
                </div>
            </form>
        </div>
    </div>
    <jsp:include page="layouts/footer.jsp"/>
</div>

</body>
</html>
