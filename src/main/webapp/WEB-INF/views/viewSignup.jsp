<!Doctype html>
<html lang='en'>
<head>
    <meta charset="UTF-8">
<style>
    body
    {
        background-image:url("resources/img/portfolio/fullsize/6.jpg");
    }

    .color-prop
    {
        color: white;
        display:inline;
    }

    .Navbar
    {
        padding: 20px;
        font-family:italic;
        font-weight:bold;
    }
    .Header
    {
        font-size:50px;
        text-align:center;

    }

    .about-me
    {
        display:inline;
        background-color: #483D8B;
        color: white;
        font-family:italic;
        font-weight:bold;
        font-size:30px;
    }

    .form-style
    {
        background-color: rgba(76, 175, 80, 0.5);
        width:50;
        height:50;
        align:center;

    }


    #body-style
    {
        text-align:center;
        font-size:20px;
    }

    .button-style
    {
        font-size:25px;
        color:black;
        font-weight:bold;
        background-color:#CD853F;
    }
    .set-font
    {
        font-size:22px;
        color:white;
        font-weight:bold;
        background: rgba(0, 0, 0, 0.5);
        display:inline;

        /*	background-color: rgba(76, 175, 80, 0.3);*/
        /*	background-color:#CD853F;*/
    }
    .set-font-contact
    {
        font-size:20px;
        color:white;
        font-weight:bold;
        background: rgba(0, 0, 0, 0.5);
        display:inline;
        font-family:italic;
        /*	background-color: rgba(76, 175, 80, 0.3);*/
        /*	background-color:#CD853F;*/
    }
    #past-section
    {
        display:inline;
        background-color: #151B54;
        color: white;
        font-family:italic;
        font-weight:bold;
        font-size:30px;
    }
    .hobbies
    {
        font-size:15px;

    }

    .Foot1
    {
        background-image: linear-gradient(to top left, tomato 50%, transparent 50%);
        color: black;
        font-family:italic;
        font-weight:bold;
    }

    #past-detail
    {
        display:inline;
        background-color: #9ACD32;
        color: black;
    }
    #future-section
    {
        display:inline;
        background-color: #FF4500;
        color: white;
        font-family:italic;
        font-weight:bold;
        font-size:30px;
    }


    #footer
    {    background-color: #151B54;
        color: white;
        font-family:italic;
        font-weight:bold;
        text-align:center;
        padding:20px;
        font-size:30px;
        font-family:Monotype Corsiva;
    }
    ul.Navbar {
        list-style-type: none;
        margin: 0;
        padding: 0;
        overflow: hidden;
        background-color: #333;
    }

    li.Navbar {
        float: left;
        border-right:1px solid #bbb;
    }

    li:last-child {
        border-right: none;
    }

    li a {
        display: block;
        color: white;
        text-align: center;
        padding: 14px 16px;
        text-decoration: none;
    }

    li a:hover:not(.active) {
        background-color: #111;
    }

    #active {
        background-color: #4CAF50;
    }
    .center
    {
        text-align:center;
    }

</style>
</head>
<body>
<div class="container-fluid">
    <div class="navbar-header">
        <a class="navbar-brand Navbar active" href="index.html">Sonam.com</a>
    </div>
    <ul class="Navbar">
        <li><a id="active" href='<c:url value="/home_logout"/>'>HOME</a></li>
        <li><a href="YourChoice.html">PRODUCTS</a></li>
        <li><a href="contact.html">CONTACT US</a></li>
    </ul>
    <br>
</div>
<br>
<br>
<h1 class="Header"><strong>Signup Form</strong></h1>
<div class="container-fluid center">
<div class="row center" style="margin: 90px;
  background-color: #006400;
  border: 1px solid black;
  opacity: 0.6;
  filter: alpha(opacity=60)">
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <form name="Form1" method="post" onsubmit="window.alert('Registered successfully')">
            <p class="set-font-contact"><strong>First Name</strong><sup style="color:red">*</sup></p>
            <input type="text" id="FirstName" name="FirstName" placeholder="Your first name.." pattern="[A-Za-z]+" required><br><br>
            <p class="set-font-contact"><strong>Last Name</strong><sup style="color:red">*</sup></p>
            <input type="text" id="Lastname" name="Lastname" placeholder="Your last name.." pattern="[A-Za-z]+" required><br><br>
            <p class="set-font-contact"><strong>Email</strong><sup style="color:red">*</sup></p>
            <input type="text" id="Email" name="Email" placeholder="Your email.." pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required><br><br>
            <p class="set-font-contact"><strong>Location</strong><sup style="color:red">*</sup></p>
            <input type="text" id="Location" name="location" placeholder="Your location.." pattern="[A-Za-z]+" required><br><br>
            <p class="set-font-contact"><strong>Password</strong><sup style="color:red">*</sup></p>
            <input type="password" id="password" name="password" placeholder="Enter a password"  required><br><br>
            <p class="set-font-contact"><strong>Re-enter</strong><sup style="color:red">*</sup></p>
            <input type="password" id="password2" name="password" placeholder="Confirm password"  required><br><br>
            <button class="button-style"  onclick='
            var x = document.getElementById("FirstName").value;
            var w = document.getElementById("Question").value;
            var y = document.getElementById("Lastname").value;
            var z = document.getElementById("location").value;
            var u = document.getElementById("Email").value;
            if (w == "" && isNaN(w))
            {
            alert("Please fill your question and submit");
            return false;
            }
            else if (x == "" && isNaN(x))
            {
            alert("First Name must be filled out");
            return false;
            }
            else if (y == "" && isNAN(y))
            {
            alert("Last Name must be filled out");
            return false;
            }
            else if (z == "" && isNAN(z))
            {
            alert("Location must be filled out");
            return false;
            }
            else if(u == "" && isNAN(u))
            {
            alert("Email must be filled out");
            return false;
            }
            window.alert("Registered successfully");
            window.location = "<c:url value="/home_logout" />#page-top";
            ' >Submit</button>
            <p id="demo"></p>
        </form>
    </div>
</div>
</div>
<script src="contact.js">
</script>
</body>
</html>

