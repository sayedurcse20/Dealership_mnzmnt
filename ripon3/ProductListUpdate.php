<!DOCTYPE html>
<html lang="en">
<head>
  <title>পন্যের লিস্ট আপডেট </title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2><b><center>পন্যের লিস্ট আপডেট</center> </b></h2>
  <p><a href="home.php" class="btn btn-primary">মূল পাতা</a></p>
				  <br>
				  <div class="btn-group btn-group-justified">
					<a href="due_collection.php" class="btn btn-primary">বাকি হিসাব</a>
					<a href="online.php" class="btn btn-primary">অনলাইন হিসাব</a>
					<a href="#" class="btn btn-primary">Resat Damage</a>
					<a href="#" class="btn btn-primary">Resat Monthly Bikroi</a>
					<a href="Addproductfrm.html" class="btn btn-primary">নতুন পণ্য যুক্ত</a>
				  </div>
				  </br>
  <table class="table table-bordered">
    <thead>
      <tr>
		<th>ক্রঃ নং</th>
        <th>পন্যের নাম</th>
        <th>পিস মূল্য</th>
        <th>স্টক পন্য</th>
		<th>পন্যের আপডেট</th>
		<th>পন্য ডিলিট</th>
      </tr>
    </thead>
    <tbody>
	
	
	
	
	
 <?php
$conn=mysqli_connect("localhost","root","","ripon3");
// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
$sql = "SELECT id,product_name,unit_price,current_stock FROM product";
$ra=mysqli_query($conn,$sql);

if ($ra->num_rows > 0) {
    // output data of each row
	$i=1;
    while($row = $ra->fetch_assoc()) {
        echo "<tr>
		<td>".$i."</td>
		<td>".$row['product_name']."</td>
		<td>" .$row['unit_price']."</td>
		<td>" .$row['current_stock']. "</td>";
	  
	  ?>
	  
	 <td><a href="ProductUpdate.php?id=<?php echo  $row["id"] ?>">এডিট</a></td>
	 <td><a href="delete_product.php?id=<?php echo  $row["id"] ?>" onclick="return confirm('Are You sure??');" >ডিলিট</a></td>
	   </tr>
	  <?php
	  $i++;
    }
} else {
    echo "0 results";
} 


mysqli_close($conn);
?>      
    </tbody>
  </table>
</div>

</body>
</html>
