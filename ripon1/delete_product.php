<?php
$conn=mysqli_connect("localhost","root","","ripon1");
// Check connection
	if (mysqli_connect_errno()){
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
	}
	$id=$_GET['id'];
	//echo $id;exit;
	
	//$sql ="SELECT id FROM product where id=".$_GET['id'] ;
	//echo $sql;exit;

$sql ="DELETE FROM product WHERE id=$id";
	$ra=mysqli_query($conn,$sql);
if ($ra=== TRUE) {
    echo "New record created successfully";
} 

header("Location: http://localhost/ripon1/ProductListUpdate.php"); /* Redirect browser */
exit();
mysqli_close($conn);
?> 