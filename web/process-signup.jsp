<%-- 
    Document   : process-signup
    Created on : Aug 6, 2023, 12:26:56 AM
    Author     : sanjanaattanayake
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="classes.DBConnector" %>
<%@page import="classes.Teacher" %>
<%@page import="classes.User"%>


<%
    // Teacher Input Fields
    String user_type = request.getParameter("user_type").trim();
    String firstname = request.getParameter("firstname").trim();
    String lastname = request.getParameter("lastname").trim();
    String email = request.getParameter("email").trim();
    String username = request.getParameter("username").trim();
    String password = request.getParameter("password").trim();
    String cpassword = request.getParameter("cpassword").trim();
    String education = request.getParameter("edu-level").trim();
    String school = request.getParameter("school").trim();
    String profile_pic = request.getParameter("image").trim(); 
    
    User user = new User();
    
    if(!password.equals(cpassword)){
        //passwords does not match
        response.sendRedirect("teacher-signup.jsp?error=1");
    }
    else if (!user.validateEmail(email)){
        // not a valid email
        response.sendRedirect("teacher-signup.jsp?error=2");
    }
    else if(firstname.isEmpty() || lastname.isEmpty() || email.isEmpty() || username.isEmpty() || password.isEmpty() ||
    education.isEmpty() || school.isEmpty()){
        // empty fields
        response.sendRedirect("teacher-signup.jsp?error=3");
    }
    else if(user.usernameExists(user_type, username)){
        //username exists
        response.sendRedirect("teacher-signup.jsp?error=4");
    }
    else{
        if(user_type.equals("teacher")){
            if(profile_pic == ""){
                Teacher teacher = new Teacher(firstname, lastname, email, username, password, profile_pic, education, school);

            }
            else{
                Teacher teacher = new Teacher(firstname, lastname, email, username, password, education, school);
                boolean status = teacher.addTeacher(false);
                response.sendRedirect("teacher-login.jsp?error=0");
            }
        }
        else if(user_type.equals("student")){
    
        }
    }
%>
