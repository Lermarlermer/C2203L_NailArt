<?php
    class Admin{    
        public function ShowAllUsers(){
            //Conect to Database
            $options = array(PDO::ATTR_EMULATE_PREPARES => false, PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION);
            $dsn = "mysql:host=" . DatabaseInfo::getServer() . ";dbname=" . DatabaseInfo::getDatabaseName() . ";charset=utf8";
            $conn = new PDO($dsn, DatabaseInfo::getUserName(), DatabaseInfo::getPassword(), $options);
                
            //SQL statement declaration
            $sql = "SELECT * FROM `UserInfo`";
            
            // Prepare statement.
            $stmt = $conn->prepare($sql);           
        
            //Execute sql statement
            $stmt->execute();
        
            $list = Array();
            while($row = $stmt->fetch(PDO::FETCH_ASSOC)){
                $user = new User();
                $user -> FirstName = $row["FirstName"];
                $user -> MiddleName = $row["MiddleName"];
                $user -> LastName = $row["LastName"];
                $user -> UserName = $row["UserName"];
                $user -> Password = $row["Password"];
                $user -> Email = $row["Email"];
                $user -> Telephone = $row["Telephone"];
                $user -> BirthDay = $row["BirthDay"];
                $user -> Sex = $row["Sex"];
                $user -> Country = $row["Country"];
                
                array_push($list, $user);
            }            
                
            // Close the database connection.
            $conn = NULL;
            return $list;
        } 
        
        public function Login(){
            //Conect to Database
            $options = array(PDO::ATTR_EMULATE_PREPARES => false, PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION);
            $dsn = "mysql:host=" . DatabaseInfo::getServer() . ";dbname=" . DatabaseInfo::getDatabaseName() . ";charset=utf8";
            $conn = new PDO($dsn, DatabaseInfo::getUserName(), DatabaseInfo::getPassword(), $options);
                
            //SQL statement declaration
            $sql = "SELECT * FROM `admininfo` WHERE adminid=:adminid AND password=:password";
            
            // Prepare statement.
            $stmt = $conn->prepare($sql);           
        
            //Execute sql statement
            $stmt->execute(array(
                ":adminid" => $this->AdminID,
                ":password" => $this->Password
            ));
        
            $list = Array();
            while($row = $stmt->fetch(PDO::FETCH_ASSOC)){
                $admin = new Admin();
                $admin -> AdminID = $row["adminid"];
                $admin -> Password = $row["password"];                
                array_push($list, $admin);
            }            
                
            // Close the database connection.
            $conn = NULL;
            return $list;
        } 
        
        public function CheckToAdd(){
            //Conect to Database
            $options = array(PDO::ATTR_EMULATE_PREPARES => false, PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION);
            $dsn = "mysql:host=" . DatabaseInfo::getServer() . ";dbname=" . DatabaseInfo::getDatabaseName() . ";charset=utf8";
            $conn = new PDO($dsn, DatabaseInfo::getUserName(), DatabaseInfo::getPassword(), $options);
             
            //SQL statement declaration
            $sql = "SELECT * FROM `admininfo` WHERE adminid=:adminid OR email=:email OR telephone=:telephone";
            
            // Prepare statement.
            $stmt = $conn->prepare($sql);           
        
            //Execute sql statement
            $stmt->execute(array(
                ":adminid" => $this->AdminID,
                ":email" => $this->Email,
                ":telephone" => $this->Telephone
            ));
        
            $list = Array();
            while($row = $stmt->fetch(PDO::FETCH_ASSOC)){
                $admin = new Admin();
                $admin -> AdminID = $row["adminid"]; 
                $admin -> Email = $row["email"]; 
                $admin -> Telephone = $row["telephone"];           
                array_push($list, $admin);
            }            
                
            // Close the database connection.
            $conn = NULL;
            return $list;            
        }        

        public function CheckToReset(){
            //Conect to Database
            $options = array(PDO::ATTR_EMULATE_PREPARES => false, PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION);
            $dsn = "mysql:host=" . DatabaseInfo::getServer() . ";dbname=" . DatabaseInfo::getDatabaseName() . ";charset=utf8";
            $conn = new PDO($dsn, DatabaseInfo::getUserName(), DatabaseInfo::getPassword(), $options);
             
            //SQL statement declaration
            $sql = "SELECT * FROM `admininfo` WHERE adminid=:adminid AND email=:email AND telephone=:telephone AND birthday=:birthday";
            
            // Prepare statement.
            $stmt = $conn->prepare($sql);           
        
            //Execute sql statement
            $stmt->execute(array(
                ":adminid" => $this->AdminID,
                ":email" => $this->Email,
                ":telephone" => $this->Telephone,
                ":birthday" => $this->Birthday
            ));
        
            $list = Array();
            while($row = $stmt->fetch(PDO::FETCH_ASSOC)){
                $admin = new Admin();
                $admin -> AdminID = $row["adminid"]; 
                $admin -> Email = $row["email"]; 
                $admin -> Telephone = $row["telephone"];           
                array_push($list, $admin);
            }            
                
            // Close the database connection.
            $conn = NULL;
            return $list;            
        }        
        
        public function Register(){
            //Conect to Database
            $options = array(PDO::ATTR_EMULATE_PREPARES => false, PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION);
            $dsn = "mysql:host=" . DatabaseInfo::getServer() . ";dbname=" . DatabaseInfo::getDatabaseName() . ";charset=utf8";
            $conn = new PDO($dsn, DatabaseInfo::getUserName(), DatabaseInfo::getPassword(), $options);

            //SQL statement declaration
            $sql =  "INSERT INTO `UserInfo`(
                        `FirstName`,
                        `MiddleName`,
                        `LastName`,
                        `UserName`,
                        `Password`,
                        `Email`,
                        `Telephone`,
                        `BirthDay`,
                        `Sex`,
                        `Country`                        
                    )
                    VALUES(                        
                        :FirstName,
                        :MiddleName,
                        :LastName,
                        :UserName,
                        :Password,
                        :Email,
                        :Telephone,
                        :BirthDay,
                        :Sex,
                        :Country                           
                    );";
            // Prepare statement.
            $stmt = $conn->prepare($sql);
                
            //Execute sql statement
            $stmt->execute(array(
                ":FirstName" => $this-> FirstName,
                ":MiddleName" => $this->MiddleName,
                ":LastName" => $this->LastName,
                ":UserName" => $this->UserName,
                ":Password" => $this->Password,
                ":Email" => $this->Email,
                ":Telephone" => $this->Telephone,
                ":BirthDay" => $this->BirthDay,
                ":Sex" => $this->Sex,
                ":Country" => $this->Country)
                );
                  
            // Close the database connection.
            $conn = NULL;
        } 

        public function ResetP(){
            //Conect to Database
            $options = array(PDO::ATTR_EMULATE_PREPARES => false, PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION);
            $dsn = "mysql:host=" . DatabaseInfo::getServer() . ";dbname=" . DatabaseInfo::getDatabaseName() . ";charset=utf8";
            $conn = new PDO($dsn, DatabaseInfo::getUserName(), DatabaseInfo::getPassword(), $options);

            //SQL statement declaration
            $sql = "UPDATE `UserInfo` 
                    SET `Password`=:Password
                    WHERE `UserName`=:UserName";

            // Prepare statement.
            $stmt = $conn->prepare($sql);
                
            //Execute sql statement
            $stmt->execute(array(
                ":UserName" => $this->UserName,
                ":Password" => $this->Password
            ));
    
            // Close the database connection.

            $conn = NULL;
        }
        
        public function DeleteUsers(){
            //Conect to Database
            $options = array(PDO::ATTR_EMULATE_PREPARES => false, PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION);
            $dsn = "mysql:host=" . DatabaseInfo::getServer() . ";dbname=" . DatabaseInfo::getDatabaseName() . ";charset=utf8";
            $conn = new PDO($dsn, DatabaseInfo::getUserName(), DatabaseInfo::getPassword(), $options);

            // SQL statement declaration
            $sql = "DELETE FROM `UserInfo`
                    WHERE `username`=:username";
            // Prepare statement.
            $stmt = $conn->prepare($sql);
                
            //Execute sql statement
            $stmt->execute(array(
                ":username" => $this->username
            ));
    
            // Close the database connection.

            $conn = NULL;

        }
    }       
?>