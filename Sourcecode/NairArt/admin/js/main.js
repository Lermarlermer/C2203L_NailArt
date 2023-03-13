/* =========================================== */
/* =========================================== */
function validate() {
    var username = document.getElementById("username").value;
    var password = document.getElementById("password-field").value;
    if (username == "admin" && password == "123456") {
        swal({
            title: "",
            text: "Welcome Administrator",
            icon: "success",
            close: true,
            button: false,
          });
        window.location = "doc/index.html";
        return true;
       
    }
    if (username == "" && password == "") {
        swal({
            title: "",
            text: "You are not fill in the information on login information...",
            icon: "error",
            close: true,
            button: "Try Again",
          });
         
        return false;
       
    }
    if (username == "admin" && password == "") {
        swal({
            title: "",
            text: "You are not enter a password...",
            icon: "warning",
            close: true,
            button: "Try Again",
          });
        return false;
    }
    if (username == null || username == "") {
        swal({
            title: "",
            text: "Email is to blank...",
            icon: "warning",
            close: true,
            button: "Try Again",
          });
        return false;
    }
    if (password == null || password == "") {
        swal({
            title: "",
            text: "Password is to blank...",
            icon: "warning",
            close: true,
            button: "Try Again",
          });
        return false;
    }
    else {
        swal({
            title: "",
            text: "Wrong login information, please check again...",
            icon: "error",
            close: true,
            button: "Try Again",
          });
        return true;
    };
}