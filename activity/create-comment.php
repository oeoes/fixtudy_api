<?php
	include "../profile/app.php";

	$getPostId = $_GET['getPostId'];
	
	$auth->viewData("SELECT * FROM post WHERE id_post='$getPostId'");

 ?>