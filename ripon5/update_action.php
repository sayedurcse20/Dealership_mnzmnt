<?php
$conn=mysqli_connect("localhost","root","","ripon5");
// Check connection
	if (mysqli_connect_errno()){
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
	}
	$id=$_GET['id'];
	//echo $id;exit;
	
	//$sql ="SELECT id FROM product where id=".$_GET['id'] ;
	//echo $sql;exit;

	$product=$_GET['Product'];
	$unitprice=$_GET['Prize'];
	$stock=$_GET['Stock'];
	$current_stock_value = 0;
	$current_stock_value = $stock*$unitprice;

	$sql ="UPDATE product SET 
		product_name='$product',
		unit_price='$unitprice',
		current_stock ='$stock',
		current_stock_value = '$current_stock_value'
		 WHERE id=$id";
		 
		$ra=mysqli_query($conn,$sql);
		
	if ($ra=== TRUE) {
		echo "New record created successfully";
	} 
	header("Location: http://localhost/ripon5/ProductListUpdate.php"); /* Redirect browser */
	exit();

	mysqli_close($conn);
	?> 