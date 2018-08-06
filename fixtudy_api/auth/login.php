<?php session_start() ?>

<?php 
	
	include_once "authentication.php";

	$auth = new Authentication();

	$email_user = $auth->cleanRequest($_POST['email_user']);
	$password_user = $auth->cleanRequest($_POST['password_user']);

	$auth->validateRequest(array($email_user, $password_user));

	$result = $auth->loginUser("SELECT * FROM user WHERE email_user='$email_user' and password_user='$password_user'");

	if($result == true)
	{
		$_SESSION['active'] = $email_user;
		$state = $_SESSION['active'];

		$auth->authenticateUser($state);
		echo $auth->getAuthenticateUser();
	}


 ?>