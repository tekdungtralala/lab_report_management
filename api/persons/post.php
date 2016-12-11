<?php
	include '../connect.php';

	if ('POST' === $_SERVER['REQUEST_METHOD']) {
		$json = file_get_contents('php://input');
		// echo $json;
		$person = (array) json_decode($json);

		$sql = "insert into pelanggan values(NULL, '" 
			. $person['kp'] . "', '" 
			. $person['name'] . "', '" 
			. $person['address'] . "', '" 
			. $person['hp'] . "', '" 
			. $person['email'] . "', '" 
			. $person['desc'] . "')";

		if ($conn->query($sql) === TRUE) {
			echo "insert successfully";
		} else {
			echo "insert record: " . $conn->error;
		}
	}
?>