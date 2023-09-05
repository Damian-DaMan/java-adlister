import com.mysql.cj.jdbc.Driver;

import java.sql.*;

//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.ResultSet;
//import java.sql.SQLException;
//import java.sql.Statement;
//import java.sql.*;

public class JDBCEmployees {
    public static void main(String[] args) throws SQLException {
        DriverManager.registerDriver(new Driver());
        Config config = new Config();
        Connection connection = DriverManager.getConnection(
                config.getUrl(),
                config.getUser(),
                config.getPassword()
        );
        Statement statement = connection.createStatement();
        ResultSet rs = statement.executeQuery("SELECT first_name FROM employees LIMIT 10");
        while(rs.next()) {
            System.out.println(rs.getString(1));
        }
    }
}