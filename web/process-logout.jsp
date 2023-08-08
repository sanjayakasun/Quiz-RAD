<%-- 
    Document   : process-logout
    Created on : Aug 8, 2023, 8:26:03 AM
    Author     : sanjanaattanayake
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    if(request.getParameter("redirect") != null){
        String pg = request.getParameter("redirect");
        if(pg.equals("1")){
            session.invalidate(); 
            response.sendRedirect("teacher-login.jsp");        
        } 
    }  
%>