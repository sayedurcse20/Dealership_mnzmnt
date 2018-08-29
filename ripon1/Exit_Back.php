<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
<head>
  <title>বাহির ও ফেরত & ডেমেজ হিসাব</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2><center>দৈনিক বাহির ও ফেরত & ডেমেজ হিসাব</center> </h2>
            
  <table class="table table-bordered">
    <thead>
      <tr>
		<th>ক্রঃ নং </th>
		<th>পন্যের নাম</th>
		<th>স্টক পন্য</th>
        <th>পন্যের বাহির সংখ্যা</th>
        <th>পন্যের ফেরত সংখ্যা</th>
	    <th>পন্যের ডেমেজ সংখ্যা</th>	
      </tr>
    </thead>
	<form action="exit_back_action.php" method="post">
	
    <tbody>
	 <?php
$conn=mysqli_connect("localhost","root","","ripon1");
// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
$sql = "SELECT * FROM product";
$ra=mysqli_query($conn,$sql);

if ($ra->num_rows > 0) {
    // output data of each row
	$i=1;
    while($row = $ra->fetch_assoc()) {
		
        echo "
		<tr>
		<input type='hidden' name='ids[]' value='".$row['id']."'/>
		<td>".$i."</td>
		<td>".$row['product_name']."</td>
		<td>".$row['current_stock']."</td>
		<td><input type='text' name='outs[]' value='".$row['out']."'/></td>
		<td><input type='text' name='returns[]' value='".$row['return']."'/></td>
		<td><input type='text' name='damages[]' value='".$row['damage_product']."'/></td>			
		 
		 </tr>";
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
<div class='form-group'>        
      <div class='col-sm-offset-10 col-sm-12'>
        <b><button type='submit' name='update' class='btn btn-success btn-lg'>Update</button></b>
		<b><button type='submit' name='refresh' class='btn btn-success btn-lg'>Refresh</button></b>
      </div>
    </div>
		
		</form>
</body>
</html>
