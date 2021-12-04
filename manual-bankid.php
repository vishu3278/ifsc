<?php
  $servername = "localhost";
  $username = "root";
  $password = "";
  $dbname = "ifsc";

  // Create connection
  $conn = mysqli_connect($servername, $username, $password, $dbname);
  // Check connection
  if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
  }

  $sql = "UPDATE data SET bank_id = '9' WHERE name = 'AKOLA JANATA COMMERCIAL COOPERATIVE BANK LTD.'";

  // echo "$sql";

  if (mysqli_query($conn, $sql)) {
    echo "New record created successfully. Rows affected::" . mysqli_affected_rows($conn);
  } else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
  }

  mysqli_close($conn);
?>