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


//        String name = request.getParameter("name");
//        String email = request.getParameter("email");
//        String password = request.getParameter("password");
//
//        User user = new User(name, email, password);
//
//        //create a database model
//        RegistrationManager register = new RegistrationManager(DatabaseConnection.getInstance());//getConnection()
//        if (register.saveUser(user)) {
//            response.sendRedirect("home.jsp");
//        } else {
//            String errorMessage = "User Available";
//            HttpSession regSession = request.getSession();
//            regSession.setAttribute("RegError", errorMessage);
//            response.sendRedirect("registration.jsp");
//        }


    }
}
