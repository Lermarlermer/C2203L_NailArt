$(document).ready(function () {
    var oldid = "#Axc0";
    stl_rmv = { "color": "#777777", "font-weight": "normal" };
    stl_add = { "color": "#333333", "font-weight": "bold" };

    function selectcoursetype(id, X0) {

        $(id).click(function () {
            if (oldid !== '#Axc0') {
                $(oldid).css(stl_rmv);
            }
            if (id === '#Axc0') {
                $(id).css({ "color": "#C882B5", "font-weight": "bold" });
            } else {
                $(id).css(stl_add);
            }

            oldid = id;
            $.ajax({
                type: 'POST',
                url: 'index2.php',
                data: {
                    X0: X0
                },
                success: function (response) {
                    $(".maincontent").html(response);
                }
            });

        })
    }





    var as1 = document.querySelectorAll(".X0");
    for (var i = 0; i <= as1.length; i++) {
        selectcoursetype("#Axc" + i, i);
    }

    $.ajax({
        type: 'POST',
        url: 'index2.php',
        data: {
            X0: 0,
            X1: 0,
        },
        success: function (response) {
            $(".maincontent").html(response);
        }
    });
})  