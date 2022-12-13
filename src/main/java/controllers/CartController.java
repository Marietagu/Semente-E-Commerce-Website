package controllers;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import models.entities.Cart;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import models.entities.Product;
import models.managers.ProductManager;


import static java.lang.System.out;

//urlPatterns = "/cart"
@WebServlet(name = "CartController", value = "/cart")
public class CartController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        response.setContentType("text/html; charset=UTF-8");
        HttpSession session = request.getSession();

        if(request.getParameter("id") != null) {

//            ArrayList<Cart> cartList = new ArrayList<>();
            int id = Integer.parseInt(request.getParameter("id"));

            Product product = ProductManager.getById(id);

            Cart seed = new Cart();

            seed.setId(id);
            seed.setQuantity(1);
            seed.setImage(product.getImage());
            seed.setCategory(product.getCategory());
            seed.setName(product.getName());
            seed.setPrice(product.getPrice());


            session.setAttribute("seed", seed);


            ArrayList<Cart> cartContent = (ArrayList<Cart>) session.getAttribute("content");

            if (cartContent == null) {
                ArrayList<Cart> CartContent = new ArrayList<>();
                CartContent.add(seed);
                session.setAttribute("content", CartContent);

            } else {

                boolean exist = false;

                for (Cart cartSeed : cartContent) {
                    out.println(seed.getId());
                    if (cartSeed.getId() == id) {
                        exist = true;
//                        out.println("<h3 style='color:crimson; text-align: center'>Item Already in Cart. <a href='cart.jsp'>GO to Cart Page</a></h3>");
                        session.setAttribute("cartseed", true);
//                        response.sendRedirect("WEB-INF/products.jsp");
                    }
                }
                if (!exist) {
                    cartContent.add(seed);
//                    response.sendRedirect("products");
                }
                session.setAttribute("content", cartContent);
//                response.sendRedirect("WEB-INF/products.jsp");
                }
            }

            request.getRequestDispatcher("WEB-INF/cart.jsp").forward(request, response);

     }

    }
