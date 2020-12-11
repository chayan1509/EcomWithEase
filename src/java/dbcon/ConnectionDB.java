package dbcon;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionDB {

    public static Connection getConnection() {
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecomwithease", "root", "");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return con;
    }
}
