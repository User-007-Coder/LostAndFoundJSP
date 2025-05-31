package com.lostfound;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import dao.ItemDAO;

@WebServlet("/PostItemServlet")
public class PostItemServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        String userEmail = (String) session.getAttribute("userEmail");
        
        if (userEmail == null) {
            response.sendRedirect("login.jsp");
            return;
        }
        
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        String type = request.getParameter("type");
        String location = request.getParameter("location");
        String date = request.getParameter("date");
        
        boolean success = ItemDAO.insertItem(name, description, type, location, date, userEmail);
        
        if (success) {
            response.sendRedirect("dashboard.jsp");
        } else {
            response.getWriter().println("Error posting item");
        }
    }
}