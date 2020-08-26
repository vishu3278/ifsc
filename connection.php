<?php
	$conn = mysqli_connect( "localhost", "root", "", "ifsc");
	if ($conn->connect_error) {
		exit("connection failure");
	}
?>