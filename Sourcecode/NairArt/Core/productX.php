<?php
    class Product {
        public function ShowAllProduct() {
            //Conect to Database
            $options = array(PDO::ATTR_EMULATE_PREPARES => false, PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION);
            $dsn = "mysql:host=" . DatabaseInfo::getServer() . ";dbname=" . DatabaseInfo::getDatabaseName() . ";charset=utf8";
            $conn = new PDO($dsn, DatabaseInfo::getUserName(), DatabaseInfo::getPassword(), $options);
            
            //SQL statement declaration
            if($_SESSION['F0'] === 0){
                $sql = "SELECT * FROM Product";                           
            } elseif($_SESSION['F0'] !== 0 && $_SESSION['F1'] === 0) {
                $sql = "SELECT * FROM Product WHERE F0 = '". $_SESSION['F0'] ."'";
            } elseif($_SESSION['F0'] !== 0 && $_SESSION['F1'] !== 0) {
                $sql = "SELECT * FROM Product WHERE F0 = '". $_SESSION['F0'] ."' AND F1 = '" . $_SESSION['F1'] ."'"; 
            }

            // Prepare statement.
            $stmt = $conn->prepare($sql);

            //Execute sql statement
            $stmt->execute();

            $list = Array();
            while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                $product = new Product();
                $product->ProductID = $row["ProductID"];
                $product->ProductName = $row["ProductName"];
                $product->ProductPictureLink = $row["ProductPictureLink"];
                $product->F0 = $row["F0"];
                $product->F1 = $row["F1"];

                array_push($list, $product);
            }
            // Close the database connection.
            $conn = NULL;
            return $list;
        }

        public function ChooseAProduct() {
            //Conect to Database
            $options = array(PDO::ATTR_EMULATE_PREPARES => false, PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION);
            $dsn = "mysql:host=" . DatabaseInfo::getServer() . ";dbname=" . DatabaseInfo::getDatabaseName() . ";charset=utf8";
            $conn = new PDO($dsn, DatabaseInfo::getUserName(), DatabaseInfo::getPassword(), $options);
            
            //SQL statement declaration
            // $sql = "SELECT * FROM Product WHERE ProductID = '". $_SESSION['productid'] ."'";  
            $sql = "SELECT 
                        p.ProductID,
                        p.ProductName,
                        p.ProductPictureLink,
                        p.ProductTextDetail,
                        p.ProductTextMoreInfo,
                        c1.CategoriesName AS CategoriesF1,    
                        c0.CategoriesName AS CategoriesF0
                    FROM product p
                    INNER JOIN categories_p c1 
                        ON  p.F0 = c1.ParentID 
                        AND p.F1 = c1.OrderID
                    INNER JOIN categories_p c0 ON p.F0 = c0.ID
                    WHERE p.ProductID = '". $_SESSION['productid'] ."'";
            // Prepare statement.
            $stmt = $conn->prepare($sql);

            //Execute sql statement
            $stmt->execute();

            $list = Array();
            while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                $product = new Product();
                $product->ProductID = $row["ProductID"];
                $product->ProductName = $row["ProductName"];
                $product->ProductPictureLink = $row["ProductPictureLink"];
                $product->ProductTextDetail = $row["ProductTextDetail"];
                $product->ProductTextMoreInfo = $row["ProductTextMoreInfo"];
                $product->CategoriesF1 = $row["CategoriesF1"];
                $product->CategoriesF0 = $row["CategoriesF0"];

                array_push($list, $product);
            }
            // Close the database connection.
            $conn = NULL;
            return $list;
        }
    }
    class Categories{
        public function ShowAllCategories() {
            //Conect to Database
            $options = array(PDO::ATTR_EMULATE_PREPARES => false, PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION);
            $dsn = "mysql:host=" . DatabaseInfo::getServer() . ";dbname=" . DatabaseInfo::getDatabaseName() . ";charset=utf8";
            $conn = new PDO($dsn, DatabaseInfo::getUserName(), DatabaseInfo::getPassword(), $options);
            
            //SQL statement declaration
            $sql = "SELECT * FROM Categories_p WHERE ParentID = '".$_SESSION['ParentID'] ."'";

            // Prepare statement.
            $stmt = $conn->prepare($sql);

            //Execute sql statement
            $stmt->execute();

            $list = Array();
            while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                $categories = new Categories();
                $categories -> CategoriesName = $row["CategoriesName"];
                array_push($list, $categories);
            }
            // Close the database connection.
            $conn = NULL;
            return $list;
        }
    }
?>