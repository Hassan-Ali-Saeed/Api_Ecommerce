<?php
include "../connect.php";



$password=sha1($_POST["password"]);
$email=filterRequest("email");


// $stmt=$con->prepare("SELECT *FROM users WHERE users_email=? AND users_password=?");
// $stmt->execute(array($email,$password));
// //$data = $stmt->fetchAll(PDO::FETCH_ASSOC);

// $count=$stmt->rowCount();

// result($count);
getData("users"," users_email=? AND users_password=?",array($email,$password));



?>