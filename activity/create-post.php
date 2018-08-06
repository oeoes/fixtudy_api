<?php
	include "../profile/app.php";

	$id_user = $auth->getId('email_user', $auth->getAuthenticateUser(), 'user');

	$post = $auth->cleanRequest($_POST['post']);
	
	$auth->createData("INSERT INTO post(id_user, post) VALUES ('$id_user', '$post')");

 ?>