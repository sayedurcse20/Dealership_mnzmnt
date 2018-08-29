<?php
$conn=mysqli_connect("localhost","root","","ripon3");
// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
// ...some PHP code for database "my_db"...

// Change database to "test"
//mysqli_select_db($con,"test");

// ...some PHP code for database "test"...


$jnj=$_POST['j_and_j'];


$sql ="INSERT INTO online (j_and_j)
VALUES('$jnj')";

$ra=mysqli_query($conn,$sql);
if ($ra=== TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}
header("Location: http://localhost/ripon3/home.php"); /* Redirect browser */
exit();

mysqli_close($conn);
?> 