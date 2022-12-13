package controllers;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import models.entities.Cart;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "RemoveController", value = "/remove")
public class RemoveController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String total = request.getParameter("total");
        int id = Integer.parseInt(request.getParameter("id"));
        ArrayList<Cart> cartContent = (ArrayList<Cart>) session.getAttribute("content");
        if (cartContent != null) {
            for (Cart seed : cartContent) {
                if (seed.getId() == id) {
                    cartContent.remove(cartContent.indexOf(seed));
                    break;
                }
            }
            response.sendRedirect("cart");
        } else {
            response.sendRedirect("products");
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
