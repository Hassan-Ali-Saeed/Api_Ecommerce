<?php
include "../connect.php";

$table = "users";
$username=filterRequest("username");
$password=sha1($_POST["password"]);
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