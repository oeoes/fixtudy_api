<?php session_start() ?>
<?php 

	include_once "../auth/authentication.php";
	$auth = new Authentication();

	if(!$auth->getAuthenticateUser())
	{
		$result = array();
		$result['code'] = 401;
		$result['message'] = "Unauthorized";
		$result['suggest'] = "Login First";
		echo json_encode($result);
		exit();
	}else
?>