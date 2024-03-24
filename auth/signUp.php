<?php
include "../connect.php";

$table = "users";
$usersname=filterRequest("usersname");
$password=sha1("password");
$email=filterRequest("email");
$phone=filterRequest("phone");
$verifycode=rand(10000,99999);

$stmt=$con->prepare("SELECT *FROM users WHERE users_email=? OR users_phone=?");
$stmt->execute(array($email,$phone));
$count=$stmt->rowCount();
if($count>0){
    printFailure("email or phone ");
}else
{
$data=array(
"users_name" =>$usersname,
"users_email" => $email,
"users_phone" => $phone,
"users_password"=>$password,
"users_verify" => $verifycode, 

 );
// $data = array( 
//     "users_name" => "hasan",
//     "users_email" => "hasan@gmail.com",
//     "users_phone" => "324234",
//     "users_verify" => "3243243",       
//     );
//sendEmail($email,"رمز التحقق","verfiy cod email:$verifycode");
 insertData($table,$data);

}

