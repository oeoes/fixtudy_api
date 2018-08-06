<?php 

	include_once "../crud.php";

	class Authentication extends Crud
	{
		private $activeSession;

		public function loginUser($query)
		{
			$data = $this->connect()->query($query);

			$arr_data  = $data->fetch_assoc();

			$result = array();

			if(is_array($arr_data) && !empty($arr_data))
			{
				return true;
			}
			else
			{
				$result = array();
				$result['code'] = 403;
				$result['message'] = "Forbidden";
				echo json_encode($result);
			}
		}

		public function authenticateUser($state)
		{
			$this->activeSession = $state;
		}

		public function getAuthenticateUser()
		{
			$result = array();

			if(isset($_SESSION['active']))
				return $this->activeSession = $_SESSION['active'];
			else
				return false;
			
		}

		public function logoutUser()
		{
			$result = array();
			$result['code'] = 201;
			$result['message'] = "Logged Out";
			echo json_encode($result);

			session_destroy();
		}

		public function isDoubleEmail($email_user)
		{
			$data = $this->connect()->query("SELECT * FROM user WHERE email_user='$email_user'");
			$count = $data->fetch_assoc();

			if(!empty($count))
			{
				$result = array();
				$result['code'] = 403;
				$result['message'] = "Forbidden";
				$result['suggest'] = "Use another Email";

				echo json_encode($result);
				exit();
			}
		}
	}

 ?>