<?php session_start() ?>
<?php 

	include "authentication.php";
	$auth = new Authentication();

	$auth->logoutUser();

 ?>