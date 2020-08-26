<?php require_once("../connection.php"); ?>

<?php
	$result = mysqli_query($conn, "SET NAMES utf8mb4");
	$result = mysqli_query($conn, "SELECT * FROM bank_names");
	$response['count'] = $result->num_rows;
	while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
		$response['banks'][] = $row;
	}
	
	echo json_encode($response);

	$result->free();
	$conn->close();
?>