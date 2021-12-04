<?php
	header("Access-Control-Allow-Origin: *");
	require_once("../connection.php");
?>
<?php
	if (($_GET['bank_id']) && ($_GET['state'])) {
		// $state = str_replace('-', ' ', mysqli_real_escape_string($conn, $_GET['state']));
		
		$result = mysqli_query($conn, "SET NAMES utf8mb4");
		$result = mysqli_query($conn, "SELECT * FROM `data` WHERE `bank_id` = '{$_GET['bank_id']}' AND `state` = '{$_GET['state']}' ");
		/*$result2 = mysqli_query($conn, "SELECT DISTINCT `state` FROM `data` WHERE `bank_id` = '{$_GET['bank_id']}' ORDER BY `state`");*/

		$response['count'] = $result->num_rows;
		while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
			$response['banks'][] = $row;
		}
		echo json_encode($response);
	}else{
		echo json_encode($response['count']=0, $response['banks']="Wrong input");
	}

	// $result->free();
	$result->free();
	$conn->close();
	
?>