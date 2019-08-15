

function validate(){
    var username = document.getElementById("username").value;
    var password = document.getElementById("password").value;
    if ( username == "bearcat" && password == "bearcat")
    {
        alert ("Login successfully");
        window.location = "success.html"; // Redirecting to other page.
        return false;
    }
    else{
        alert("You have left "+" attempt;");
    }
}
