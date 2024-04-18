<?php
include "../connect.php";



$password=sha1($_POST["password"]);
$email=filterRequest("email");


$stmt=$con->prepare("SELECT *FROM users WHERE users_email=? OR users_password=?");
$stmt->execute(array($email,$password));
$count=$stmt->rowCount();
if($count>0){
    printFailure("email or phone ");
}else
{
$data=array(
"users_name" =>$username,
"users_email" => $email,
"users_phone" => $phone,
"users_password"=>$password,
"users_verify" => $verifycode, 

 );

 //sendEmail($email,"التحقق","verifycode $verifycode");
 insertData($table,$data);

}




// $data = array( 
//     "users_name" => "hasan",
//     "users_email" => "hasan@gmail.com",
//     "users_phone" => "324234",
//     "users_verify" => "3243243",       
//     );
//sendEmail($email,"رمز التحقق","verfiy cod email:$verifycode");