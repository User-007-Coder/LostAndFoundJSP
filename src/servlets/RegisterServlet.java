package servlets;

import dao.UserDAO;
import utils.JWTUtil;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");

        if (!password.equals(confirmPassword)) {
            response.getWriter().println("Passwords do not match!");
            return;
        }

        boolean userCreated = UserDAO.registerUser(name, email, password);

        if (userCreated) {
            String token = JWTUtil.generateToken(email);
            HttpSession session = request.getSession();
            session.setAttribute("authToken", token);
            session.setAttribute("username", name);
            response.sendRedirect("index.jsp");
        } else {
            response.getWriter().println("Error: User already exists or DB issue.");
        }
    }
}
