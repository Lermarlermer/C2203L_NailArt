var swiper = new Swiper(".mySwiper", {
    navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
    },
    pagination: {
        el: ".swiper-pagination",
    },
    autoplay: {
        delay: 2500,
        disableOnInteraction: false,
    },
});
$(document).ready(function () {
    $.ajax({
        type: 'POST',
        url: 'index2.php',
        data: {
            X0: 0,
            X1: 0,
        },
        success: function (response) {
            $(".course-cntnr").html(response);
        }
    });
})