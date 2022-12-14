<%
    String username = (String) session.getAttribute("username");

    if(username == null)
        username = "";
%>
<%--    <h1>Welcome <%= username %></h1>--%>

<%@ page import="controllers.LoginController" %>
<%@ page import="controllers.LogoutController" %>

<%@ page import="models.entities.*" %>

<% User auth = (User) request.getSession().getAttribute("auth");
    if(auth!=null){
        request.setAttribute("auth", auth);
    }
%>

<head>

    <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!--=============== FAVICON ===============-->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/img/favicon.png" type="image/x-icon">

    <!--=============== REMIX ICONS ===============-->
    <link href="${pageContext.request.contextPath}https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">

    <!--=============== CSS ===============-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

    <title></title>

</head>

    <header class="header" id="header">

        <nav class="nav container">
            <a href="#" class="nav__logo">
                <i class="ri-seedling-line nav__logo-icon"></i>
                 S  E  M  E  N  T  E
            </a>

            <div class="nav__menu" id="nav-menu">
                <ul class="nav__list">
                    <li class="nav__item">
                        <a href="${pageContext.request.contextPath}/home" class="nav__link active-link">Home</a>
                    </li>
                    <li class="nav__item">
                        <a href="home#about" class="nav__link">Who we are</a>
                    </li>
                    <li class="nav__item">
                        <a href="${pageContext.request.contextPath}/products" class="nav__link">Products</a>
                    </li>
                    <%
                        if (auth != null) {
                    %>
                    <li class="nav__item">
                        <a class="nav__link" href="${pageContext.request.contextPath}/orders">Orders</a>
                    </li>
                    <li class="nav__item">
                        <a class="nav__link" href="${pageContext.request.contextPath}/logout">Logout</a>
                    </li>
                    <%
                    } else {
                    %>
                    <li class="nav__item">
                    <a href="${pageContext.request.contextPath}/registration" class="nav__link">Sign-up</a>
                    </li>
                    <li class="nav__item"><a href="${pageContext.request.contextPath}/login" class="nav__link">Login</a>
                    </li>
                    <%
                        }
                    %>
                    <li class="nav__item">
<%--                        <span class="badge  badge-danger px-2">${ cartContent.size()}</span>--%>
                    <a href="${pageContext.request.contextPath}/cart" class="nav__link">Cart</a>
                    </li>
                </ul>

                <div class="nav__close" id="nav-close">
                    <i class="ri-close-line"></i>
                </div>
            </div>

            <div class="nav__btns">
                <!-- Theme change button -->
                <i class="ri-moon-line change-theme" id="theme-button"></i>

                <div class="nav__toggle" id="nav-toggle">
                    <i class="ri-menu-line"></i>
                </div>
            </div>
        </nav>

        <!--=============== SCROLL REVEAL ===============-->
        <script src="${pageContext.request.contextPath}/css/js/scrollreveal.min.js"></script>

        <!--=============== MAIN JS ===============-->
        <script src="${pageContext.request.contextPath}/css/js/main.js"></script>
    </header>
