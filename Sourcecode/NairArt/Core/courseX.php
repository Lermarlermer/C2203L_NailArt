<?php
    class Course {
        public function ShowAllCourse() {
            //Conect to Database
            $options = array(PDO::ATTR_EMULATE_PREPARES => false, PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION);
            $dsn = "mysql:host=" . DatabaseInfo::getServer() . ";dbname=" . DatabaseInfo::getDatabaseName() . ";charset=utf8";
            $conn = new PDO($dsn, DatabaseInfo::getUserName(), DatabaseInfo::getPassword(), $options);
            
            //SQL statement declaration
            if($_SESSION['X0'] === 0){
                $sql = "SELECT * FROM Course";                           
            } elseif($_SESSION['X0'] !== 0) {
                $sql = "SELECT * FROM Course WHERE F0 = '". $_SESSION['X0'] ."'";
            }
            // Prepare statement.
            $stmt = $conn->prepare($sql);

            //Execute sql statement
            $stmt->execute();

            $list = Array();
            while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                $product = new Course();
                $product->CourseID = $row["CourseID"];
                $product->CourseName = $row["CourseName"];
                $product->CoursePictureLink = $row["CoursePictureLink"];
                

                $product->Author = $row["Author"];
                $product->MoreInfo = $row["MoreInfo"];
                $product->CourseDuration = $row["CourseDuration"];


                $product->F0 = $row["F0"];

                array_push($list, $product);
            }
            // Close the database connection.
            $conn = NULL;
            return $list;
        }

        public function ChooseACourse() {
            //Conect to Database
            $options = array(PDO::ATTR_EMULATE_PREPARES => false, PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION);
            $dsn = "mysql:host=" . DatabaseInfo::getServer() . ";dbname=" . DatabaseInfo::getDatabaseName() . ";charset=utf8";
            $conn = new PDO($dsn, DatabaseInfo::getUserName(), DatabaseInfo::getPassword(), $options);
            
            //SQL statement declaration
            $sql = " SELECT 
                        c.CourseID,
                        c.CourseName,
                        c.CoursePictureLink,
                        c.Author,
                        c.MoreInfo,
                        c.CourseDuration,
                        c.AfterCourse_WhatDoes,                        
                        c.DocumentPdfLinkFile,
                        c0.CategoriesName
                    FROM course c
                    INNER JOIN categories_c c0 ON  c.F0 = c0.ID
                    WHERE c.CourseID = '". $_SESSION['courseid'] ."'";
    
            // Prepare statement.
            $stmt = $conn->prepare($sql);

            //Execute sql statement
            $stmt->execute();

            $list = Array();
            while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                $course = new Course();
                $course->CourseID = $row["CourseID"];
                $course->CourseName = $row["CourseName"];
                $course->CoursePictureLink = $row["CoursePictureLink"];
                $course->Author = $row["Author"];
                $course->MoreInfo = $row["MoreInfo"];
                $course->CourseDuration = $row["CourseDuration"];
                $course->AfterCourse_WhatDoes = $row["AfterCourse_WhatDoes"];
                $course->CategoriesName = $row["CategoriesName"];
                $course->DocumentPdfLinkFile = $row["DocumentPdfLinkFile"];


                array_push($list, $course);
            }
            // Close the database connection.
            $conn = NULL;
            return $list;
        }
        
    }
    class CategoriesOfCourse{
        public function ShowAllCategories() {
            //Conect to Database
            $options = array(PDO::ATTR_EMULATE_PREPARES => false, PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION);
            $dsn = "mysql:host=" . DatabaseInfo::getServer() . ";dbname=" . DatabaseInfo::getDatabaseName() . ";charset=utf8";
            $conn = new PDO($dsn, DatabaseInfo::getUserName(), DatabaseInfo::getPassword(), $options);
            
            //SQL statement declaration
            $sql = "SELECT * FROM Categories_c WHERE ParentID = '".$_SESSION['ParentID'] ."'";

            // Prepare statement.
            $stmt = $conn->prepare($sql);

            //Execute sql statement
            $stmt->execute();

            $list = Array();
            while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                $categories = new CategoriesOfCourse();
                $categories -> CategoriesName = $row["CategoriesName"];
                array_push($list, $categories);
            }
            // Close the database connection.
            $conn = NULL;
            return $list;
        }
    }
?>