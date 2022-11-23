package controllers;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import models.entities.Product;
import models.managers.ProductManager;

import java.io.IOException;
import java.util.HashMap;

@WebServlet(name = "ProductController", value = "/products")
public class ProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

       String name = request.getParameter("name");

       if (name != null) {
           HashMap<Integer, Product> all = ProductManager.getByName(name);
           request.setAttribute("products", all);

       }
       else{
           HashMap<Integer, Product> all = ProductManager.getAll();
           request.setAttribute("products", all);
       }

        request.getRequestDispatcher("WEB-INF/products.jsp").forward(request, response);

    }


}
