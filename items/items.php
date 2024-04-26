<?php


include "../connect.php";
$categories_id=filterRequest("id");
getAllData ("itemsview","items_cat=$categories_id");
