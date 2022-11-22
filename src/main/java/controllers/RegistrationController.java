package controllers;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import static java.sql.DriverManager.getConnection;


@WebServlet("/register")
public class RegistrationController extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        Connection con =  null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = getConnection("jdbc:mysql:localhost:3306/ecommercecart_db", "root", "112358");
            PreparedStatement pst = con.prepareStatement("insert into users(name, email, password) values(?,?,?,?)");
            pst.setString(1, name);
            pst.setString(1, email);
            pst.setString(1, password);

            int rowCount = pst.executeUpdate();
            request.getRequestDispatcher("registration.jsp");
            if (rowCount > 0){
                request.setAttribute("status", "success");
            }else {
                request.setAttribute("status", "failed");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            try {
                con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

    }
}
