/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Acer
 */
public class DBConnector {

    final static String DB_USER = "testuser";
    final static String DB_PW = "testuser";
    final static String DB_URL = "jdbc:mysql://localhost:3306/quiz";
    final static String DRIVER = "com.mysql.jdbc.Driver";

    public static Connection getConnection() throws Exception {
        Class.forName(DRIVER);
        Connection con = DriverManager.getConnection(DB_URL, DB_USER, DB_PW);
        return con;
    }
}
