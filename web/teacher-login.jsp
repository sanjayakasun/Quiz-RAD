<!DOCTYPE html>

<head>
    <title>Educator - Login</title>
    <link rel="icon" type="image/png" href="./assets/img/favicon.jpeg">
    
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <link rel="stylesheet" href="./css/login-signup.css">
    
    <!-- BOOTSTRAP V 5.0 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
</head>

<body>
    <div class="teacher-login">
        <div class="form-container">
            
            <form action="process-login.jsp" method="POST">
                <h3>Log In</h3>
                <%
                    String output = "";
                    String msg = "";
                    
                    if(request.getParameter("error") != null){ 
                        String error = request.getParameter("error");
                        
                        if(error.equals("1")){
                            msg = "Username or Password is incorrect";
                        }
                        
                        output = "<h5 class='text-danger'>" + msg + "</h5>";
                    }
                %>
                
                <%= output %>
                <input type="hidden" name="user_type" value="teacher"/>
                <input type="text" name="username" placeholder="Enter Username" class="box" required />
                <input type="password" name="password" placeholder="Enter Password" class="box" required />
                <input type="submit" name="submit" class="btn1" value="Log In" />

                <p>Don't have an account? <a href="teacher-signup.jsp">Sign Up</a></p>
            </form>
        </div>

        <footer class="bg-light text-center">
            <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2)">
                © 2023 All rights reserved:
                <a class="text-dark" href="index.html">WeQuiz</a>
            </div>
        </footer>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
            crossorigin="anonymous"></script>
    </div>
</body>

</html>