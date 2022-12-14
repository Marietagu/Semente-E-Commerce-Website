<%@ page import="controllers.ProductController" %>
<%@ page import="models.entities.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<% User auth = (User) request.getSession().getAttribute("auth");
    if(auth!=null){
        request.setAttribute("auth", auth);
    }
%>
<%  ArrayList<Cart> cartContent = (ArrayList<Cart>) session.getAttribute("content");
    if(cartContent != null) {
        request.setAttribute("cartContent", cartContent);
    }%>
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
    <%--    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">--%>
    <%--    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">--%>
    <title>Home</title>
</head>
<body>
<jsp:include page="layouts/header.jsp"/>
<main class="main">
    <div id="page-container">
        <!--==================== HOME ====================-->
        <section class="home" id="home">
            <div class="home__container container grid">
                <img src="${pageContext.request.contextPath}/img/home.png" alt="" class="home__img">
                <div class="home__data">
                    <h1 class="home__title">
                        Plant a seed, <br> breed life!
                    </h1>
                    <p class="home__description">
                        Semente is a seeds’ bank that allows you to discover the secrets of the South.
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
                        Who we are
                    </h2>
                    <p class="about__description">
                        Semente was created in 2014 with the idea of preserving our heritage and making everyone discover delicious fruits ,plants and herbs from South America .
                    </p>
                    <div class="about__details">
                        <p class="about__details-description">
                            <i class="ri-checkbox-fill about__details-icon"></i>
                            From our seeds you can harvest the most nutritious produce.
                        </p>
                        <p class="about__details-description">
                            <i class="ri-checkbox-fill about__details-icon"></i>
                            Guarantee to sprout or you get your money back.
                        </p>
                        <p class="about__details-description">
                            <i class="ri-checkbox-fill about__details-icon"></i>
                            Our seeds are organic and do not contain any pesticides.
                        </p>
                        <p class="about__details-description">
                            <i class="ri-checkbox-fill about__details-icon"></i>
                            By buying our seeds you are contributing to the genetic preservation of flora  from the South.
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
</main>
</body>
</html>