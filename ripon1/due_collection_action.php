<?php
$conn=mysqli_connect("localhost","root","","ripon1");
// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }

$c_name = $_POST['c_name'];
$due = $_POST['due'];
$deposit = $_POST['deposit'];


$sql ="INSERT INTO due_calculation(company_name,current_due,daily_deposit)
VALUES('$c_name','$due','$deposit')";

$ra=mysqli_query($conn,$sql);
if ($ra=== TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}
header("Location: http://localhost/ripon1/home.php");
exit();

mysqli_close($conn);
?> 