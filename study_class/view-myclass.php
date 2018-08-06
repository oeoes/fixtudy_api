<?php
	include "../profile/app.php";

	$id_user = $auth->getId('email_user', $auth->getAuthenticateUser(), 'user');
	
	// view class based on active user
	$auth->viewData("SELECT * FROM class WHERE id_user='$id_user'");

 ?>