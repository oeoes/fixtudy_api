<?php
	include "../profile/app.php";
	
	$auth->rightJoinTable('comment', 'id_comment', 'post', 'id_post');

 ?>