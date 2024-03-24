<?php 

include './connect.php';
// $table = "users";
// // $name = filterRequest("namerequest");
// $data = array( 
// "users_name" => "hasan",
// "users_email" => "hasan@gmail.com",
// "users_phone" => "324234",
// "users_verify" => "3243243",       
// );
// $count = insertData($table , $data);

// include './connect.php';

// $stm =$con->prepare("select * from users");
// $stm->execute();

// $users= $stm->FetchAll(PDO::FETCH_ASSOC);
// Print_R($users);


// $to="1121hassan@gmail.com";
// $titie="hi hasan";
// $body="i'am hasan";
// $header=" from:support  "."/n"."cc:;kaifalasalah@.com";
// mail($to,$titie,$body,$header);

    //      $to = "xyz@somedomain.com";
    //      $subject = "This is subject";
         
    //      $message = "<b>This is HTML message.</b>";
    //      $message .= "<h1>This is headline.</h1>";
         
    //      $header = "From:abc@somedomain.com \r\n";
    //      $header .= "Cc:afgh@somedomain.com \r\n";
    //      $header .= "MIME-Version: 1.0\r\n";
    //      $header .= "Content-type: text/html\r\n";
         
    //      $retval = mail ($to,$subject,$message,$header);
         
    //      if( $retval == true ) {
    //         echo "Message sent successfully...";
    //      }else {
    //         echo "Message could not be sent...";
    //      }
    //   


        sendEmail("1121hassan@gmail.com","hla","from 11121jkdkddjj","okokooejoojodjojdjojoj");