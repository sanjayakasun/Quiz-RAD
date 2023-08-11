<%-- 
    Document   : student-quiz
    Created on : Aug 12, 2023, 1:00:25 AM
    Author     : sanjanaattanayake
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Quiz</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/css/bootstrap.css">
        <style>
            .col-12{
                background-color:#F3FCFF;
            }
            .box{
                background-color:#F8F8F8;
                padding-top: 10px;
                padding-right: 10px;
            }
        </style>
    </head>
    <body>
        
        <form>
            <div class="container mt-5 box">
                <div class="row" style="padding-left:10px; padding-bottom:10px;">
                    <h1 class="text-center">Quiz 01 </h1>
                    
                    <div class="col-12 col-md-6">
                        <h4><?php echo $num[0] ?> <?php array[1]  ?> 1. What is an input device?</h4><br>
                        <input type="radio" name="answer" value="1" /> Keyboard<br>
                        <input type="radio" name="answer" value="2" /> LCD Display<br>
                        <input type="radio" name="answer" value="3" /> Printer<br>
                        <input type="radio" name="answer" value="4" /> USB<br><br>
                        
                        
<!--                        <button class="btn btn-info">Previous</button> -->
                        <button class="btn btn-outline-info">Next</button>
                        <br><br>
                    </div>
                    <div class="col-md-6 text-center mt-5">
                        <h6>navigate between Questions</h6>
                        <button class="btn btn-outline-dark">1</button> <button class="btn btn-outline-dark">2</button> <button class="btn btn-outline-dark">3</button> <button class="btn btn-outline-dark">4</button>
                        <button class="btn btn-outline-dark">&ensp;5</button><bR><br>
                        
                        <button class="btn btn-outline-dark">6</button> <button class="btn btn-outline-dark">7</button> <button class="btn btn-outline-dark">8</button> <button class="btn btn-outline-dark">9</button>
                        <button class="btn btn-outline-dark">10</button>
                        
                        <br><br><br><br>
                        <button class="btn btn-info">Finish Attempt..</button>
                        <br><bR><br><br><br>
                    </div>
                </div>
        </div>
        </form>
        
    </body>
</html>
