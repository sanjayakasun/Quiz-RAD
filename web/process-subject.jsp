<%-- 
    Document   : process-subject
    Created on : Aug 8, 2023, 7:34:26 PM
    Author     : sanjanaattanayake
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="classes.DBConnector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String subject_category = request.getParameter("subject");
    String subject_level = request.getParameter("level");
    
    try{
        Connection con = DBConnector.getConnection();
        String query = "SELECT subject_id, subject_level FROM subject WHERE subject_category=? AND subject_level=?";
        PreparedStatement pstmt = con.prepareStatement(query);
        pstmt.setString(1, subject_category);
        pstmt.setString(2, subject_level);
        ResultSet a = pstmt.executeQuery();

        if(!a.next()){
            String query2 = "INSERT INTO subject(subject_category, subject_level) VALUES(?,?)";
            PreparedStatement pstmt2 = con.prepareStatement(query2, Statement.RETURN_GENERATED_KEYS);
            pstmt2.setString(1, subject_category.trim());
            pstmt2.setString(2, subject_level.trim());
            int b = pstmt2.executeUpdate();
            
            if(b > 0){
                ResultSet sub_ids = pstmt2.getGeneratedKeys();
                int sub_id = -1;
                if(sub_ids.next()){
                    sub_id = sub_ids.getInt(1);
                }                
                response.sendRedirect("teacher-index.jsp?error=0&&sid=" + sub_id);
            }           
        }
        else{
            response.sendRedirect("teacher-index.jsp?error=1&&sid=" + a.getString("subject_id"));
        }
    }
    catch(Exception ex){
        out.println(ex.getMessage());
    }  
%>
