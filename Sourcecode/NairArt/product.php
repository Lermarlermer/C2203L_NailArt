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
    <title>Nair Art - Product</title>
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
    <link rel="stylesheet" href="./Css/product.css">


</head>

<body>
    <?php
        session_start();
        require_once ('Core/productX.php');
        require_once ('Core/PresetFile/librarySql.php');
    ?>

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
        <a href="#Main">
            <svg id="backtotop" width="24px" height="24px" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M15.5 16.5L12 13L8.5 16.5" stroke="#000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                <path d="M15.5 10.5L12 7L8.5 10.5" stroke="#000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
            </svg>
        </a>
        
        
        <main id="Main">
            <div class="divleft">
                <h3 class="title" id="Axc0">ALL PRODUCT</h3>
                <ul class="listX">
                    <?php
                        $CategoriesVarX = new Categories();
                        $_SESSION['ParentID'] = 0;
                        $MyArrayX = $CategoriesVarX->ShowAllCategories();
                        $stringX = "";
                        for ($i = 0; $i < count($MyArrayX); $i++) {
                            $ObjX = $MyArrayX[$i];

                            $CategoriesVarF1 = new Categories();
                            $_SESSION['ParentID'] = $i +1;
                            $MyArrayF1 = $CategoriesVarF1->ShowAllCategories();
                            $stringF1 = "";
                            for ($u = 0; $u < count($MyArrayF1); $u++) {
                                $ObjF1 = $MyArrayF1[$u];
                                $stringF1 .= '<li class="N'. $i+1 .'" id="Axc'. $i + 1 . $u + 1 .'">' . $ObjF1->CategoriesName . '</li>';
                            }


                            $stringX .= '
                                <li>
                                    <p class="F0" id="Axc'. $i + 1 .'">' . $ObjX -> CategoriesName .'</p>
                                    <div class="extend">
                                        <svg xmlns="http://www.w3.org/2000/svg"   viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-down"><polyline points="6 9 12 15 18 9"></polyline></svg>
                                    </div>
                                    <ul class="CategoriesF1">'. $stringF1 . '</ul>
                                </li>
                            ';
                        }
                        echo $stringX;                        
                    ?>
                </ul>
            </div>
            <div class="divright">  
                <div class ="lnkgrp">
                    <a href="./home.php">Home</a> » <a href="./product.php">Product</a>
                </div>               
                <div class="maincontent">
                    

                
                </div>    
            </div>   
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
    <script src="./Js/product.js"></script>
</body>

</html>