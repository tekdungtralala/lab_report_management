<?php
	include '../connect.php';

	if ('DELETE' === $_SERVER['REQUEST_METHOD']) {
		$sql = "DELETE FROM reports_test_results WHERE id=" . $_GET['id'];
		$conn->query($sql);
	}
	
?>