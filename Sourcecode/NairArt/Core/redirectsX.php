<?php
    function Page_Redirects($someone){
        if($someone === 'admin'){
            header("Location: /administrators.php");                        
        }
        else {
            header("Location: /home.php");        
        }  
    }        

    if(isset($_COOKIE["username"])) {
        Page_Redirects($_COOKIE["username"]);
    }    
?>