<%@page import="classes.DBConnector" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet" %>

<%
    String teacher_id = String.valueOf(session.getAttribute("teacher_id"));

    Connection con = DBConnector.getConnection();
    String query = "SELECT quiz.quiz_id, quiz.subject_id, quiz.quiz_title, quiz.is_public, quiz.code, subject.subject_category, "
            + "subject.subject_level FROM quiz INNER JOIN subject ON quiz.subject_id = subject.subject_id WHERE teacher_id=?";
    PreparedStatement pstmt = con.prepareStatement(query);
    pstmt.setString(1, teacher_id);
    ResultSet rs = pstmt.executeQuery();
%>

<!DOCTYPE html>
<html>
    <head>
        <title>Educator - Home</title>
        <link rel="icon" type="image/png" href="./assets/img/favicon.jpeg">

        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- BOOTSTRAP V 5.0 -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">

        <link rel="stylesheet" type="text/css" href="./css/style-main.css">
    </head>

    <body>
        <!-- NAVBAR -->
        <nav class="navbar navbar-expand-sm navbar-dark bg-dark">
            <div class="container-fluid nav">
                <a class="navbar-brand" href="index.html">WeQuiz</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse " id="navbarNavAltMarkup">
                    <div class="navbar-nav">
                        <a class="nav-link" aria-current="page" href="index.html">Main - Home</a>
                        <a class="nav-link active" aria-current="page" href="teacher-index.jsp">Teacher - Home</a>                 
                    </div>

                    <div class="d-flex ms-auto order-5">
                        <form method="POST" action="process-logout.jsp?redirect=1">
                            <input type="submit" class="btn btn-primary me-3" value="Logout"/>
                        </form>                     
                    </div>
                </div>
            </div>
        </nav>

    </div>
    <main>
        <div class="container-md">
            <div class="row ms-auto text-end">
                <div class="col">
                    <button type="button" class="btn btn-warning mt-5" onclick="showHideSubject()">Add New Subject</button>
                </div>
            </div>

            <div id="subject-div" style="display: none;">
                <fieldset class="form-group">
                    <legend>Add New Subject</legend>
                    <form method="POST" action="">
                        <table>
                            <thead></thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <label for="subject">Subject</label>
                                    </td>
                                    <td>
                                        <input list="subjects" name="subject" id="subject" placeholder="Subject" class="form-control"/>
                                        <datalist id="subjects">
                                            <option value="Sinhala"></option>
                                            <option value="Tamil"></option>
                                            <option value="Physics"></option>
                                        </datalist>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label for="level">Level</label>
                                    </td>
                                    <td>
                                        <input list="levels" name="level" id="level" placeholder="Level" class="form-control"/>
                                        <datalist id="levels">
                                            <option value="Grade 6"></option>
                                            <option value="Grade 7"></option>
                                            <option value="Grade 8"></option>
                                        </datalist>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <input type="submit" name="subject" class="btn btn-primary" value="Add Subject">
                    </form>
                </fieldset>
            </div>

            <%
                String prev = "";
                while (rs.next()) {
                    String curr = rs.getString("subject_id");
                    if (curr != prev) {
            %>
            
            <div class="mt-5 mb-5">
                <div class="row mb-4">
                    <div class="col">
                        <h3 class="h3"><% out.println(rs.getString("subject_category") + " - " + rs.getString("subject_level"));  %></h3>
                    </div>
                    <div class="col ms-auto text-end">
                        <button class="btn btn-info" onclick="location.href='teacher-quiz.jsp?subject_id=<%=curr%>'">Add New Quiz</button>
                    </div>
                </div>

                <div class="row">
                    <div class="col">
                        <div class="container mt-3 mb-3">
                            <div class="cards">
                                <div class="row">
                                    <div class="col text-center">
                                        <h5 class="h5 mt-2"><% out.println(rs.getString("quiz_title")); %></h5>
                                    </div>
                                    <div class="col text-center">
                                        <p class="mt-2">
                                            <%
                                                if(!rs.getBoolean("is_public")){
                                                    out.println("Private");
                                                }
                                                else{
                                                    out.println("Public");
                                                }
                                            %>
                                        </p>
                                    </div>
                                    <div class="col text-center">
                                        <button class="btn btn-primary mt-2" onclick="location.href = 'view-quiz.html'">View Quiz</button>
                                        <button class="btn btn-primary mt-2">Show Leaderboard</button>
                                        <button class="btn btn-primary mt-2">Edit Quiz</button>
                                    </div>  
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <%
                        prev = curr;
                    }
                }
            %>         
        </div>
    </main>

    <footer class="bg-light text-center" style="position: fixed;">
        <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2)">
            © 2023 All rights reserved:
            <a class="text-dark" href="index.html">WeQuiz</a>
        </div>
    </footer>

    <script>
        function showHideSubject() {
            let sub_div = document.getElementById("subject-div");
            if (sub_div.style.display === "block") {
                sub_div.style.display = "none";
            } else {
                sub_div.style.display = "block";
            }
        }
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>
</html>