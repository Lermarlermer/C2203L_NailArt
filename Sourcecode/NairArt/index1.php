<?php
    require_once ('Core/productX.php');
    require_once ('Core/PresetFile/librarySql.php');

    $stringX = "";

    if(isset($_POST['F0'])){
        for($i = 0; $i <= 5; $i++) {
            if($_POST['F0'] ===  "" . $i .""){               
                $_SESSION['F0'] = $i;           
            }
            for($u = 0; $u <= 10; $u++) {
                if($_POST['F1'] ===  "" . $u .""){               
                    $_SESSION['F1'] = $u;           
                }
            }
        }        
        
        
        $Product = new Product();
        $MyArrayX = $Product->ShowAllProduct();

        $NmbrOfDspl = 12;
        $NmbrOfPage = count($MyArrayX) / $NmbrOfDspl;

        $starting_point = ($_POST['NfP'] - 1) * $NmbrOfDspl;
        if((count($MyArrayX) - $starting_point) < $NmbrOfDspl) {
            $ending_point = count($MyArrayX);
        } else {
            $ending_point = $starting_point + $NmbrOfDspl;
        }
        
        $stringX .= '
            <div class="divMC_T contentbreak">';
        for ($i = $starting_point; $i < $ending_point; $i++){
            $ObjX = $MyArrayX[$i];
            $stringX .='
                <a class="item" href="./product-detail.php?productid='. $ObjX->ProductID . '">
                    <img src="'. $ObjX->ProductPictureLink.'">
                    <p>'. $ObjX->ProductName.'</p>
                </a>
            ';
        } 
        if(isset($_POST['type'])) {

        } else {
            $stringX .='
                </div>
                <div class="divMC_B contentbreak">
                    <div class="grpNofP">
                ';
            for ($i = 1; $i < $NmbrOfPage + 1 ; $i++) {
                $stringX .='
                        <button class="NfP">'. $i .'</button>
                ';
            }     
            $stringX .='
                    </div>
                </div>
            ';          
        }
          
    }
    echo $stringX;  
?>