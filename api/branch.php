<?php 
	header("Access-Control-Allow-Origin: *");
	require_once("../connection.php");
?>
<?php
	if ($_GET['bank_id'] && $_GET['state']) {
		$state = str_replace('-', ' ', mysqli_real_escape_string($conn, $_GET['state']));
		// $city = str_replace('-', ' ', mysqli_real_escape_string($conn, $_GET['city']));

		$result = mysqli_query($conn, "SET NAMES utf8mb4");
		/*$result = mysqli_query($conn, "SELECT * FROM `data` WHERE `bank_id` = '{$_GET['bank_id']}'");*/
		/*get states of selected bank*/
		$result2 = mysqli_query($conn, "SELECT * FROM `data` WHERE `bank_id` = '{$_GET['bank_id']}' AND `state` = '{$_GET['state']}'");
		$response['count'] = $result2->num_rows;
		if(mysqli_num_rows($result2) > 0){
			while ($row = mysqli_fetch_array($result2, MYSQLI_ASSOC)) {
				$response['banks'][] = $row;
			}
		}

		echo json_encode($response);
	}else{
		echo json_encode($response['count']=0, $response['branches']="Wrong input");
	}

	// $result->free();
	$result2->free();
	$conn->close();
?>