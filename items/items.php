<?php


include "../connect.php";
$categories_id=filterRequest("id");
$usersid =filterRequest("usersid");
//getAllData ("itemsview","items_cat=$categories_id");


$stmt=$con->prepare("SELECT itemsview.* ,1 as favorite FROM itemsview

INNER JOIN favorite ON itemsview.items_id=favorite.favorite_itemsid  
AND favorite.favorite_usersid=$usersid
where items_cat=$categories_id 

UNION  ALL 
SELECT  * , 0 as favorite FROM itemsview
WHERE items_cat=$categories_id And 
 items_id NOT IN    
(SELECT itemsview.items_id FROM itemsview
INNER JOIN favorite ON itemsview.items_id=favorite.favorite_itemsid  
AND favorite.favorite_usersid=$usersid)");

$stmt->execute();
$data = $stmt->fetchAll(PDO::FETCH_ASSOC);
$count  = $stmt->rowCount();

if ($count > 0){
    echo json_encode(array("status" => "success", "data" => $data));
} else {
    echo json_encode(array("status" => "failure"));
}


