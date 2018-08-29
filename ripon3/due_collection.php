<!DOCTYPE html>
<html lang="en">
<head>
  <title>দৈনিক বাকি হিসাব </title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <center><h2>দৈনিক বাকি হিসাব </h2></center>
  <form class="form-horizontal" action="due_collection_action.php" method="post">
    <div class="form-group">
      <label class="control-label col-sm-2" for="Product">মার্কেট টুটাল বাকি = </label>
      <div class="col-sm-6">
        <label class="control-label col-sm-2" for="Product"><?php
				$conn=mysqli_connect("localhost","root","","ripon3");
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
				?> </label>
      </div>
    </div>
	<div class="form-group">
      <label class="control-label col-sm-2" for="Stock">Select Your Company</label>
      <div class="col-sm-4"> 
		<select name="c_name">
			
			<option value="B">B</option>

		</select>
        
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2" for="Stock">নতুন বাকি  (+)</label>
      <div class="col-sm-4">          
        <input type="Stock" class="form-control" id="Stock" placeholder="নতুন বাকি যুক্ত করুন" name="due">
      </div>
    </div>
	 <div class="form-group">
      <label class="control-label col-sm-2" for="Stock">বাকি জমা(-)</label>
      <div class="col-sm-4">          
        <input type="Stock" class="form-control" id="Stock" placeholder="বাকি জমা যুক্ত করুন" name="deposit">
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-4 col-sm-10">
        <button type="submit" class="btn btn-primary">Submit</button>
		<a href='ProductListUpdate.php' class="btn btn-primary">Cancel</a>
      </div>
    </div>
  </form>
</div>

</body>
</html>
