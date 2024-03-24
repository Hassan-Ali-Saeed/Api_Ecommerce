 <?php
 
 $servername = "localhost";
$username = 'root';
$password = '';

// $dsn = "mysql:host=localhost;dbname=hasan";
// $user = "root";
// $pass = "";
$option = array(
   PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES UTF8"
);
$countrowinpage = 9;
try {
   $con = new PDO("mysql:host=$servername;dbname=saeed", $username, $password);
  // $conn = new PDO("mysql:host=$servername;dbname=myDB", $username, $password);
  // $con = new PDO($dsn, $user, $pass, $option);
   $con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
   header("Access-Control-Allow-Origin: *");
   header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With, Access-Control-Allow-Origin");
   header("Access-Control-Allow-Methods: POST, OPTIONS , GET");
   include "functions.php";
   if (!isset($notAuth)) {
      // checkAuthenticate();
   }
} catch (PDOException $e) {
   echo $e->getMessage();
}  


