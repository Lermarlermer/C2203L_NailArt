<?php
    class Care {
        public function ShowAllCare() {
            //Conect to Database
            $options = array(PDO::ATTR_EMULATE_PREPARES => false, PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION);
            $dsn = "mysql:host=" . DatabaseInfo::getServer() . ";dbname=" . DatabaseInfo::getDatabaseName() . ";charset=utf8";
            $conn = new PDO($dsn, DatabaseInfo::getUserName(), DatabaseInfo::getPassword(), $options);
            
            //SQL statement declaration
            $sql = "SELECT * FROM Care";

            // Prepare statement.
            $stmt = $conn->prepare($sql);

            //Execute sql statement
            $stmt->execute();

            $list = Array();
            while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                $care = new Care();
                $care->CareID = $row["CareID"];
                $care->CarePictureLink = $row["CarePictureLink"];
                $care->CareTitle = $row["CareTitle"];
                $care->CareDescription = $row["CareDescription"];
                array_push($list, $care);
            }
            // Close the database connection.
            $conn = NULL;
            return $list;
        }

        public function ChooseACare() {
            //Conect to Database
            $options = array(PDO::ATTR_EMULATE_PREPARES => false, PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION);
            $dsn = "mysql:host=" . DatabaseInfo::getServer() . ";dbname=" . DatabaseInfo::getDatabaseName() . ";charset=utf8";
            $conn = new PDO($dsn, DatabaseInfo::getUserName(), DatabaseInfo::getPassword(), $options);
            
            //SQL statement declaration
            $sql = " SELECT *
                    FROM Care
                    WHERE CareID = '". $_SESSION['careid'] ."'";
    
            // Prepare statement.
            $stmt = $conn->prepare($sql);

            //Execute sql statement
            $stmt->execute();

            $list = Array();
            while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                $care = new Care();
                $care->CareID = $row["CareID"];
                $care->CareTitle = $row["CareTitle"];
                $care->CareHtmlLink = $row["CareHtmlLink"];

                array_push($list, $care);
            }
            // Close the database connection.
            $conn = NULL;
            return $list;
        }
        
    }
?>