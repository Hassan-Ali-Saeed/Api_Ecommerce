<?php
include "../connect.php";
$email=filterRequest("email");
$verify=rand(10000,99999);
$data=array("users_verify"=>$verify);
updateData("users",$data,"users_email='$email'" );
  //sendEmail($email,"التحقق","verifycode $verify");
?>

