<?php
	include "../profile/app.php";

	$id_user = $auth->getId('email_user', $auth->getAuthenticateUser(), 'user');
	/*
	* Request $_POST[''];
	*/
	$class_name = $auth->cleanRequest($_POST['class_name']);
	$class_loc = $auth->cleanRequest($_POST['class_loc']);
	$class_date = $auth->cleanRequest($_POST['class_date']);
	$class_time = $auth->cleanRequest($_POST['class_time']);
	$class_desc = $auth->cleanRequest($_POST['class_desc']);
	$class_payment = $auth->cleanRequest($_POST['class_payment']);
	/*
	*
	*
	*/

	$auth->validateRequest(array($class_name, $class_loc, $class_date, $class_time, $class_desc, $class_payment));
	
	$auth->createData("INSERT INTO class (id_user, class_name, class_loc, class_date, class_time, class_desc, class_payment) VALUES ('$id_user', '$class_name', '$class_loc', '$class_date', '$class_time', '$class_desc', '$class_payment')");

 ?>