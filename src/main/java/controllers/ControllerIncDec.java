package controllers;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import models.entities.Cart;
import models.managers.ProductManager;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

@WebServlet(name = "ControllerIncDec", value = "/quantity-inc-dec")
public class ControllerIncDec extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
//
            String action = request.getParameter("action");
            int id = Integer.parseInt(request.getParameter("id"));

            ArrayList<Cart> cartContent = (ArrayList<Cart>) session.getAttribute("content");
//            if(cartContent != null) {
//            float total =   ProductManager.getTotalCartPrice(cartContent);
//            request.setAttribute("cartContent", cartContent);
//            request.setAttribute("total", total);
//        }
//
            if (action != null && id >= 1) {
                if (action.equals("inc")) {
                    for (Cart seed : cartContent) {
                        if (seed.getId() == id) {
                            int quantity = seed.getQuantity();
                            quantity++;
                            seed.setQuantity(quantity);
//                            response.sendRedirect("cart");
//                            session.setAttribute("content", cartContent);
                            request.getRequestDispatcher("WEB-INF/cart.jsp").forward(request, response);
                        }
                    }
                }

                if (action.equals("dec")) {
                    for (Cart seed : cartContent) {
                        if (seed.getId() == id && seed.getQuantity() > 1) {
                            int quantity = seed.getQuantity();
                            quantity--;
                            seed.setQuantity(quantity);
                            break;
                        }
                    }
//                    response.sendRedirect("cart");
//                    session.setAttribute("content", cartContent);
                    request.getRequestDispatcher("WEB-INF/cart.jsp").forward(request, response);
                }
            } else {
//                response.sendRedirect("cart");
//                session.setAttribute("content", cartContent);
                request.getRequestDispatcher("WEB-INF/cart.jsp").forward(request, response);

            }


//        request.getRequestDispatcher("WEB-INF/cart.jsp").forward(request, response);

    }

}
