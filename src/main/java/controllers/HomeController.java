package controllers;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "HomeController", value = "/home")
public class HomeController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*
        *Do logic here
        * */
        /*Example*/

        HttpSession session = request.getSession();
        session.setAttribute("username", "User");

        request.setAttribute("servlet-message", "From Servlet");

        request.getRequestDispatcher("WEB-INF/home.jsp").forward(request, response);
    }
}
