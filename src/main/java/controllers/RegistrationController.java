package controllers;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import models.entities.User;
import models.managers.RegistrationManager;
import services.DatabaseConnection;

import java.io.IOException;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import static java.sql.DriverManager.getConnection;


@WebServlet(name = "RegistrationController",value = "/registration")
public class RegistrationController extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession regSession = request.getSession();

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        User user = new User(name, email, password);

        //create a database model

        if (RegistrationManager.saveUser(user)) {
            request.getRequestDispatcher("WEB-INF/home.jsp").forward(request,response);
        } else {
            String errorMessage = "User already exists";
            regSession.setAttribute("RegError", errorMessage);
            request.getRequestDispatcher("WEB-INF/registration.jsp").forward(request,response);
        }


    }
}
