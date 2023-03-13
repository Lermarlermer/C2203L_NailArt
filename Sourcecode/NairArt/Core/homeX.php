<?php
    class Categories {
        public function ShowAllPictureInSlide() {
            //Conect to Database
            $options = array(PDO::ATTR_EMULATE_PREPARES => false, PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION);
            $dsn = "mysql:host=" . DatabaseInfo::getServer() . ";dbname=" . DatabaseInfo::getDatabaseName() . ";charset=utf8";
            $conn = new PDO($dsn, DatabaseInfo::getUserName(), DatabaseInfo::getPassword(), $options);
            
            //SQL statement declaration
            $sql = "SELECT * FROM pictureinslide";

            // Prepare statement.
            $stmt = $conn->prepare($sql);

            //Execute sql statement
            $stmt->execute();

            $list = Array();
            while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                $categories = new Categories();
                $categories->PictureInSlideLink = $row["PictureInSlideLink"];            
                array_push($list, $categories);
            }
            // Close the database connection.
            $conn = NULL;
            return $list;
        }
    }
?>

