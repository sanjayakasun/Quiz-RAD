<!DOCTYPE html>
<html data-bs-theme="light" lang="en">

<head>
    <title>Educator - Sign up</title>
    <link rel="icon" type="image/png" href="./assets/img/favicon.jpeg">
    
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">

    <link rel="stylesheet" href="assets/fonts/fontawesome-all.min.css">
    <link rel="stylesheet" href="./css/login-signup.css">

    <!-- BOOTSTRAP V 5.0 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
</head>

<body>
    <div class="teacher-signup">
        <div class="form-container">   
            <form action="./process-signup.jsp" method="POST">
                <h4 class="teacher-signup-title">Sign Up as an Educator</h4>

                <%
                    String message = "";
                    String output = "";
                    
                    if(request.getParameter("error") != null){
                        String error = request.getParameter("error");
                        if(error.equals("1")){
                            message = "Passwords does not match";
                        }
                        else if(error.equals("2")){
                            message = "Please enter a valid email";
                        }
                        else if(error.equals("3")){
                            message = "Please fill out all fields";
                        }
                        else if(error.equals("4")){
                            message = "This username exists. Please use a different one.";
                        }
                        output = "<h5 class='text-danger'>" + message + "</h5>";
                    }
                %>
                
                <%= output %>
                
                <input type="hidden" name="user_type" value="teacher"/>
                <input type="text" name="firstname" placeholder="Enter Firstname" class="box" required/>
                <input type="text" name="lastname" placeholder="Enter Lastname" class="box" required/>
                <input type="email" name="email" placeholder="Enter Email" class="box" required/>
                
                <select name="edu-level" class="box" required>
                    <option value="">--None--</option>
                    <option value="High School Diploma">High School Diploma</option>
                    <option value="Undergraduate">Undergraduate</option>
                    <option value="Graduate">Graduate</option>
                    <option value="Masters">Masters</option>
                    <option value="Doctoral/ PhD">Doctoral/ PhD</option>
                </select>

                <input type="text" name="school" placeholder="Enter School" class="box" required/>
                <input type="text" name="username" placeholder="Enter Username" class="box" required/>
                <input type="password" name="password" placeholder="Enter Password" class="box" required/>
                <input type="password" name="cpassword" placeholder="Confirm Password" class="box" required/>
                <input type="file" name="image" class="box" accept="image/jpg, image/jpeg, image/png"/>
                
                <input type="submit" name="submit" class="btn1" value="Sign Up" />

                <p>Already have an account? <a href="teacher-login.jsp">Login</a></p>
            </form>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>

</html>