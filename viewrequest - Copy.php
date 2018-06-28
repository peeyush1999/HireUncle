<?php session_start();
ob_start();
include'dbconnect.php';
if(isset($_SESSION['login'])!=True )
{
	header('Location:home.php');
}
$uname=$_SESSION['user'];

if($_SESSION['type']=='user')
{
	$query="SELECT serviceid, userid, employeeid, date, status FROM request WHERE userid='$uname' AND status<>'deleted' ORDER BY serviceid desc";
}
else if($_SESSION['type']=='employee')
{
	$query="SELECT serviceid, userid, employeeid, date, status FROM request WHERE employeeid='$uname' AND status<>'deleted' ORDER BY serviceid desc";
}
if (!($stmt = $conn->prepare($query))) 
{
	echo "Query Preparation failed: (" . $conn->errno . ") " . $conn->error;
}

if (!$stmt->execute()) 
{
	echo "Query Execute failed: (" . $query->errno . ") " . $query->error;
}
$stmt->bind_result($sid,$uid,$employeename,$date,$status);
?>










<!DOCTYPE html>
<html lang="en">
<head>
  <title>Hireuncle.com</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <link rel="stylesheet" href="assets/css/aos.css" >
  <!-- table-->
  


  

  <style>
	body{
			background-color:	#555555 !important;
			min-width:700px !important;
		
	}
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }

    .carousel-inner img {
      width: 100%; /* Set width to 100% */
      min-height: 200px;
    }

    /* Hide the carousel text when the screen is less than 600 pixels wide */
    @media (max-width: 600px) {
      .carousel-caption {
        display: none; 
      }
    }
	.heading{
		font-size:1.7em !important;
		color:#7fffff !important;
		margin-bottom:5px;
	}
	.data{
		font-size:1em !important;
		color:white !important;
		
	}
	
	.row
	{
		border-radius: 20px;
		background: #2f2f30;
		padding: 10px; 
		width: 95%;
		
		
		margin:auto !important;
		
		
		margin-bottom:2%;
		margin-top:2%;
	}
	

  </style>
</head>
<body>
<!-- NAVIGATION BAR CONTENT-->
<?php include'header.php'?>
<?php include'navbar.php'?>

<div class='container'>
	<span style="font-size:2em;color:white;">Request Table </span>
	<div class='row'>
		
		<div class='heading'>
			<div class='col-sm-3' id='serialid'>
			Serial Id
			</div>
			<div class='col-sm-2' id='serialid'>
			User Id
			</div>
			<div class='col-sm-2' id='serialid'>
			Employee Id
			</div>
			<div class='col-sm-2' id='serialid'>
			Date
			</div>
			<div class='col-sm-3' id='serialid'>
			Status
			</div>
		</div>
	
	<?php
	$i=False;
	while( $stmt->fetch())
	{
		$i=True;
		echo"
		<div class='data'>
			
			<div class='col-sm-3' id='serialid'>
			$sid
			</div>
			<div class='col-sm-2' id='serialid'>
			$uid
			</div>
			<div class='col-sm-2' id='serialid'>
			$employeename
			</div>
			<div class='col-sm-2' id='serialid'>
			$date
			</div>
			<div class='col-sm-3' id='serialid'>
			$status
			</div>
		</div>";
	}
	if($i==False)
{
	echo"<center><b><br><br><br><h3 style='color:white;'>No Requests Found.<br>Please try again later.</h3><br><a href='home.php'>Go Back</a></b></center>";
}
	
	?>
	
		
	
	
	</div>

</div>

<?php include'footer.php'?>
<!-- Animation on scroll script--> 
<script src='assets\js\aos.js' type='text/javascript'></script>
<script>
		AOS.init({
  duration: 1200,
})

  </script>

  
</body>
</html>
