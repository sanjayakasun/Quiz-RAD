<%-- 
    Document   : lbTable
    Created on : Aug 11, 2023, 1:40:51 PM
    Author     : kavee
--%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
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
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <title>lb page</title>
        <link href="Assests/css/lb.css"  rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    </head>
    <body style="background-color: rgb(15, 23, 42);">
        <%
            String clickedQuizId = request.getParameter("quizId");
        %>
        <% if (clickedQuizId != null) {
                String queryDetails = "SELECT q.quiz_id, q.quiz_title, score.quiz_id, score.student_id, score.mark, student.student_id, student.username "
                        + "FROM quiz q "
                        + "INNER JOIN score ON q.quiz_id = score.quiz_id "
                        + "INNER JOIN student ON score.student_id = student.student_id "
                        + "WHERE q.quiz_id = ?"
                        + "ORDER BY score.mark DESC"; // Order by mark in descending order

                PreparedStatement pstmtDetails = con.prepareStatement(queryDetails);
                pstmtDetails.setString(1, clickedQuizId);
                ResultSet rsDetails = pstmtDetails.executeQuery();

                boolean hasRows = false; // Flag to track if there are rows in the result set
                int position = 1; // Initialize the position
        %>
        <div class="card" id="TableSorterCard" style="background-color: rgb(15, 23, 42);">
            <div class="row " style="background-color: rgb(15, 23, 42);">
                <div class="col-12" style="background-color: rgb(15, 23, 42);">
                    <div class="table-responsive"   style="background-color: rgb(15, 23, 42);">
                        <table  class="table table-striped table tablesorter border-0 border-white" id="ipi-table" >
                            <thead class="thead-dark">
                                <tr class="border-0" style="background-color: rgb(15, 23, 42);" >
                                    <th class="text-center text-light"style="background-color: rgb(15, 23, 42);">user name</th>
                                    <th class="text-center text-light"style="background-color: rgb(15, 23, 42);">result</th>
                                    <th class="text-center text-light"style="background-color: rgb(15, 23, 42);">quiz title</th>
                                    <th class="text-center text-light"style="background-color: rgb(15, 23, 42);">percentage of marks</th>
                                    <th class="text-center text-light"style="background-color: rgb(15 23 42);">position</th>
                                </tr>
                            </thead>
                            <tbody class="text-center" style="background-color: rgb(15, 23, 42);">
                                <%
                                    while (rsDetails.next()) {
                                        hasRows = true; // Set the flag since there is at least one row

                                        int studentMark = rsDetails.getInt("mark");
                                        int studentId = rsDetails.getInt("student_id");
                                        String studentUsername = rsDetails.getString("username");

                                        // Now calculate and display the average mark for this student
                                        String querySumMark = "SELECT SUM(mark) AS sum_mark FROM score WHERE quiz_id = ?";
                                        PreparedStatement pstmtSumMark = con.prepareStatement(querySumMark);
                                        int quizId = Integer.parseInt(clickedQuizId); // Parse the clickedQuizId to an integer
                                        pstmtSumMark.setInt(1, quizId);
                                        ResultSet rsSumMark = pstmtSumMark.executeQuery();

                                        rsSumMark.next();
                                        int sumOfMark = rsSumMark.getInt("sum_mark");
                                        double averageMark = (studentMark / (double) sumOfMark) * 100;
                                        DecimalFormat decimalFormat = new DecimalFormat("0.00");
                                        String formattedAverageMark = decimalFormat.format(averageMark);

                                %>
                                <tr class="border-0" style="background-color: rgb(15, 23, 42);">
                                    <td class="text-center text-light" style="	background-color: rgb(8 47 73);"><%= studentUsername%></td>
                                    <td class="text-center text-light" style="	background-color: rgb(8 47 73);"><%= studentMark%></td>
                                    <td class="text-center text-light" style="	background-color: rgb(8 47 73);"><%= rsDetails.getString("quiz_title")%></td>
                                    <td class="text-center text-light" style="	background-color: rgb(8 47 73);"><%= formattedAverageMark%></td>
                                    <td class="text-center text-light" style="	background-color: rgb(8 47 73);"><%= position%></td> <!-- Display the position -->
                                </tr>
                                <%
                                        rsSumMark.close();
                                        pstmtSumMark.close();

                                        position++; // Increment the position for the next row
                                    }

                                    rsDetails.close();
                                    pstmtDetails.close();
                                    con.close();

                                    // Display message if no rows were found
                                    if (!hasRows) {
                                %>
                                <tr>
                                    <td colspan="5">Quiz details not found</td>
                                </tr>
                                <%
                        } %>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <%
            }
        %>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
