<?php

include "../connect.php";

$email=filterRequest("email");
$verify=filterRequest("verefycode");


$stmt=$con->prepare("SELECT * FROM users WHERE users_email='$email' AND  users_verify='$verify'");
$stmt->execute();


$count =$stmt->rowCount();

result($count);





?>