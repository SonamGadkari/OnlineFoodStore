<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html>
<head>
    <style>
        /* Made with love by Mutiullah Samim*/

        @import url('https://fonts.googleapis.com/css?family=Numans');

        html,body{
            background-image: url('http://wallpapersdsc.net/wp-content/uploads/2016/09/Junk-Food-Pictures.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            height: 100%;
            font-family: 'Numans', sans-serif;
        }

        .container{
            height: 100%;
            align-content: center;
        }

        .card{
            height: 370px;
            margin-top: auto;
            margin-bottom: auto;
            width: 400px;
            background-color: rgba(0,0,0,0.5) !important;
        }

        .social_icon span{
            font-size: 60px;
            margin-left: 10px;
            color: #FFC312;
        }

        .social_icon span:hover{
            color: white;
            cursor: pointer;
        }

        .card-header h3{
            color: white;
        }

        .social_icon{
            position: absolute;
            right: 20px;
            top: -45px;
        }

        .input-group-prepend span{
            width: 50px;
            background-color: #FFC312;
            color: black;
            border:0 !important;
        }

        input:focus{
            outline: 0 0 0 0  !important;
            box-shadow: 0 0 0 0 !important;

        }

        .remember{
            color: white;
        }

        .remember input
        {
            width: 20px;
            height: 20px;
            margin-left: 15px;
            margin-right: 5px;
        }

        .login_btn{
            color: black;
            background-color: #FFC312;
            width: 100px;
        }

        .login_btn:hover{
            color: black;
            background-color: white;
        }

        .links{
            color: white;
        }

        .links a{
            margin-left: 4px;
        }
    </style>
    <title>Login Page</title>
    <!--Made with love by Mutiullah Samim -->
    <script src="/resources/js/loginValidation.js"></script>
    <!--Bootsrap 4 CDN-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <!--Fontawesome CDN-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

    <!--Custom styles-->
</head>
<body>
<nav class="navbar card-header navbar-inverse">
        <div class="col col-lg-1 btn float-right login_btn">
        <a class="navbar-link js-scroll-trigger" href="<c:url value="/" />#page-top">Home</a>
        </div>
            <div class="col col-lg-1 btn float-right login_btn">
        <a class="navbar-link js-scroll-trigger" href="<c:url value="/" />#about">About</a>
            </div>
        <div class="col col-lg-1 btn float-right login_btn">
        <a class="navbar-link js-scroll-trigger" href="<c:url value="/viewAdminLogin" />">Admin-Login</a>
         </div>
        <div class="col col-lg-1 btn float-right login_btn">
        <a class="navbar-link js-scroll-trigger" href="<c:url value="/" />#services">Products</a>
        </div>
</nav>
<div class="container">
    <div class="d-flex justify-content-center h-100">
        <div class="card">
            <div class="card-header">
                <h3>User Login</h3>
            </div>
            <div class="card-body">
                <form id="form_id" method="post" name="myform">
                    <div class="input-group form-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fas fa-user"></i></span>
                        </div>
                        <input type="text" id="username" name="username" class="form-control"
                               pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" placeholder="username" required>

                    </div>
                    <div class="input-group form-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fas fa-key"></i></span>
                        </div>
                        <input type="password" id="password" name="password" class="form-control" placeholder="password" required>
                    </div>
                    <div class="row align-items-center remember">
                        <input type="checkbox">Remember Me
                    </div>

                    <div class="form-group">
                        <a onclick='
                         var username = document.getElementById("username").value;
                         var password = document.getElementById("password").value;
                        if (username == "bearcat" && password == "bearcat")
                        {
                        window.alert("Login successful");
                        window.location = "<c:url value="/home_logout" />#page-top"; // Redirecting to other page.
                        return false;
                        }
                        else if (username == "")
                                {
                                window.alert("Enter a valid user name,user name cannot be blanks");
                                }
                                else if (password == "" )
                                {
                                window.alert("Password cannot be spaces");
                                }
                        else if(username !="sonam.gadekari@gmail.com")
                        {
                        window.alert("Not a registered username");
                        }
                        else if(password !="bearcat")
                        {
                        window.alert("Incorrect password");
                        }
                        else if( password =="bearcat" && (username == "sonam.gadekari@gmail.com"))
                        {
                                window.alert("Login successful");
                                window.location = "<c:url value="/home_logout" />#page-top";
                        }
                        ' value="Login" class="btn float-right login_btn" >Login</a>
                    </div>
                </form>
            </div>
            <div class="card-footer">
                <div class="d-flex justify-content-center links">
                    Don't have an account?<a href="<c:url value="/viewSignup" />">Sign Up</a>
                </div>
                <div class="d-flex justify-content-center">
                    <a href="#">Forgot your password?</a>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>