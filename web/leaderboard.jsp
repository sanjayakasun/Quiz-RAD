<%-- 
    Document   :  leaderboard
    Created on : Aug 11, 2023, 1:19:11 AM
    Author     : kavee
--%>

<%@page import="classes.DBConnector" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet" %>
<%@page import=" java.text.DecimalFormat" %>



<%

    Connection con = DBConnector.getConnection();
    String query = "SELECT * FROM quiz";
    PreparedStatement pstmt = con.prepareStatement(query);
    ResultSet rs = pstmt.executeQuery();
%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Leader board</title>
        <link rel="icon" type="image/png" href="assets/img/favicon.png">
        
        <!-- Include Bootstrap CSS -->
        <link href="Assests/css/lb.css"  rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    </head>
    <body  style="background-color: rgb(15, 23, 42);">

        <nav class="navbar navbar-expand-lg  mx-4 rounded-3">
            <div class="container">
                <span>
                    <a class="navbar-brand " href="#" ><b>Leader Board</b></a>
                </span>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ml-auto">
                       
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                Quiz_title
                            </a>


                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">

                                <% while (rs.next()) {%>
                                <li>
                                    <a class="dropdown-item" href="#" onclick="showQuizDetails(<%= rs.getInt("quiz_id")%>)">
                                        <%= rs.getString("quiz_title")%>
                                    </a>
                                </li>
                                <% } %>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <div class="container mt-4" id="quizDetails">
            <%
                 String clickedQuizId = request.getParameter("quizId");%>

            
        </div>
                 
        





        <!-- Include Bootstrap JS and Popper.js (required for dropdowns) -->
       <script>
    function showQuizDetails(quizId) {
       
        var clickedQuizId = quizId;

        
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
            if (this.readyState === 4 && this.status === 200) {
                
                document.getElementById("quizDetails").innerHTML = this.responseText;
            }
        };
        xhttp.open("GET", "lbTable.jsp?quizId=" + clickedQuizId, true);
        xhttp.send();
    }
</script>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>


    </body>
</html>
