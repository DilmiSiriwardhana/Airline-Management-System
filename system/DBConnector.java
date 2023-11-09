package airline.management.system;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

public class DBConnector { 
    public Connection databaseConnection(){
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/airlinedb?autoReconnect=false&useSSL=false", "root", "");
        } catch (ClassNotFoundException |SQLException e) {
            JOptionPane.showMessageDialog(null, e.getMessage());
        }
        return con;
    }
}