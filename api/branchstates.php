<?php 
	header("Access-Control-Allow-Origin: *");
	require_once("../connection.php");
	
	if ($_GET['bank_id']) {
		$bank_name = str_replace('-', ' ', mysqli_real_escape_string($conn, $_GET['bank_id']));

		$result = mysqli_query($conn, "SET NAMES utf8mb4");
		/*$result = mysqli_query($conn, "SELECT * FROM `data` WHERE `bank_id` = '{$_GET['bank_id']}'");*/
		$result2 = mysqli_query($conn, "SELECT DISTINCT `state` FROM `data` WHERE `bank_id` = '{$_GET['bank_id']}' ORDER BY `state`");

		$response['count'] = $result2->num_rows;
		while ($row = mysqli_fetch_array($result2, MYSQLI_ASSOC)) {
			$response['state'][] = $row['state'];
		}

		// get logo
		$logo = mysqli_query($conn, "SELECT `logo` FROM `bank_names` WHERE `id` = '{$_GET['bank_id']}'");
		$response['logo'] = $logo->fetch_row()[0] ?? '';

		echo json_encode($response);
	}else{
		echo json_encode($response['count']=0, $response['branches']="Wrong input");
	}

	// $result->free();
	$result2->free();
	$conn->close();
?>