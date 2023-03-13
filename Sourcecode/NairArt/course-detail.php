<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- //////////////////////////////////////////////////////////////////////////////////////////////////// -->
    <meta http-equiv="REFRESH" content="1800" />
    <meta name="keywords" content="VnExpress, tin tức, tin the gioi, tin nhanh, tin tuc viet nam, doc bao" />
    <meta name="news_keywords" content="VnExpress, tin tức, tin the gioi, tin nhanh, tin tuc viet nam, doc bao" />
    <meta name="copyright" content="VnExpress" />
    <meta name="author" content="VnExpress" />
    <meta name="robots" content="index,follow" />
    <!-- //////////////////////////////////////////////////////////////////////////////////////////////////// -->
    <link rel="shortcut icon" type="image/png" href="./PngWebIcon/web-ico.png" sizes="16x16">
    <!-- //////////////////////////////////////////////////////////////////////////////////////////////////// -->
    <title>
        <?php
            session_start();
            require_once 'Core/courseX.php';
            require_once 'Core/PresetFile/librarySql.php';

            if (isset($_GET['courseid'])) {
                $_SESSION['courseid'] = $_GET['courseid'];
            }
            $Course = new Course();
            $MyArrayW = $Course->ChooseACourse();
            $stringW = "";
            $ObjW = $MyArrayW[0];
            $stringW .= $ObjW->CourseName;
            echo $stringW;
        ?>
    </title>
    <!-- //////////////////////////////////////////////////////////////////////////////////////////////////// -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300&display=swap">

    <!-- //////////////////////////////////////////////////////////////////////////////////////////////////// -->

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="./Css/swiper-bundle.min.css" />

    <link rel="stylesheet" href="./Css/resetcss.css">
    <link rel="stylesheet" href="./Css/main.css">
    <link rel="stylesheet" href="./Css/course-detail.css">


</head>

<body>
    <div class="wrapper">
        <header id="Header">
            <div id="Header-Logo">
                <a href="./home.php">
                    <img src="./PngWebIcon/web-ico.png" alt="logo">
                </a>
            </div>

            <ul id="Header-MenuList">
                <a href="./home.php"><li class="Header-MenuList-Item">HOME</li></a>    

                <a href="./course.php"><li class="Header-MenuList-Item">COURSE</li></a>

                <a href="./product.php"><li class="Header-MenuList-Item">PRODUCT</li></a>

                <a href="./care.php"><li class="Header-MenuList-Item">CARE</li></a>

                <a href="./about-us.php"><li class="Header-MenuList-Item">ABOUT US</li></a>

                <a href="./contact.php"><li class="Header-MenuList-Item">CONTACT</li></a>
            </ul>
        </header>
        
        <main id="Main">
            
            <?php
                $Course = new Course();
                $MyArrayX = $Course->ChooseACourse();
                $stringX = "";
                $ObjX = $MyArrayX[0];
                $stringX .= '  

                    <div class="course-ctnr">
                        
                    </div>

                    <div class="course-ctnr">
                        <div class="xxc1 contentbreak">                        
                            <div class="course-info contentbreak">
                                <p class="course-name">'. $ObjX->CourseName . '</p>
                                <p class="author-name">'. $ObjX->Author . '</p>
                                <p class="more-info">'. $ObjX->MoreInfo . '</p>
                                <p class="course-time">'. $ObjX->CourseDuration . '</p>
                            </div>
                            <div class="coursr-img">
                                <img src="'. $ObjX->CoursePictureLink . '" alt="">
                            </div>
                        </div>
                        <div class="xxc2">
                            <p class="az1">What does this course offer?</p>
                            <p class="ax2">'. $ObjX->AfterCourse_WhatDoes . '</p>
                            <p class="az3">Click to download pdf file</p>
                            <a href="'. $ObjX->DocumentPdfLinkFile . '" download>
                                Download document here
                            </a>
                        </div>
                    </div>               
                ';
                echo $stringX;
            ?>
                
        </main>

        <footer class="footer-48201">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-md-8 col-sm-12 col-12">
                        <a href="#" class="footer-site-logo d-block mb-4">Nail Art</a>
                        <p>Nail art is a creative way to paint, decorate, enhance, and embellish nails. It is a type of artwork that can be done on fingernails and toenails, usually after manicures or pedicures. Manicures and pedicures are beauty treatments that trim, shape, and polish the nails.</p>
                    </div>
                    <div class="col-lg-2 col-md-2 col-sm-6 col-6">
                        <ul class="list-unstyled nav-links">
                            <li><a href="./home.php">Home</a></li>
                            <li><a href="./course.php">Course</a></li>
                            <li><a href="./product.php">Product</a></li>
                            <li><a href="./care.php">Care</a></li>
                            <li><a href="./aboutus.php">About us</a></li>
                        </ul>
                    </div>
                    <div class="col-lg-2 col-md-2 col-sm-6 col-6">
                        <p class=""><a href="./contact.php" class="btn btn-tertiary">Contact Us</a></p>
                    </div>
                </div>
                <div class="row ">
                    <div class="col-12 text-center">
                        <div class="copyright mt-5 pt-5">
                            <p><small>© 2019-2020 All Rights Reserved.</small></p>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
    </div>
    <script src="./Js/jquery.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
    <?php
        session_unset(); 
        session_destroy();
    ?>
</body>

</html>