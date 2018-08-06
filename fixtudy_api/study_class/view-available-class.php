<?php
	include "../profile/app.php";

	$id_user = $auth->getId('email_user', $auth->getAuthenticateUser(), 'user');
	
	/* 
	* sort by due date filter by another users
	* view class except the active user's class
	*/
	$auth->viewData("SELECT * FROM class WHERE id_user!='$id_user' ORDER BY class_date ASC");
	/*
	* Dari sini akan disediakan id class untuk join
	* @GET $getIdClass
	* kemudian akan diinsert ke table attendies
	*/

 ?>