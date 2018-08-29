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

$product=$_POST['Product'];
$unitprice=$_POST['Prize'];
$stock=$_POST['Stock'];
$current_stock_value = 0;
$current_stock_value = $stock*$unitprice;


$sql ="INSERT INTO product(product_name,unit_price,current_stock,current_stock_value)
VALUES('$product','$unitprice','$stock','$current_stock_value')";

$ra=mysqli_query($conn,$sql);
if ($ra=== TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}
header("Location: http://localhost/ripon3/ProductListUpdate.php"); /* Redirect browser */
exit();

mysqli_close($conn);
?> 