<%@ page import="controllers.ProductController" %>
<%@ page import="models.entities.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<% User auth = (User) request.getSession().getAttribute("auth");
    if(auth!=null){
        request.setAttribute("auth", auth);
    }
%>

<%--<% String message = (String) request.getAttribute("servlet-message"); %>--%>

<%--<%--%>
<%--   if (session.getAttribute("name")==null){--%>
<%--       response.sendRedirect("login.jsp");--%>
<%--   }--%>
<%--%>--%>

<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!--=============== FAVICON ===============-->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/img/favicon.png" type="image/x-icon">

    <!--=============== REMIX ICONS ===============-->
    <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">

    <!--=============== CSS ===============-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

    <jsp:include page="layouts/header.jsp"/>

    <title>Home</title>

</head>


<body>
<div id="page-container">
<%--    <jsp:include page="layouts/header.jsp"/>--%>
    <main class="main">
        <!--==================== HOME ====================-->
        <section class="home" id="home">
            <div class="home__container container grid">
                <img src="${pageContext.request.contextPath}/img/home.png" alt="" class="home__img">

                <div class="home__data">
                    <h1 class="home__title">
                        Plant a seed, <br> breed life!
                    </h1>
                    <p class="home__description">
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit,
                        sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                    </p>
                    <a href="#about" class="button button--flex">
                        Check our seeds' packs! <i class="ri-arrow-right-down-line button__icon"></i>
                    </a>
                </div>

                <div class="home__social">
                    <span class="home__social-follow">Follow Us</span>

                    <div class="home__social-links">
                        <a href="https://www.facebook.com/" target="_blank" class="home__social-link">
                            <i class="ri-facebook-fill"></i>
                        </a>
                        <a href="https://www.instagram.com/" target="_blank" class="home__social-link">
                            <i class="ri-instagram-line"></i>
                        </a>
                        <a href="https://twitter.com/" target="_blank" class="home__social-link">
                            <i class="ri-twitter-fill"></i>
                        </a>
                    </div>
                </div>
            </div>
        </section>

        <!--==================== ABOUT ====================-->
        <section class="about section container" id="about">
            <div class="about__container grid">

                <div class="about__data">
                    <h2 class="section__title about__title">
                        Lorem ipsum dolor sit amet!
                    </h2>

                    <p class="about__description">
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit,
                        sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                    </p>

                    <div class="about__details">
                        <p class="about__details-description">
                            <i class="ri-checkbox-fill about__details-icon"></i>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                        </p>
                        <p class="about__details-description">
                            <i class="ri-checkbox-fill about__details-icon"></i>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                        </p>
                        <p class="about__details-description">
                            <i class="ri-checkbox-fill about__details-icon"></i>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                        </p>
                        <p class="about__details-description">
                            <i class="ri-checkbox-fill about__details-icon"></i>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                        </p>
                    </div>

                    <a href="#" class="button--link button--flex">
                        Shop Now <i class="ri-arrow-right-down-line button__icon"></i>
                    </a>
                </div>

                <img src="${pageContext.request.contextPath}/img/about.png" alt="" class="about__img">

            </div>
        </section>

        <script src="${pageContext.request.contextPath}/css/js/scrollreveal.min.js"></script>

        <!--=============== MAIN JS ===============-->
        <script src="${pageContext.request.contextPath}/css/js/main.js"></script>

    <jsp:include page="layouts/footer.jsp"/>
</div>
</body>

</html>
