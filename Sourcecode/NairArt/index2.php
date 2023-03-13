<?php
    require_once ('Core/courseX.php');
    require_once ('Core/PresetFile/librarySql.php');

    $stringX = "";

    if(isset($_POST['X0'])){
        for($i = 0; $i <= 5; $i++) {
            if($_POST['X0'] ===  "" . $i .""){               
                $_SESSION['X0'] = $i;           
            }
        }        
        $Product = new Course();
        $MyArrayX = $Product->ShowAllCourse();
        
        for ($i = 0; $i < count($MyArrayX); $i++){
            $ObjX = $MyArrayX[$i];
            $stringX .='
                <a class="item" href="./course-detail.php?courseid='. $ObjX->CourseID . '">
                    <div class="course-ctnr">
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
                </a>
            ';
        } 
    }
    echo $stringX;  
?>