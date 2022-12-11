package controllers;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import models.entities.User;
import models.managers.UserManager;
import java.io.IOException;
import static java.sql.DriverManager.getConnection;

@WebServlet(name = "RegistrationController",value = "/registration")
public class RegistrationController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("WEB-INF/registration.jsp").forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession();
        try {
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            if (UserManager.validateEmail(email)) {
                //session.setAttribute("RegError", true);
                session.setAttribute("RegError", true);
                request.getRequestDispatcher("WEB-INF/registration.jsp").forward(request, response);
            } else {
                User user = new User (name, email, password);
                UserManager.saveUser(user);
                request.getRequestDispatcher("WEB-INF/login.jsp").forward(request, response);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}