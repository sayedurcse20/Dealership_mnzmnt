<?php
$conn=mysqli_connect("localhost","root","","ripon5");
// Check connection
	if (mysqli_connect_errno()){
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
	}
	$ids = $_POST['ids'];
	$length=sizeof($ids);
	$flag = 'true';
	if (isset($_POST['refresh']))
	{
		
		$outs = array_fill(0,$length,0);
		$returns = array_fill(0,$length,0);
		$damages = array_fill(0,$length,0);
		$flag = 'r';
		
		
	}
	
	if (isset($_POST['update']))
	{
	
		$outs = $_POST['outs'];
		$returns = $_POST['returns'];
		$damages = $_POST['damages'];
		$flag  = 'u';
	}
	


for ($i=0; $i<$length; $i++){
	$id = $ids[$i];
	$out = $outs[$i];
	$return = $returns[$i];
	$damage = $damages[$i];
	$sub = $outs[$i] - $returns[$i];

	
	$q_get_total = "select unit_price,damage_total_product,current_stock,total_sell_number from product where id =$id";
	$total_sell = mysqli_query($conn,$q_get_total);
	
	//print_r($total_sell->fetch_assoc());
	
	$total = $total_sell->fetch_assoc();
	
	print_r ('  '.$total['total_sell_number']);
	
	$save = 	$total['total_sell_number'] + $sub ;
	$sub_from_stock = 	$total['current_stock'] - $sub ;
	$damage_total = $total['damage_total_product'] + $damage ;
	$damage_total_values = $total['unit_price'] * $damage_total ;
	$current_stock_values = $total['unit_price'] * $sub_from_stock;
	$total_sell_values = $total['unit_price'] * $save;
	if($flag == 'r'){
	$sql ="UPDATE product SET 
	`out`=$out,
	`return`=$return,
	`everyday_sell` = $sub,	
	damage_product=$damage 
	WHERE id=$id";
	$ra=mysqli_query($conn,$sql);
	
		
	}else{
	$sql ="UPDATE product SET 
	`out`=$out,
	`return`=$return,
	`everyday_sell` = $sub,
	`total_sell_number` = $save,
	`current_stock` = $sub_from_stock,
	 `damage_total_product` = $damage_total,
	 `damage_total_value` = $damage_total_values,
	 `current_stock_value`=$current_stock_values,
	 `total_sell_value`=$total_sell_values,
	damage_product=$damage WHERE id=$id";
	$ra=mysqli_query($conn,$sql);
	}
	
}
	if ($ra=== TRUE) {
		echo "New record created successfully";
	} else {
		echo "Error: " . $sql . "<br>" . $conn->error;
	}
	header("Location: http://localhost/ripon5/home.php"); /* Redirect browser */
exit();
mysqli_close($conn);
?> 