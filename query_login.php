<?php 

    if($_SERVER["REQUEST_METHOD"] == "POST")
    {
    $username = $_POST['username'];
    $password = $_POST['password'];

    $servername = "localhost";
    $dbusername = "root";
    $dbpassword = "";
    $dbname = "login_db";

    // Create connection
    $conn = new mysqli($servername, $dbusername, $dbpassword, $dbname);
    
    // Check connection
    if ($conn->connect_error) {
      die("Connection failed: " . $conn->connect_error);
    }
    else{
       echo("Successful");
    }

    
    $query = "SELECT *FROM login WHERE username='$username' AND password = '$password'";
    

    $result = $conn->query($query);
     

    if($result->num_rows == 1){
        header("Location:index.php");
    }
    else{
        echo("Login Failed");
    }
    }
    ?>