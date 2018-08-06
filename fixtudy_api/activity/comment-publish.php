<?php
	include "../profile/app.php";

	$id_user = $auth->getId('email_user', $auth->getAuthenticateUser(), 'user');

	$id_post = $auth->cleanRequest($_POST['id_post']);
	$comment = $auth->cleanRequest($_POST['comment']);
	
	$auth->createData("INSERT INTO comment (id_user, id_post, comment) VALUES ('$id_user', '$id_post', '$comment')");

 ?>