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
                        <button type="button" class="btn btn-primary me-3" onclick="location.href = 'teacher-login.html'">Logout</button>
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

                <div class="mt-5">
                    <div class="row mb-4">
                        <div class="col">
                            <h3 class="h3">Grade 12 - Physics</h3>
                        </div>
                        <div class="col ms-auto text-end">
                            <button class="btn btn-info" onclick="location.href = 'teacher-quiz.html'">Add New Quiz</button>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col">
                            <div class="container mt-3 mb-3">
                                <div class="cards">
                                    <div class="row">
                                        <div class="col text-center">
                                            <h5 class="h5 mt-2">Light</h5>
                                        </div>
                                        <div class="col text-center">
                                            <p class="mt-2">Private</p>
                                        </div>
                                        <div class="col text-center">
                                            <button class="btn btn-primary mt-2" onclick="location.href = 'view-quiz.html'">View Quiz</button>
                                            <button class="btn btn-primary mt-2">Show Leaderboard</button>
                                            <button class="btn btn-primary mt-2">Edit Quiz</button>
                                        </div>  
                                    </div>
                                </div>
                            </div>
                        
                            <div class="container mt-3 mb-3">
                                <div class="cards">
                                    <div class="row">
                                        <div class="col text-center">
                                            <h5 class="h5 mt-2">Light</h5>
                                        </div>
                                        <div class="col text-center">
                                            <p class="mt-2">Private</p>
                                        </div>
                                        <div class="col text-center">
                                            <button class="btn btn-primary mt-2" onclick="location.href = 'view-quiz.html'">View Quiz</button>
                                            <button class="btn btn-primary mt-2">Show Leaderboard</button>
                                            <button class="btn btn-primary mt-2">Edit Quiz</button>
                                        </div>  
                                    </div>
                                </div>
                            </div>

                            <div class="container mt-3 mb-3">
                                <div class="cards">
                                    <div class="row">
                                        <div class="col text-center">
                                            <h5 class="h5 mt-2">Light</h5>
                                        </div>
                                        <div class="col text-center">
                                            <p class="mt-2">Private</p>
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

                <div class="mt-5 mb-5">
                    <div class="row mb-4">
                        <div class="col">
                            <h3 class="h3">Grade 11 - Science</h3>
                        </div>
                        <div class="col ms-auto text-end">
                            <button class="btn btn-info" onclick="location.href = 'teacher-quiz.html'">Add New Quiz</button>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col">
                            <div class="container mt-3 mb-3">
                                <div class="cards">
                                    <div class="row">
                                        <div class="col text-center">
                                            <h5 class="h5 mt-2">Light</h5>
                                        </div>
                                        <div class="col text-center">
                                            <p class="mt-2">Private</p>
                                        </div>
                                        <div class="col text-center">
                                            <button class="btn btn-primary mt-2" onclick="location.href = 'view-quiz.html'">View Quiz</button>
                                            <button class="btn btn-primary mt-2">Show Leaderboard</button>
                                            <button class="btn btn-primary mt-2">Edit Quiz</button>
                                        </div>  
                                    </div>
                                </div>
                            </div>

                            <div class="container mt-3 mb-3">
                                <div class="cards">
                                    <div class="row">
                                        <div class="col text-center">
                                            <h5 class="h5 mt-2">Light</h5>
                                        </div>
                                        <div class="col text-center">
                                            <p class="mt-2">Private</p>
                                        </div>
                                        <div class="col text-center">
                                            <button class="btn btn-primary mt-2" onclick="location.href = 'view-quiz.html'">View Quiz</button>
                                            <button class="btn btn-primary mt-2">Show Leaderboard</button>
                                            <button class="btn btn-primary mt-2">Edit Quiz</button>
                                        </div>  
                                    </div>
                                </div>
                            </div>

                            <div class="container mt-3 mb-3">
                                <div class="cards">
                                    <div class="row">
                                        <div class="col text-center">
                                            <h5 class="h5 mt-2">Light</h5>
                                        </div>
                                        <div class="col text-center">
                                            <p class="mt-2">Private</p>
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
            </div>
        </main>

        <footer class="bg-light text-center" style="position: relative;">
            <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2)">
                © 2023 All rights reserved:
                <a class="text-dark" href="index.html">WeQuiz</a>
            </div>
        </footer>

        <script>
            function showHideSubject(){
                let sub_div = document.getElementById("subject-div");
                if(sub_div.style.display == "block"){
                    sub_div.style.display = "none";
                }
                else{
                    sub_div.style.display = "block";
                }
            }
        </script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    </body>
</html>