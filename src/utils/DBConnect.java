package utils;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
    private static final String URL = "jdbc:mysql://localhost:3306/lost_found";
    private static final String USER = "root";
    private static final String PASSWORD = "";

    public static Connection getConn() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection(URL, USER, PASSWORD);
        } catch(Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}