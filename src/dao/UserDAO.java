package dao;

import utils.DBConnect;
import java.sql.*;

public class UserDAO {
    public static boolean registerUser(String name, String email, String password) {
        try (Connection conn = DBConnect.getConn()) {
            // Check if email already exists
            PreparedStatement check = conn.prepareStatement("SELECT * FROM users WHERE email = ?");
            check.setString(1, email);
            ResultSet rs = check.executeQuery();
            if (rs.next()) return false;

            // Insert new user
            PreparedStatement ps = conn.prepareStatement("INSERT INTO users (name, email, password) VALUES (?, ?, ?)");
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, password); // In production, hash the password!
            return ps.executeUpdate() == 1;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean validateUser(String email, String password) {
        try (Connection conn = DBConnect.getConn()) {
            PreparedStatement ps = conn.prepareStatement("SELECT * FROM users WHERE email = ? AND password = ?");
            ps.setString(1, email);
            ps.setString(2, password); // In production, verify hashed password!
            ResultSet rs = ps.executeQuery();
            return rs.next();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}