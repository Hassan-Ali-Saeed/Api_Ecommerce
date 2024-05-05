//============creeat VIEW===================
CREATE OR REBLACE  VIEW  itemsview AS
SELECT items.* ,categories.* from items 
INNER JOIN categories ON items.items_cat=categories.categories_id

//======================================================
SELECT itemsview1.* ,1 as favorite FROM itemsview1
INNER JOIN favorite ON itemsview1.items_id=favorite.favorite_id  
AND favorite.favorite_usersid=156
UNION  ALL 
SELECT  * , 0 as favorite FROM itemsview1
WHERE items_id !=
(SELECT itemsview1.items_id FROM itemsview1
INNER JOIN favorite ON itemsview1.items_id=favorite.favorite_id  
AND favorite.favorite_usersid=156)
//=============================================================

//===================================================================


SELECT itemsview.* ,1 as favorite FROM itemsview

INNER JOIN favorite ON itemsview.items_id=favorite.favorite_itemsid  
AND favorite.favorite_usersid=$usersid
where items_cat=$categories_id And 

UNION  ALL 
SELECT  * , 0 as favorite FROM itemsview
WHERE items_cat=$categories_id And 
 items_id NOT IN
(SELECT itemsview.items_id FROM itemsview
INNER JOIN favorite ON itemsview.items_id=favorite.favorite_itemsid  
AND favorite.favorite_usersid=$usersid)

//===================================================================
// my favorite VIEW
CREATE OR REPLACE VIEW myfavorite AS
SELECT favorite.*, items.*,users.users_id FROM favorite
INNER JOIN items on items.items_id=favorite.favorite_itemsid
INNER JOIN users on users.users_id=favorite.favorite_usersid

