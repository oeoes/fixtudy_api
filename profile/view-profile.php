<?php
	include "app.php";

	$id_user = $auth->getId('email_user', $auth->getAuthenticateUser(), 'user');
	
	// menampolkan biodata
	$auth->viewData("SELECT * FROM student WHERE id_user='$id_user'");

 ?>