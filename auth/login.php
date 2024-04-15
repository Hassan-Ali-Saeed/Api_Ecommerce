
<?php
// use LDAP\Result;

include "../connect.php";
$table = "users";

$password=sha1($_POST['password']);
$email=filterRequest("email");



// $stmt=$con->prepare("SELECT * FROM users WHERE users_email =? AND users_password=? AND users_aprove=1");
// $stmt->execute(array($email,$password));
// $count=$stmt->rowCount();
// return $count;


getData($table,"users_email=? AND users_password=? AND users_aprove=1 ",
array($email,$password));

