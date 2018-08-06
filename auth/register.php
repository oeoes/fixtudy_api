<?php session_start() ?>
<?php 

	include "authentication.php";
	$auth = new Authentication();

	if(!$auth->getAuthenticateUser())
	{
		$email_user = $auth->cleanRequest($_POST['email_user']);
	    $password_user = $auth->cleanRequest($_POST['password_user']);

	    $auth->validateRequest(array($email_user, $password_user));

	    $auth->isDoubleEmail($email_user);

	    $auth->createData("INSERT INTO user(email_user, password_user) VALUES('$email_user', '$password_user')");

	    // langsung create session
	    $_SESSION['active'] = $email_user;
		$state = $_SESSION['active'];

		$auth->authenticateUser($state);

		// langsung insert id relationship ke table student
		$id_user = $auth->getId('email_user', $email_user, 'user');
		$auth->createData("INSERT INTO student (id_user) VALUES ('$id_user')");
		
	}
	else
	{
		echo "Authenticated as ".$auth->getAuthenticateUser();
	}

 ?>