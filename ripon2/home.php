<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
<head>
  <title>এন ফোস বাংলাদেশ</title>
  <meta http-equiv="content-type" content="text/html" charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="bootstrap.css">
  <script src="jquery.min.js"></script>
  <script src="bootstrap.min.js"></script>
</head>
<body>

<div class="container">
<h6><center>বিসমিল্লাহির রাহমানির রহিম</center></h6>
<h5><center>মেসার্স সরকার এন্টার প্রাইজ</center> </h5>
<h5><center>পরিবেশকঃ এন ফোস বাংলাদেশ </center></h5>

	<div class="row">
		<div class="col-md-5">
		</div>
		<div class="col-md-5" style="hight :15px;">
		  <div class="dropdown " style="margin-left : 450px;">
			<button class="btn btn dropdown-toggle" type="button" data-toggle="dropdown">কোম্পানির নামঃ
			<span class="caret"></span></button>
			<ul class="dropdown-menu" >
			  <li><a href="http://localhost/ripon1/home.php" >রেকিট বেনকিজার</a></li>
			  <li class="divider"></li>
			  <li><a href="http://localhost/ripon2/home.php" >এন ফোস বাংলাদেশ </a></li>
			  <li class="divider"></li>
			  <li><a href="http://localhost/ripon3/home.php" >জে এন্ড জে</a></li>
			  <li class="divider"></li>
			  <li><a href="http://localhost/ripon4/home.php" >মাফিন/ ডিজুস</a></li>
			  <li class="divider"></li>
			  <li><a href="http://localhost/ripon5/home.php" >পি এন জি </a></li>
			</ul>
		  </div>
		  <div class="dropdown" style="margin-left : 900px;"> 
				<input type="button" value="print" onclick="window.print()"; />
		  </div>
		 </div>
		 <div class="col-md-4"></div>
	</div> 
  <a href='ProductListUpdate.php' class='btn btn'>পন্যের লিস্ট আপডেট</a>
  <a href='Exit_Back.php' class='btn btn'>বাহির ও ফেরত & ডেমেজ হিসাব</a>		
  <br>
  
  
  <table class="table table-bordered" >
    <thead>
      <tr>
        <th>ক্রঃ নং </th>
        <th>পন্যের নাম</th>
        <th>বাহির </th>
		<th>ফেরত </th>
		<th>বিক্রয় সংখ্যা </th>		
		<th>পিস মূল্য</th>
		<th>দৈনিক মোট মূল্য </th>
		<th>স্টক পন্য</th>
		<th>মোট বিক্রয় সংখ্যা</th>
		<th>ডেমেজ সংখ্যা</th>
      </tr>
    </thead>
    <tbody>
      
  <?php
