<?php require_once("../connection.php"); ?>
<?php
	if ($_GET['bank_id']) {
		$bank_name = str_replace('-', ' ', mysqli_real_escape_string($conn, $_GET['bank_id']));

		$result = mysqli_query($conn, "SET NAMES utf8mb4");
		$result = mysqli_query($conn, "SELECT * FROM `data` WHERE `bank_id` = '{$_GET['bank_id']}'");

		$response['count'] = $result->num_rows;
		while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
			/*echo "<li><a href='branch.php?branch_name=".str_replace(' ', '-', $run['adr1'])."&bank_name=".str_replace(' ', '-', $run['name'])."&branch_id=".md5($run['id'])."'>".$run['adr1']."</a></li>";*/
			$response['name'] = $row['name'];
			$response['bankid'] = $row['bank_id'];
			$response['branches'][] = $row;
		}
		echo json_encode($response);
	}else{
		echo json_encode($response['count']=0, $response['branches']="Wrong input");
	}

	$result->free();
	$conn->close();
?>