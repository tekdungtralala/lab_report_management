<?php
	include '../connect.php';

	if ('PUT' === $_SERVER['REQUEST_METHOD']) {
		$json = file_get_contents('php://input');
		// echo $json;
		$person = (array) json_decode($json);

		$sql = "update pelanggan" 
			. " set kode_plg='". $person['kp'] . "'" 
			. " , nama='". $person['name'] . "'" 
			. " , alamat='". $person['address'] . "'" 
			. " , hp='". $person['hp'] . "'" 
			. " , email='". $person['email'] . "'" 
			. " , ket='". $person['desc'] . "'"
			. " where id=" . $person['id'];

		if ($conn->query($sql) === TRUE) {
			echo "update successfully";
		} else {
			echo "update record: " . $conn->error;
		}
	}
?>