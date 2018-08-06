<?php 

    class Connection
    {
    	private $host = "localhost", $user = "root", $password = "", $database = "testforfixstudy";

    	protected $con;

    	public function __construct()
    	{
    		$this->con = mysqli_connect($this->host, $this->user, $this->password, $this->database);
    	}

    	public function connect()
    	{
    		return $this->con;
    	}
    }

 ?>