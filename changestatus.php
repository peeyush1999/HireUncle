<?php session_start();
ob_start();
include'dbconnect.php';
if(isset($_SESSION['login'])!=True or $_SESSION['type']!='employee')
{
	header('Location:home.php');
}
$uname=$_SESSION['user'];

$query="SELECT serviceid, userid, employeeid, date, status FROM request WHERE employeeid='$uname' AND status='pending' ORDER BY serviceid desc";

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
<span style="font-size:2em;color:white;text-align:center;">Change Status</span><br><br>
  <table style="width:80% !important ;margin-top:10px;">
  
  <thead>
    <tr style="background: #1d1e1e !important;color:white;font-size:1.5em;">
      <th scope="col">Serial Id</th>
      <th scope="col">User Id</th>
      <th scope="col">Employee Id</th>
      <th scope="col">Date</th>
	  <th scope="col">Status</th>
      <th scope="col">Action</th> 
    </tr>
  </thead>
  <tbody>



	
		<?php 
		while( $stmt->fetch())
		{
		
/*		echo "
		<div class='data'>
			
			<div class='col-sm-2' id='coldata'>
			$sid
			</div>
			<div class='col-sm-2' id='coldata'>
			$uid
			</div>
			<div class='col-sm-2' id='coldata'>
			$employeename
			</div>
			<div class='col-sm-1' id='coldata' >
			$date
			
			</div>
			<div class='col-sm-1' id='coldata' style='color:white;' >
			$status
			</div>
			<div class='col-sm-4' id='coldata' >
			";*/
			
			echo"    <tr style='background:white !important;font-size:1.25em;'>
      <td data-label='Serial Id'>$sid</td>
      <td data-label='User Id'>$uid</td>
      <td data-label='Employee Id'>$employeename</td>
      <td data-label='Date'>$date</td>
	  <td data-label='Status'>$status</td>";
			
		if($status=='pending')
		{	echo"<td data-label='Action'>";
			echo "<form action='changestatusvalidate.php' method='post'>";
			echo "<input type='hidden' name='serid' value=$sid>";
			echo "<button type='submit' class='btn' id='button' name='act' value='accepted' style='margin-bottom:5px;max-width:100px;'>Accept</button>
			<button type='submit' class='btn' id='button' name='act' value='rejected' style='margin-bottom:5px;max-width:100px;'>Reject</button></td>";
			echo "</form>";
		}
		
/*		echo"</div>
		</div>";*/
		}
		
		?>
	
	<!--
		<div class='data'>
			
			<div class='col-sm-2' id='coldata'>
			20170908154
			</div>
			<div class='col-sm-2' id='coldata'>
			pari
			</div>
			<div class='col-sm-2' id='coldata'>
			rakesh
			</div>
			<div class='col-sm-2' id='coldata'>
			08-07-2017
			</div>
			<div class='col-sm-4' id='serialid'>
			<button class='btn' id='button'>Accept</button>
			<button class='btn' id='button'>Reject</button>
			
			</div>
		</div>
	-->

 </tbody>
</table>
<?php include'footer.php'?>

  
</body>
</html>
