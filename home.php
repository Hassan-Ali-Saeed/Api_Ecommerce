
<?php
include "connect.php";
$AllData=array();


$AllData['status'] = "succes";
$categories=getAllData("categories",null,null,false);

$AllData['categories']=$categories;
$AllData['status'] == "succes";
echo json_encode($AllData);

?>