$conn=mysqli_connect("localhost","root","","ripon2");
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
	$sum=0;
	$purchase=0;
	$monthly_sell_sum = 0;
	$stock_value =0;
	$damage_total_value = 0;
	$monthly_profit = 0;
    while($row = $ra->fetch_assoc()) {
		$sell = $row['out']-$row['return'];
		$total_value = $sell*$row['unit_price'];
		$sum = $sum+ $total_value ;
		$monthly_sell_sum = $monthly_sell_sum + $row['total_sell_value'];
		$stock_value = $stock_value + $row['current_stock_value'];
		$damage_total_value =$damage_total_value + $row['damage_total_value'];
		$monthly_profit =$monthly_profit + $row['total_sell_value'];
		
        echo "<tr>
		<td>".$i."</td>
		<td>".$row['product_name']."</td>
		<td>".$row['out']."</td>
		<td>".$row['return']."</td>
		<td>".$sell."</td>
		<td>".$row['unit_price']."</td>
		<td>".$total_value."</td>
		<td>".$row['current_stock']."</td>
		<td>".$row['total_sell_number']."</td>
		<td>".$row['damage_total_product']."</td>
      </tr>";
	  $i++;
    }
	
	$purchase = $sum * .07 ;
	$day_profit = $sum - $purchase;
	$monthly_sell_sum =$monthly_sell_sum - $monthly_sell_sum * .07;
	$monthly_profit =  $monthly_profit * .07;
	$stock_value = $stock_value - $stock_value * .07;
	
	
} else {
    echo "0 results";
}
mysqli_close($conn);
?>    	  	  
    </tbody>
  </table>
  <table class="table table-bordered">
    <thead>
      <tr>
        <th>মোট বিক্রয় </th>
        <th>লভ্যাংশ </th>
        <th>মাসিক মোট বিক্রয়</th>
		<th>স্টক মূল্য </th>
		<th>বতমান বাকি </th>
      </tr>
    </thead>
    <tbody>
	<tr>
			<td><?php echo  $sum ?></td>
			<td><?php echo  $purchase ?></td>
			<td><?php echo $monthly_sell_sum ?></td>
			<td><?php echo $stock_value ?></td>
			<td>
				<?php
				$conn=mysqli_connect("localhost","root","","ripon2");
				// Check connection
				if (mysqli_connect_errno())
				  {
				  echo "Failed to connect to MySQL: " . mysqli_connect_error();
				  }
				$sql = "SELECT * FROM due_calculation where company_name = 'B'";
				$ra = mysqli_query($conn,$sql);

				if ($ra->num_rows > 0) {
					// output data of each row
					$current_due = 0;
					while($row = $ra->fetch_assoc()) {
						$current_due = $current_due + $row['current_due'];
					}
						$sql = "SELECT * FROM due_calculation where company_name = 'B'";
						$ra=mysqli_query($conn,$sql);

						if ($ra->num_rows > 0) {
							// output data of each row
							$daily_deposit = 0;
							while($row = $ra->fetch_assoc()) {
								$daily_deposit = $daily_deposit + $row['daily_deposit'];
							}
							
						}
					$current_due = $current_due - $daily_deposit;
					echo $current_due;
				}


				mysqli_close($conn);
				?> 
			</td>

      </tr>
	  
    </tbody>
	</table>
  </table>	<table class="table table-bordered">
    <thead>
      <tr>
        <th><b>ক্রয় মূল্য </b></th>
        <th><b>মাসিক মোট লভ্যাংশ</b></th>
        <th><b>ডেমেজ মূল্য </b></th>
		<th><b>অনলাইন টাকা </b></th>
		<th><b>বাকি জমা </b></th>
      </tr>
    </thead>
    <tbody>
      
	<tr>
			<td><?php echo  $day_profit ?></td>			
			<td><?php echo $monthly_profit?></td>
			<td><?php echo  $damage_total_value ?></td>
			<td>
				<?php
				$conn=mysqli_connect("localhost","root","","ripon2");
				// Check connection
				if (mysqli_connect_errno())
				  {
				  echo "Failed to connect to MySQL: " . mysqli_connect_error();
				  }
				$sql = "SELECT * FROM online";
				$ra=mysqli_query($conn,$sql);

				if ($ra->num_rows > 0) {
					// output data of each row
					$online_sum = 0;
					while($row = $ra->fetch_assoc()) {
						$online_sum = $online_sum + $row['enforce_bd'];
					}
					echo $online_sum;
				} else {
					echo "0 results";
				}


				mysqli_close($conn);
				?> 
			</td>
			<td>
				<?php
				$conn=mysqli_connect("localhost","root","","ripon2");
				// Check connection
				if (mysqli_connect_errno())
				  {
				  echo "Failed to connect to MySQL: " . mysqli_connect_error();
				  }
			
				$sql = "SELECT daily_deposit FROM due_calculation ORDER BY ID DESC LIMIT 1";
				$ra=mysqli_query($conn,$sql);

				if ($ra->num_rows > 0) {
					// output data of each row
					$daily_deposit=0;
					while($row = $ra->fetch_assoc()) {
						 $daily_deposit=$row['daily_deposit'];
					}
					echo $daily_deposit;
				} else {
					echo "0 results";
				}

				mysqli_close($conn);
				?>
			</td>

      </tr>
	  

    </tbody>
  </table>

  
  
  
</div>

</body>
</html>
