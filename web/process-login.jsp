<%-- 
    Document   : process-login
    Created on : Aug 7, 2023, 3:10:00 PM
    Author     : sanjanaattanayake
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="classes.Teacher"%>
<%@page import="javax.servlet.http.Cookie" %>

<%
    String user_type = request.getParameter("user_type");
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    
    if(user_type.equals("teacher")) {
        Teacher teacher = new Teacher();
        String teacher_id = teacher.verifyLogin(username, password);
        if(teacher_id == ""){
            response.sendRedirect("teacher-login.jsp?error=1");
        }
        else{
            session.setAttribute("teacher_id", teacher_id);
            response.sendRedirect("teacher-index.jsp");
        }        
    }
    
%>
