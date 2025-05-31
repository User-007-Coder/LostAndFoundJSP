package com.lostfound;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Date;

@WebServlet("/PostItemServlet")
public class PostItemServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        String type = request.getParameter("type");
        String location = request.getParameter("location");
        String date = request.getParameter("date");
        
        try (Connection conn = DBConnect.getConn()) {
            String sql = "INSERT INTO items (name, description, type, location, date) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            
            pstmt.setString(1, name);
            pstmt.setString(2, description);
            pstmt.setString(3, type);
            pstmt.setString(4, location);
            pstmt.setDate(5, Date.valueOf(date));
            
            int result = pstmt.executeUpdate();
            
            if (result > 0) {
                response.sendRedirect("dashboard.jsp");
            } else {
                response.getWriter().println("Error posting item");
            }
            
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Database error: " + e.getMessage());
        }
    }
}