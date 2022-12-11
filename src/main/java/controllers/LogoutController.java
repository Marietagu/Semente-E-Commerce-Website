package controllers;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import models.entities.User;
import java.io.IOException;
@WebServlet(name = "LogoutController", value = "/logout")
public class LogoutController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User newUser = (User) session.getAttribute("userLogged");
        session.removeAttribute(Integer.toString(newUser.getId()));
        session.removeAttribute("userLogged");
        session.removeAttribute("order");
        session.removeAttribute("cartList");
        request.getRequestDispatcher("WEB-INF/home.jsp").forward(request,response);
    }
}
