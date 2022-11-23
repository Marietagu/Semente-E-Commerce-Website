package controllers;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.actions.ProductAction;

import java.io.IOException;

@WebServlet(name = "ProductController", value = "/products")
public class ProductController extends HttpServlet {

    public static final String NAME_PARAM = "name";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

       String name = request.getParameter(NAME_PARAM);

       if (name != null && !name.isEmpty()) {
//           HashMap<Integer, Product> all = ProductManager.getByName(name);
//           request.setAttribute("products", all);
           ProductAction.getByName(request, name);
       }
       else{
//           HashMap<Integer, Product> all = ProductManager.getAll();
//           request.setAttribute("products", all);
           ProductAction.getAll(request);
       }

        request.getRequestDispatcher("WEB-INF/products.jsp").forward(request, response);

    }


}
