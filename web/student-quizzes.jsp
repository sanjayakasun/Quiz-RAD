<%-- 
    Document   : student-quizzes
    Created on : Aug 12, 2023, 12:45:01 AM
    Author     : sanjanaattanayake
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <title>Subjects</title>
        <link rel="icon" type="image/png" href="./assets/img/favicon.jpeg">

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">

        <link rel="stylesheet" type="text/css" href="./css/style-main.css">
    </head>

    <body>
        <!-- NAVBAR -->
        <nav class="navbar navbar-expand-sm navbar-dark bg-dark">
            <div class="container-fluid nav">
                <a class="navbar-brand" href="index.jsp">WeQuiz</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse " id="navbarNavAltMarkup">
                    <div class="navbar-nav">
                        <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
                        <a class="nav-link" href="student-quizzes.jsp">Quizzes</a>
                        <a class="nav-link" href="student-educators.jsp">Educators</a> 
                        <a class="nav-link" href="student-settings.jsp">Settings</a>        
                        <%
                            if (session.getAttribute("teacher_id") != null) {
                        %>
                        <p class="h5 ms-auto"><a class="nav-link" href="teacher-index.jsp">Teacher - Home</a></p>
                        <%
                            }
                        %>
                    </div>

                    <div class="d-flex ms-auto order-5">
                        <%
                            if (session.getAttribute("teacher_id") == null && session.getAttribute("student_id") == null) {
                        %>
                        <button type="button" class="btn btn-primary me-3" onclick="location.href = 'student-login.jsp'">Login</button>
                        <button type="button" class="btn btn-primary me-3" onclick="location.href = 'teacher-login.jsp'">For Educators</button>
                        <%
                        } else {
                        %>
                        <button type="button" class="btn btn-primary me-3" onclick="location.href = 'process-logout.jsp'">Logout</button>
                        <%
                            }
                        %>                                           
                    </div>
                </div>
            </div>
        </nav>


        <main>
            <div class="container-md">
                <div class="mt-5">
                    <form method="POST" action="" class="form-group">
                        <div class="row text-center">
                            <div class="col">
                                <div class="row">
                                    <div class="col ms-auto text-end">
                                        <label for="subject">Choose Subject</label>
                                    </div>
                                    <div class="col">
                                        <select name="subject" id="subject" class="form-control">
                                            <option value="Maths">Maths</option>
                                            <option value="Science">Science</option>
                                            <option value="Geogrpahy">Geogrpahy</option>
                                            <option value="Citizenship Education">Citizenship Education</option>
                                            <option value="Western Music">Western Music</option>
                                        </select>
                                    </div>
                                </div>                     
                            </div>

                            <div class="col">
                                <div class="row">
                                    <div class="col ms-auto text-end">
                                        <label for="level">Choose Level</label>
                                    </div>
                                    <div class="col">
                                        <select name="level" id="level" class="form-control">
                                            <option value="6">Grade 6</option>
                                            <option value="7">Grade 7</option>
                                            <option value="8">Grade 8</option>
                                            <option value="9">Grade 9</option>
                                            <option value="10">Grade 10</option>
                                            <option value="11">Grade 11</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="col ms-auto text-start">
                                <input type="submit" name="submit" value="Search" class="btn btn-primary">
                            </div>
                        </div>
                    </form>
                </div>

                <div>
                    <div class="row mt-5">
                        <div class="col">
                            <h4 class="display-6">Maths - Grade 8</h4>
                        </div>
                    </div>
                    <div class="row mt-5">
                        <div class="col">
                            <div class="container mb-3">
                                <div class="cards">
                                    <div class="row">
                                        <div class="col text-center">
                                            <h5 class="h5 mt-2">Time Zones</h5>
                                        </div>
                                        <div class="col text-center">
                                            <p class="mt-2">Private</p>
                                        </div>
                                        <div class="col text-center">
                                            <button class="btn btn-primary mt-2" onclick="location.href = 'view-quiz.html'">View Last Attempt</button>
                                            <button class="btn btn-primary mt-2">Leaderboard</button>
                                            <button class="btn btn-primary mt-2">Attempt</button>
                                        </div>  
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row mt-5">
                        <div class="col">
                            <div class="container mb-3">
                                <div class="cards">
                                    <div class="row">
                                        <div class="col text-center">
                                            <h5 class="h5 mt-2">Time Zones</h5>
                                        </div>
                                        <div class="col text-center">
                                            <p class="mt-2">Private</p>
                                        </div>
                                        <div class="col text-center">
                                            <button class="btn btn-primary mt-2" onclick="location.href = 'view-quiz.html'">View Last Attempt</button>
                                            <button class="btn btn-primary mt-2">Leaderboard</button>
                                            <button class="btn btn-primary mt-2">Attempt</button>
                                        </div>  
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row mt-5">
                        <div class="col">
                            <div class="container mb-3">
                                <div class="cards">
                                    <div class="row">
                                        <div class="col text-center">
                                            <h5 class="h5 mt-2">Time Zones</h5>
                                        </div>
                                        <div class="col text-center">
                                            <p class="mt-2">Private</p>
                                        </div>
                                        <div class="col text-center">
                                            <button class="btn btn-primary mt-2" onclick="location.href = 'view-quiz.html'">View Last Attempt</button>
                                            <button class="btn btn-primary mt-2">Leaderboard</button>
                                            <button class="btn btn-primary mt-2">Attempt</button>
                                        </div>  
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row mt-5">
                        <div class="col">
                            <div class="container mb-3">
                                <div class="cards">
                                    <div class="row">
                                        <div class="col text-center">
                                            <h5 class="h5 mt-2">Time Zones</h5>
                                        </div>
                                        <div class="col text-center">
                                            <p class="mt-2">Private</p>
                                        </div>
                                        <div class="col text-center">
                                            <button class="btn btn-primary mt-2" onclick="location.href = 'view-quiz.html'">View Last Attempt</button>
                                            <button class="btn btn-primary mt-2">Leaderboard</button>
                                            <button class="btn btn-primary mt-2">Attempt</button>
                                        </div>  
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>

        <footer class="bg-light text-center mt-5" style="position: relative;">
            <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2)">
                © 2023 All rights reserved:
                <a class="text-dark" href="index.html">WeQuiz</a>
            </div>
        </footer>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    </body>

</html>