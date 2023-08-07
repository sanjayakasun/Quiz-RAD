
package classes;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 *
 * @author sanjanaattanayake
 */

import classes.Teacher;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Level;
import java.util.logging.Logger;

public class User {
    
    public boolean validateEmail(String email){
        String regex = "^(?=.{1,64}@)[A-Za-z0-9_-]+(\\.[A-Za-z0-9_-]+)*@" 
        + "[^-][A-Za-z0-9-]+(\\.[A-Za-z0-9-]+)*(\\.[A-Za-z]{2,})$";
        
        Pattern pattern = Pattern.compile(regex);
        
        Matcher matcher = pattern.matcher(email);
        return matcher.matches();
    }
    
    public boolean validatePhone(String tel){
        boolean status = true;
        
        if(tel.length() != 10){
            status = false;
        }
        else{
            for(int i=0; i<tel.length(); i++){
                if(!Character.isDigit(tel.charAt(i))){
                    status = false;
                    break;
                }
            }
        }        
        return status;
    }
    
    public boolean usernameExists(String user_type, String username){
        boolean check = false;
        
        if("teacher".equals(user_type)){
            String query = "SELECT username FROM teacher WHERE username = ?";
            
            try {
                Connection con = DBConnector.getConnection();
                PreparedStatement pstmt = con.prepareStatement(query);
                pstmt.setString(1, username);
                ResultSet rs = pstmt.executeQuery();
                if(rs.next()){
                    check = true;
                }
            } catch (Exception ex) {
                Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        else if("student".equals(user_type)){
            String query = "SELECT username FROM student WHERE username = ?";
            
            try {
                Connection con = DBConnector.getConnection();
                PreparedStatement pstmt = con.prepareStatement(query);
                pstmt.setString(1, username);
                ResultSet rs = pstmt.executeQuery();
                if(rs.next()){
                    check = true;
                }
            } catch (Exception ex) {
                Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        
        return check;
    }
}
