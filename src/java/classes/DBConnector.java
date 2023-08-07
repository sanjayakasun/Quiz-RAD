package classes;

/**
 *
 * @author sanjanaattanayake
 */

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnector {
    private static final String URL = "jdbc:mysql://localhost:3306/we_quiz";
    private static final String USERNAME = "testuser";
    private static final String PASSWORD = "testuser";
    private static final String DRIVER = "com.mysql.cj.jdbc.Driver";

    public static Connection getConnection() throws Exception{
        Class.forName(DRIVER);
        Connection con = DriverManager.getConnection(URL, USERNAME, PASSWORD);
        return con;
    } 
}
