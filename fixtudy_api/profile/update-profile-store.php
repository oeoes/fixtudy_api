<?php
	include "app.php";

	$id_user = $auth->getId('email_user', $auth->getAuthenticateUser(), 'user');

	$birthdate = $auth->cleanRequest($_POST['birthdate']);
	$gender = $auth->cleanRequest($_POST['gender']);
	$department = $auth->cleanRequest($_POST['department']);
	$study_year = $auth->cleanRequest($_POST['study_year']);
	$bio = $auth->cleanRequest($_POST['bio']);
	$experience = $auth->cleanRequest($_POST['experience']);
	$phone = $auth->cleanRequest($_POST['phone']);
	$photo_url = $auth->cleanRequest($_POST['photo_url']);

	// Cek takutnya ada field yang kosong
	$auth->validateRequest(array($birthdate, $gender, $department, $study_year, $bio, $experience, $phone, $photo_url));

	$auth->updateData("UPDATE student SET birthdate='$birthdate', gender='$gender', department='$department', study_year='$study_year', bio='$bio', experience='$experience', phone='$phone', photo_url='$photo_url' WHERE id_user=", $id_user);

 ?>