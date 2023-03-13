$(document).ready(function () {
    var a01 = document.querySelectorAll(".extend");
    var a02 = document.querySelectorAll(".extend svg");
    var a03 = document.querySelectorAll(".CategoriesF1");
    var s00;
    function asd(x) {
        a03[x].style.height = "auto";
        var Xs = a03[x].offsetHeight + "px";
        a03[x].style.height = 0;

        a01[x].addEventListener("click", function () {
            if (a03[x].style.height === Xs) {
                a02[x].style.transform = "rotate(0deg)";
                a03[x].style.height = 0;
            } else {
                if (s00 !== undefined) {
                    a03[s00].style.height = 0;
                    a02[s00].style.transform = "rotate(0deg)";
                }
                a02[x].style.transform = "rotate(-180deg)";
                a03[x].style.height = Xs;
                s00 = x;
            }
        })
    }
    for (i = 0; i < a01.length; i++) { asd(i); }

    var oldid = "#Axc0";
    var prtid = null;
    stl_rmv = { "color": "#777777", "font-weight": "normal" };
    stl_add = { "color": "#333333", "font-weight": "bold" };
    var NfP_var, ax, bx, cx;


    function selectNfP(F0, F1, NfP) {
        NfP_var[NfP].addEventListener("click", function () {
            $.ajax({
                type: 'POST',
                url: 'index1.php',
                data: {
                    F0: F0,
                    F1: F1,
                    NfP: NfP + 1,
                    type: ""
                },
                success: function (response) {
                    $(".divMC_T").html(response);
                }
            });
        });
    }




    function selectproducttype(id, F0, F1, NfP) {

        $(id).click(function () {
            ax = F0;
            bx = F1;
            if (oldid !== '#Axc0') {
                $(oldid).css(stl_rmv);
                $(prtid).css(stl_rmv);
            }
            if (id.length === 6) {
                prtid = id.substr(0, 5)
                $(prtid).css(stl_add)
            }
            if (id === '#Axc0') {
                $(id).css({ "color": "#C882B5", "font-weight": "bold" });
            } else {
                $(id).css(stl_add);
            }

            oldid = id;
            $.ajax({
                type: 'POST',
                url: 'index1.php',
                data: {
                    F0: F0,
                    F1: F1,
                    NfP: NfP
                },
                success: function (response) {
                    $(".maincontent").html(response);
                    NfP_var = document.querySelectorAll(".NfP");
                    for (var ii = 0; ii < NfP_var.length; ii++) {
                        selectNfP(ax, bx, ii);
                    }
                }
            });

        })
    }





    var as1 = document.querySelectorAll(".F0");
    for (var i = 0; i <= as1.length; i++) {
        selectproducttype("#Axc" + i, i, 0, 1);
        if (i !== 0) {
            var as2 = document.querySelectorAll(".N" + i);
            for (var u = 1; u <= as2.length; u++) {
                selectproducttype("#Axc" + i + '' + u, i, u, 1);
            }
        }
    }

    $.ajax({
        type: 'POST',
        url: 'index1.php',
        data: {
            F0: 0,
            F1: 0,
            NfP: 1
        },
        success: function (response) {
            $(".maincontent").html(response);
            NfP_var = document.querySelectorAll(".NfP");
            ax = 0;
            bx = 0;

            for (var iis = 0; iis < NfP_var.length; iis++) {
                selectNfP(ax, bx, iis);
            }
        }
    });
})  