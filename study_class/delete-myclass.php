<?php
	include "../profile/app.php";

	$id_user = $auth->getId('email_user', $auth->getAuthenticateUser(), 'user');

	$query = "DELETE FROM class WHERE id_user='$id_user' AND id_class=";
	$getIdClass = $_GET['getIdClass'];

    $auth->deleteData($query, $getIdClass);

 ?>