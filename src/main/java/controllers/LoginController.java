package controllers;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import models.entities.User;
import models.managers.UserManager;
import java.io.IOException;
@WebServlet(name = "LoginController", value = "/login")
public class LoginController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("message", "message from servlet");
        request.setAttribute("name", "User");
        request.getRequestDispatcher("WEB-INF/login.jsp").forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        try{
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            User user = UserManager.getLogin(email, password);
            if(user!=null){
                session.setAttribute("auth", user);
                if(session.getAttribute("cartList")!=null){
                    session.setAttribute("auth", user);
                    request.getRequestDispatcher("WEB-INF/cart.jsp").forward(request,response);
                }else{
                    request.getRequestDispatcher("WEB-INF/home.jsp").forward(request,response);
                }
            }else{
                request.getRequestDispatcher("WEB-INF/login.jsp").forward(request,response);
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }
    }
}