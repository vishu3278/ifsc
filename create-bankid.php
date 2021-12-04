<?php
  $servername = "localhost";
  $username = "root";
  $password = "";
  $dbname = "test";

  // Create connection
  $conn = mysqli_connect($servername, $username, $password, $dbname);
  // Check connection
  if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
  }
  $sql = "SELECT bank_names.name, bank_names.id FROM bank_names JOIN data ON bank_names.name = data.name";
  // echo "$sql";
  if ($result = mysqli_query($conn, $sql)) {
    $rowcount = mysqli_num_rows($result);
    // echo "The total number of rows are: ".$rowcount; 
    echo "No. of rows => " . $rowcount ."<br>";
    for($i = 0; $i<$rowcount; $i++) {
      $row = mysqli_fetch_assoc($result);
      $value = $row['id'];
      
      $sql2 = "UPDATE data SET bank_id = '" . $value . "' WHERE data.name = '". $row["name"] . "'";

      $result2 = mysqli_query($conn, $sql2);
      if ($result2) {
        echo "Successfully updated <br>";
      } else {
        echo 'Invalid query: ' . mysqli_error($conn). "<br>";
      }
    }
  } else {
    echo "query failed" . mysqli_error($conn). "<br>";
  }

  if (mysqli_query($conn, $sql)) {
    echo "New record created successfully";
  } else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
  }

  mysqli_close($conn);
?>