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
<html >
<head>
  <meta charset="UTF-8">
  <title>Simple Responsive Table in CSS</title>
  
  
  <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Open+Sans'>

      <link rel="stylesheet" href="assets/css/tablestyle.css">
<style>
td{
	color:black ;
}

</style>
  
</head>

<body>
<?php include'header.php'?>
<?php include'navbar.php'?>
<span style="font-size:2em;color:white;text-align:center;">View Request</span><br><br>
  <table>
  
  <thead>
    <tr style="background: #1d1e1e !important;color:white;font-size:1.5em;">
      <th scope="col">Serial Id</th>
      <th scope="col">User Id</th>
      <th scope="col">Employee Id</th>
      <th scope="col">Date</th>
	  <th scope="col">Status</th>
      
    </tr>
  </thead>
  <tbody>




	
	<?php
	$i=False;
	while( $stmt->fetch())
	{
		$i=True;
		/*
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
		</div>";*/
		echo"<tr style='background:white !important;font-size:1.25em;'>
      <td data-label='Serial Id'>$sid</td>
      <td data-label='User Id'>$uid</td>
      <td data-label='Employee Id'>$employeename</td>
      <td data-label='Date'>$date</td>
	  ";
	  if($status=='accepted')
	  {
	  echo"<td data-label='Status' style='color:green;'><b>$status</b></td></tr>";
	  }
	  else if($status=='rejected')
	  {
	  echo"<td data-label='Status' style='color:red;'><b>$status</b></td></tr>";
	  }
	  else 
	  {
	  echo"<td data-label='Status' style='color:blue;'><b>$status</b></td></tr>";
	  }
		
	}
	if($i==False)
{
	echo"<center><b><br><br><br><h3 style='color:white;'>No Requests Found.<br>Please try again later.</h3><br><a href='home.php'>Go Back</a></b></center>";
}
	
	?>
	
		
	  </tbody>
</table>
  <?php include'footer.php'?>
</body>
</html>
