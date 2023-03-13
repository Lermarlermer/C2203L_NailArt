$(document).ready(function () {
    var form_var = $("form");
    form_var.submit(function (e) { e.preventDefault(); });

    var ValidationSucceededOrFailed = false;

    var adminid_var = $("#adminid");
    var password_var = $("#password");

    var displayerrortext_var = document.querySelectorAll(".label2");
    var divtoGroupInputAndLabelTag_var = document.querySelectorAll(".divtoDisplayFlexCustom");

    var showpassword_var = $("#showpassword");
    var remenberaccount_var = $("#remenberaccount");

    var RG_Alphabet = new RegExp("[a-zA-Z]");
    var RG_Password = new RegExp("[a-zA-Z]+[0-9]");
    var a00 = false;
    var a01 = false;

    function ValidationFailed_Fn(e, string) {
        displayerrortext_var[e].style.display = "block";
        divtoGroupInputAndLabelTag_var[e].style.borderColor = "#ff000083";
        displayerrortext_var[e].innerHTML = string;
    }

    function ValidationSucceeded_Fn(e) {
        displayerrortext_var[e].style.display = "none";
        divtoGroupInputAndLabelTag_var[e].style.borderColor = "#00b8d479";
    }

    function adminid_var_Fn() {
        if (adminid_var.val().length < 5) {
            ValidationFailed_Fn(0, "Admin ID must have at least 5 character!");
        } else {
            var ResultofRG_Alphabet = RG_Alphabet.test(adminid_var.val());
            if (ResultofRG_Alphabet === false) {
                ValidationFailed_Fn(0, "Admin ID must start with a letter(a-z,A-Z)");
            } else {
                ValidationSucceeded_Fn(0);
                a00 = true;
            }
        }
    }

    function password_var_Fn() {
        if (password_var.val().length < 8) {
            ValidationFailed_Fn(1, "Password must have at least 8 character!");
        } else {
            var ResultofRG_Password = RG_Password.test(password_var.val());
            if (ResultofRG_Password === false) {
                ValidationFailed_Fn(1, "Password must include at least a letter and number");
            } else {
                ValidationSucceeded_Fn(1);
                a01 = true;
            }
        }
    }
    
    adminid_var.keyup(function () { adminid_var_Fn(); });
    password_var.keyup(function () { password_var_Fn(); });

    $("#submitbtn").click(function () {
        console.log("request submit");

        //for comeback page
        a00 = false; a01 = false;

        adminid_var_Fn(); password_var_Fn();
        console.log(
            "adminname: " + a00 + "\npassword: " + a01
        );

        if (a00 === true && a01 === true) {
            console.log("TRUE");
            ValidationSucceededOrFailed = true;

            var dataX = $('#LoginForm').serialize() + '&login=';
            $.ajax({
                type: 'POST',
                url: 'zP_admin.php',
                data: dataX,
                success: function (response) {
                    if (response == 'false') {
                        alert('Sai Admin ID hoặc password');
                    }
                    if (response == 'true') {
                        alert('Đăng nhập thành công');
                        window.location.href = "/Core/redirectsX.php";
                    }
                }
            });
        }
        else {
            console.log("FALSE");
            if (ValidationSucceededOrFailed === true) {
                form_var.submit(function (e) { e.preventDefault(); });
                ValidationSucceededOrFailed = false;
            }
        }

        if (a01 === false) { password_var.focus(); }
        if (a00 === false) { adminid_var.focus(); }
    });

    showpassword_var.click(function () {
        var allinputtypepassword = document.querySelectorAll(".inputtypepassword");
        for (var i = 0; i < allinputtypepassword.length; i++) {
            if (allinputtypepassword[i].type === "password") {
                allinputtypepassword[i].type = "text";
            } else {
                allinputtypepassword[i].type = "password";
            }
        }
    })
})