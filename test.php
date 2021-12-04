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
  $sql = "SELECT * FROM bank_names";
  if ($result = mysqli_query($conn,$sql)) {
    $rowcount = mysqli_num_rows($result);
    // echo "The total number of rows are: ".$rowcount; 
    echo "No. of rows => " . $rowcount ."<br>";
    for($i = 0; $i<$rowcount; $i++) {
      $row = mysqli_fetch_assoc($result);
      $name = $row['name'];
      $value = str_replace('Limited', 'LTD', ($row['name']));
      // $value = str_replace('LTD.', 'LTD', ($row['name']));
      // $value = str_replace(')', '', ($row['name']));
      // $value = str_replace("'", '', ($row['name']));
      // $value = str_replace(' Mumbai', '', ($row['name']));

      /*"UPDATE employee set userid='" . $_POST['userid'] . "', first_name='" . $_POST['first_name'] . "', last_name='" . $_POST['last_name'] . "', city_name='" . $_POST['city_name'] . "' ,email='" . $_POST['email'] . "' WHERE userid='" . $_POST['userid'] . "'");*/
      
      $sql2 = "UPDATE bank_names SET name = '" . $value . "' WHERE name = '". $name . "'";

      $result2 = mysqli_query($conn, $sql2);
      if ($result2) {
        echo "Successfully updated <br>";
      } else {
        echo 'Invalid query: ' . mysqli_error($conn). "<br>";
      }
    }
  }

  /*if (mysqli_query($conn, $sql)) {
    echo "New record created successfully";
  } else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
  }*/

  mysqli_close($conn);
?>