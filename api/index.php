<?php
	header("Access-Control-Allow-Origin: *"); 
	require_once("../connection.php"); ?>

<?php
	// $result = mysqli_query($conn, "SET NAMES utf8mb4");
	
	if ( isset( $_GET['bank_id']) ) {
		$result = mysqli_query($conn, "SELECT * FROM bank_names WHERE `id` = '{$_GET['bank_id']}'");
		$row = mysqli_fetch_array($result);
		$response['count'] = $result->num_rows;
		if ($response['count']>0) {
			$response['banks'] = $row['name'];
		}else{
			$response['banks'] = "No Bank found";
		}
	}else{
		$result = mysqli_query($conn, "SELECT * FROM bank_names");
		$response['count'] = $result->num_rows;
		while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
			$response['banks'][] = $row;
		}
	}
	
	echo json_encode($response);

	$result->free();
	$conn->close();
?>