<!DOCTYPE html>
<html lang="en">
<head>
  <title>অনলাইন </title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <center><h2>অনলাইন জমা টাকা  </h2></center>
  <form class="form-horizontal" action="online_action.php" method="post">

	 <div class="form-group">
      <label class="control-label col-sm-2" for="Stock">অনলাইন টাকা জমা  </label>
      <div class="col-sm-4">          
        <input type="Stock" class="form-control" id="Stock" placeholder="অনলাইন টাকা যুক্ত করুন" name="j_and_j">
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-4 col-sm-10">
        <button type="submit" class="btn btn-primary">Submit</button>
		<a href='ProductListUpdate.php' class="btn btn-primary">Cancel</a>
		<button type="submit" class="btn btn-primary">Resat</button>
      </div>
    </div>
  </form>
</div>

</body>
</html>
