
<!DOCTYPE html>
<html lang="en">
<head>
  <title>পন্যের আপডেট পেজ</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <center><h2>পন্যের আপডেট পেজ</h2></center>
  <form class="form-horizontal" action="update_action.php" method="GET">
  
  <?php

$conn=mysqli_connect("localhost","root","","ripon3");
// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
  
  $sql ="SELECT * FROM product where id=".$_GET['id'] ;
  
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
    // output data of each row
    while($row = mysqli_fetch_array($result)) {


	?>
		
		<input id="prodId" name="id" type="hidden" value="<?php echo  $row["id"]?>">
		
		
    <div class="form-group">
      <label class="control-label col-sm-2" for="Product">পন্যের নাম  :</label>
      <div class="col-sm-6">
        <input type="Product" class="form-control" id="Product" placeholder="Enter Product Name" name="Product" value="<?php echo  $row["product_name"] ?>">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="Prize">পিস মূল্য :</label>
      <div class="col-sm-4">          
        <input type="Prize" class="form-control" id="Prize" placeholder="Enter Unit Prize" name="Prize" value="<?php echo  $row["unit_price"] ?>">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="Stock">স্টক সংখ্যা  :</label>
      <div class="col-sm-4">          
        <input type="Stock" class="form-control" id="Stock" placeholder="Enter Stock Value" name="Stock" value="<?php echo  $row["current_stock"] ?>">
      </div>
    </div>
    
	   <?php
		
    }
	
	?>
	         
			<center><div class="form-group">
              	<button type="submit" class="btn btn-primary">Submit</button>
				<a href='ProductListUpdate.php' class="btn btn-primary">Cancel</a>
             </div></center>


                  </form>  
	<?php
} else {
    echo "0 results";
}
?>
	
  </form>
</div>

</body>
</html>
