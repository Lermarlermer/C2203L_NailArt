<?php
    class Feedback{    
        public function ShowAllFeedback(){
            //Conect to Database
            $options = array(PDO::ATTR_EMULATE_PREPARES => false, PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION);
            $dsn = "mysql:host=" . DatabaseInfo::getServer() . ";dbname=" . DatabaseInfo::getDatabaseName() . ";charset=utf8";
            $conn = new PDO($dsn, DatabaseInfo::getUserName(), DatabaseInfo::getPassword(), $options);
                
            //SQL statement declaration
            $sql = "SELECT * FROM `Feedback`";
            
            // Prepare statement.
            $stmt = $conn->prepare($sql);           
        
            //Execute sql statement
            $stmt->execute();
        
            $list = Array();
            while($row = $stmt->fetch(PDO::FETCH_ASSOC)){
                $feedback = new Feedback();
                $feedback -> Name = $row["Name"];
                $feedback -> Email = $row["Email"];
                $feedback -> Subject = $row["Subject"];
                $feedback -> Message = $row["Message"];
                
                array_push($list, $feedback);
            }            
                
            // Close the database connection.
            $conn = NULL;
            return $list;
        } 
        
        
        public function AddNewFeedback(){
            //Conect to Database
            $options = array(PDO::ATTR_EMULATE_PREPARES => false, PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION);
            $dsn = "mysql:host=" . DatabaseInfo::getServer() . ";dbname=" . DatabaseInfo::getDatabaseName() . ";charset=utf8";
            $conn = new PDO($dsn, DatabaseInfo::getUserName(), DatabaseInfo::getPassword(), $options);

            //SQL statement declaration
            $sql =  "INSERT INTO `Feedback`(
                        `Name`,
                        `Email`,
                        `Subject`,
                        `Message`                      
                    )
                    VALUES(                        
                        :Name,
                        :Email,
                        :Subject,
                        :Message                     
                    );";
            // Prepare statement.
            $stmt = $conn->prepare($sql);
                
            //Execute sql statement
            $stmt->execute(array(
                ":Name" => $this-> Name,
                ":Email" => $this->Email,
                ":Subject" => $this->Subject,
                ":Message" => $this->Message)
                );
                  
            // Close the database connection.
            $conn = NULL;
        } 
        
    }       
?>