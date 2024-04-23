
<?php
include "connect.php";
$AllData=array();


$AllData['status'] = "success";
$categories=getAllData("categories",null,null,false);

$AllData['categories']=$categories;

 $items=getAllData("itemsview","items_discount!=0",null,false);

$AllData['items']=$items;

echo json_encode($AllData);


?>