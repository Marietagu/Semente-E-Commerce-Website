<%@ page import="controllers.ProductController" %><%-- webinf is useful to protect sensitive data*/--%>
<%--<%--%>
<%--   if (session.getAttribute("name")==null){--%>
<%--       response.sendRedirect("login.jsp");--%>
<%--   }--%>
<%--%>--%>
<%@ page contentType="text/html;charset=UTF-8" %>

<% String message = (String) request.getAttribute("servlet-message"); %>

<html>
<head>
    <title>Home</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
<div id="page-container">
    <jsp:include page="layouts/header.jsp"/>

    <h1>Home page</h1>
    <p><%= message %></p>

    <section class="search">
    <form action="${pageContext.request.contextPath}/products" method="get" >
        <label for="name-filter-id">Search by name</label>
        <input name="<%= ProductController.NAME_PARAM %>>" id="name-filter-id" />
        <button type="submit"><img src="img/search.png" alt="search" /></button>
    </form>
    </section>

<%--    <img src=${pageContext.request.contextPath}/img/lulo.jpeg alt="lulo">--%>

    <header class="container">
        <img src="img/logo.png" alt="Semente logo" />
        <p class="shopping-bag">
            No item in the shopping bag
        </p>
        <nav class="menu-options">
            <ul>
                <li><a href="#1">Your account</a></li>
                <li><a href="#2">Wish list</a></li>
                <li><a href="#3">Fidelity card</a></li>
                <li><a href="about.html">About us</a></li>
                <li><a href="#5">Help</a></li>
            </ul>
        </nav>
    </header>
    <div class="container highlight"> <!--two classes, container and highlight-->

        <section class="menu-departments">
            <h2>Products</h2>
            <nav>
                <ul>
                    <li>
                        <a href="#">Tropical trees</a>
                        <ul>
                            <li><a href="#">Ipê</a></li>
                            <li><a href="#">Cocoa</a></li>
                            <li><a href="#">Guayava</a></li>
                            <li><a href="#">Mango</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Fruits</a></li>
                    <li><a href="#">Herbs</a></li>
                </ul>
            </nav>
        </section>

        <section class="banner-highlight">
            <figure>
                <img src="img/highlight-home.png" alt="Semente promotion picture" />
            </figure>
        </section>
    </div>


    <div class="container panels">
        <section class="panel news">
            <h2>Deals</h2>
            <ol>
                <li>
                    <a href="product.html">
                        <figure>
                            <img src="img/products/miniature1.png" alt="miniature1 picture" />
                            <figcaption>Description... for Can$ 49.99</figcaption>
                        </figure>
                    </a>
                </li>
                <li>
                    <a href="product.html">
                        <figure>
                            <img src="img/products/miniature2.png" alt="miniature2 picture" />
                            <figcaption>Description... for Can$ 49.99</figcaption>
                        </figure>
                    </a>
                </li>
                <li>
                    <a href="product.html">
                        <figure>
                            <img src="img/products/miniature3.png" alt="miniature3 picture" />
                            <figcaption>Description... for Can$ 49.99</figcaption>
                        </figure>
                    </a>
                </li>
                <li>
                    <a href="product.html">
                        <figure>
                            <img src="img/products/miniature4.png" alt="miniature4 picture" />
                            <figcaption>Description... for Can$ 49.99</figcaption>
                        </figure>
                    </a>
                </li>
                <li>
                    <a href="product.html">
                        <figure>
                            <img src="img/products/miniature5.png" alt="miniature5 picture" />
                            <figcaption>Description... for Can$ 49.99</figcaption>
                        </figure>
                    </a>
                </li>
                <li>
                    <a href="product.html">
                        <figure>
                            <img src="img/products/miniature6.png" alt="miniature6 picture" />
                            <figcaption>Description... for Can$ 49.99</figcaption>
                        </figure>
                    </a>
                </li>
            </ol>
        </section>

        <section class="panel best-sellers">
            <h2>Best-sellers</h2>
            <ol>
                <li>
                    <a href="product.html">
                        <figure>
                            <img src="img/products/miniature7.png" alt="miniature7 picture" />
                            <figcaption>Description... for Can$ 49.99</figcaption>
                        </figure>
                    </a>
                </li>
                <li>
                    <a href="product.html">
                        <figure>
                            <img src="img/products/miniature8.png" alt="miniature8 picture" />
                            <figcaption>Description... for Can$ 49.99</figcaption>
                        </figure>
                    </a>
                </li>
                <li>
                    <a href="product.html">
                        <figure>
                            <img src="img/products/miniature9.png" alt="miniature9 picture" />
                            <figcaption>Description... for Can$ 49.99</figcaption>
                        </figure>
                    </a>
                </li>
                <li>
                    <a href="product.html">
                        <figure>
                            <img src="img/products/miniature10.png" alt="miniature10 picture" />
                            <figcaption>Description... for Can$ 49.99</figcaption>
                        </figure>
                    </a>
                </li>
                <li>
                    <a href="product.html">
                        <figure>
                            <img src="img/products/miniature11.png" alt="miniature11 picture" />
                            <figcaption>Description... for Can$ 49.99</figcaption>
                        </figure>
                    </a>
                </li>
                <li>
                    <a href="product.html">
                        <figure>
                            <img src="img/products/miniature12.png" alt="miniature12 picture" />
                            <figcaption>Description... for Can$ 49.99</figcaption>
                        </figure>
                    </a>
                </li>
            </ol>
        </section>
    </div>
    <footer>
        <div class="container">
            <img src="img/logo-footer.png" alt="Semente" />
            <ul class="social">
                <li><a href="http://facebook.com/semente">Facebook</a></li>
                <li><a href="http://twitter.com/semente">Twitter</a></li>
                <li><a href="http://plus.google/semente">Google</a></li>
            </ul>
        </div>
    </footer>
    <jsp:include page="layouts/footer.jsp"/>
</div>
</body>
</html>
