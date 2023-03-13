$(document).ready(function () {
    var form_var = $("form");
    form_var.submit(function (e) { e.preventDefault(); });
    var ResetPasswordFormP1_var = $("#ResetPasswordFormP1")
    var ResetPasswordFormP2_var = $("#ResetPasswordFormP2")

    var ValidationSucceededOrFailed = false;

    var adminid_var = $("#adminid");    
    var email_var = $("#email");
    var telephone_var = $("#telephone");
    var birthday_var = $("#birthday");
    
    var password_var = $("#password");
    var confirm_password_var = $("#confirm_password");

    var displayerrortext_var = document.querySelectorAll(".label2");
    var divtoGroupInputAndLabelTag_var = document.querySelectorAll(".divtoDisplayFlexCustom");

    var showpassword_var = $("#showpassword");

    var RG_Alphabet = new RegExp("[a-zA-Z]");
    var RG_Password = new RegExp("[a-zA-Z]+[0-9]");
    var RG_Email = new RegExp("^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9]+\.[a-zA-Z0-9-.]+$");
    var RG_Telephone = new RegExp("^[0-9]+$");

    var a00 = false; var a01 = false; var a02 = false; var a03 = false;
    var a04 = false; var a05 = false; var CnfmPswd_andPswd = false;

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

    function email_var_Fn() {
        var ResultofRG1_Email = RG_Email.test(email_var.val());
        if (ResultofRG1_Email === false) {
            ValidationFailed_Fn(1, "Email must be a valid email!");
        } else {
            ValidationSucceeded_Fn(1);
            a01 = true;
        }
    }

    function telephone_var_Fn() {
        var ResultofRG_Telephone = RG_Telephone.test(telephone_var.val());
        if (ResultofRG_Telephone === false) {
            ValidationFailed_Fn(2, "Telephone is not in the correct standard");
        } else {
            if (telephone_var.val().length < 10) {
                ValidationFailed_Fn(2, "Telephone must have at least 10 character!");
            } else {
                ValidationSucceeded_Fn(2);
                a02 = true;
            }
        }
    }

    function birthday_var_Fn() {
        if (birthday_var.val() === "") {
            ValidationFailed_Fn(3, "Birthday have not character!");
        } else {
            ValidationSucceeded_Fn(3);
            a03 = true;
        }
    }

    // /////////////////////////////////////////////////////////////////////////////////////////////////////
    function password_var_Fn() {
        if (password_var.val().length < 8) {
            ValidationFailed_Fn(4, "Password must have at least 8 character!");
        } else {
            var ResultofRG_Password = RG_Password.test(password_var.val());
            if (ResultofRG_Password === false) {
                ValidationFailed_Fn(4, "Password must include at least a letter and number");
            } else {
                ValidationSucceeded_Fn(4);
                a04 = true;
            }
        }
        if (confirm_password_var.val() !== "") {
            confirm_password_var_Fn();
        }
    }

    function confirm_password_var_Fn() {
        if (password_var.val() === "") {
            ValidationFailed_Fn(4, "Password is null, please enter password!");
            ValidationFailed_Fn(5, "Check the password box, it might be null!");
        } else {
            if (confirm_password_var.val().length < 8) {
                ValidationFailed_Fn(5, "Confirm Password must have at least 8 character!");
            } else {
                displayerrortext_var[5].style.display = "none";
                var ResultofRG_Cnfm_Password = RG_Password.test(confirm_password_var.val());
                if (ResultofRG_Cnfm_Password === false) {
                    ValidationFailed_Fn(5, "Password must include at least a letter and number");
                } else {
                    a05 = true;
                    if (a04 == true && a05 == true) {
                        if (password_var.val() === confirm_password_var.val()) {
                            ValidationSucceeded_Fn(5);
                            CnfmPswd_andPswd = true;
                        } else {
                            ValidationFailed_Fn(5, "Confirm password failed!");
                        }
                    }
                }
            }
        }

    }

    adminid_var.keyup(function () { adminid_var_Fn(); });
    email_var.keyup(function () { email_var_Fn(); });
    telephone_var.keyup(function () { telephone_var_Fn(); });
    birthday_var.change(function () { birthday_var_Fn(); });

    password_var.keyup(function () { password_var_Fn(); });
    confirm_password_var.keyup(function () { confirm_password_var_Fn(); });

    $("#submitbtnp1").click(function () {
        console.log("request submit");

        //for comeback page
        a00 = false; a01 = false; a02 = false; a03 = false;

        adminid_var_Fn(); email_var_Fn();
        telephone_var_Fn(); birthday_var_Fn();
        console.log(
            "Username: " + a00 + "\nEmail : " + a01 +
            "\nTelephone: " + a02 + "\nBirthday: " + a03
        );

        if (a00 === true && a01 === true &&
            a02 === true && a03 === true) {
            console.log("TRUE");
            ValidationSucceededOrFailed = true;

            var dataX = $('#ResetPasswordFormP1').serialize() + '&resetpasswordp1=';
            $.ajax({
                type: 'POST',
                url: 'zP_admin.php',
                data: dataX,
                success: function (response) {
                    if (response == 'false') {
                        alert('Sai thông tin xác minh');
                    }
                    if (response == 'true') {
                        alert('Xác minh thành công');
                        ResetPasswordFormP1_var.hide();
                        ResetPasswordFormP2_var.show();
                        // window.location.href = "/Core/redirectsX.php";
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

        if (a03 === false) { birthday_var.focus(); }
        if (a02 === false) { telephone_var.focus(); }
        if (a01 === false) { email_var.focus(); }
        if (a00 === false) { adminid_var.focus(); }
    });

    $("#submitbtnp2").click(function () {
        console.log("request submit");

        //for comeback page
        a04 = false; a05 = false; CnfmPswd_andPswd = false;

        password_var_Fn(); confirm_password_var_Fn();
        console.log(
            "Password: " + a04 + "\nConfirm_Password: " + a05 + "\nCnfmPswd_andPswd: " + CnfmPswd_andPswd
        );

        if (a04 === true && a05 === true && CnfmPswd_andPswd === true) {
            console.log("TRUE");
            ValidationSucceededOrFailed = true;

            var dataX = $('#ResetPasswordFormP2').serialize() + '&resetpasswordp2=';
            $.ajax({
                type: 'POST',
                url: 'zP_admin.php',
                data: dataX,
                success: function (response) {
                    if (response == 'true') {
                        alert('Đã thay đổi mật khẩu');
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

        if (a05 === false) { confirm_password_var.focus(); }
        if (a04 === false) { password_var.focus(); }
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