<?php

include "../connect.php";

$email=filterRequest("email");
$verify=filterRequest("verefycode");


$stmt=$con->prepare("SELECT * FROM users WHERE users_email='$email' AND  users_verify='$verify'");
$stmt->execute();


$count =$stmt->rowCount();
if ($count>0){
    $data=array("users_approve"=>"1");
    updateData("users",$data,"users_email='$email'");

  

}
else
{
    printFailure("رمز التحقق خاطئ");
}






?>