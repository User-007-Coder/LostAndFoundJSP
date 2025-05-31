package dao;

import utils.DBConnect;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ItemDAO {
    public static boolean insertItem(String name, String description, String type, String location, String date, String userEmail) {
        try (Connection conn = DBConnect.getConn()) {
            String sql = "INSERT INTO items (name, description, type, location, date, user_email) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, description);
            ps.setString(3, type);
            ps.setString(4, location);
            ps.setDate(5, Date.valueOf(date));
            ps.setString(6, userEmail);
            return ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static List<Item> getAllItems() {
        List<Item> items = new ArrayList<>();
        try (Connection conn = DBConnect.getConn()) {
            String sql = "SELECT i.*, u.name as user_name FROM items i JOIN users u ON i.user_email = u.email ORDER BY date DESC";
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            
            while (rs.next()) {
                Item item = new Item();
                item.setId(rs.getInt("id"));
                item.setName(rs.getString("name"));
                item.setDescription(rs.getString("description"));
                item.setType(rs.getString("type"));
                item.setLocation(rs.getString("location"));
                item.setDate(rs.getDate("date"));
                item.setUserName(rs.getString("user_name"));
                item.setUserEmail(rs.getString("user_email"));
                items.add(item);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return items;
    }

    public static Item getItemById(int id) {
        try (Connection conn = DBConnect.getConn()) {
            String sql = "SELECT i.*, u.name as user_name FROM items i JOIN users u ON i.user_email = u.email WHERE i.id = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            
            if (rs.next()) {
                Item item = new Item();
                item.setId(rs.getInt("id"));
                item.setName(rs.getString("name"));
                item.setDescription(rs.getString("description"));
                item.setType(rs.getString("type"));
                item.setLocation(rs.getString("location"));
                item.setDate(rs.getDate("date"));
                item.setUserName(rs.getString("user_name"));
                item.setUserEmail(rs.getString("user_email"));
                return item;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}