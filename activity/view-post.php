<?php
	include "../profile/app.php";
	
	$auth->rightJoinTable('comment', 'id_post', 'post', 'id_post');

 ?>