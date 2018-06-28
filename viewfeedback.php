<?php session_start();
ob_start();
include 'dbconnect.php';
if(isset($_POST['ename'])!=True)
{
	header('Location:home.php');
}
$emp=$_POST['ename'];

?>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Hireuncle.com</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <link rel="stylesheet" href="assets\css\aos.css" >
  
  
  
  <script src="assets/js/validate.js" type="text/javascript">
  
  user_reg_validate();
  employee_reg_validate();
  
  </script>
  <link rel="stylesheet" href="assets/css/starstyle.css">
  
  <style>
    /* Add a gray background color and some padding to the footer */
    

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
  </style>
  
</head>
<body>
<!-- NAVIGATION BAR CONTENT-->
<?php include'header.php'?>
<?php include'navbar.php'?>
											<!-- Profile        box code-->
<style type="text/css">
body{
	/* suppose you want minimun width of 1000px */
   min-height:500px;
   
   font-size:15px;
   font: "arial" ;
   margin:auto;
   
   
	background-color:	#555555 !important;
	min-width:700px !important;
	
   
}
.row
	{
		border-radius: 20px;
		background: #2f2f30;
		padding: 10px; 
		width: 70%;
		min-width:550px;
		
		margin:auto;
		font-size:1.5em;
		color:white;
		
		margin-bottom:2%;
		margin-top:2%;
	}



#profile {
	 /* Account for margins + border values */
	width:35%;
	float: left;
	height: 20%;
	/*padding: 0px 0px  ;
	margin: 5px 5px 5px 5px;*/
}


.attribute{
	
	font-weight:400;
	color:#7fffff;
}

</style>
<?php
//------------------------------------------------


echo "<BR><h3 style='color:white;'>Feedbacks for : <u>$emp</u></h3>";

$query="SELECT serviceid, userid,employeeid,feedback,date,rating FROM feedback WHERE employeeid='$emp' AND rating<>0";

if (!($stmt = $conn->prepare($query))) 
{
	echo "Query Preparation failed: (" . $conn->errno . ") " . $conn->error;
}

if (!$stmt->execute()) 
{
	echo "Query Execute failed: (" . $query->errno . ") " . $query->error;
}
$stmt->bind_result($serid,$uname,$ename,$feedback,$date,$rating);
//------------------------------------------------

 
$i=False;
while( $stmt->fetch())
{	$i=True;
	
 
 
 
echo"
<div class='container' >
	<div class='row' >
	<span style='margin-right:150px';><label>Request Id:</label> $serid</span>    <label>Feedback By:</label> $uname
	<br><br>
	<label>Feedback</label><br>'$feedback'
	<br><br>
	
	<img src='assets/img/$rating.jpg'>
	
	</div>
</div>
";


}
if($i==False)
{
	echo"<center><b><br><br><br><h3 style='color:white;'>No matching results found.<br>Please try changing the parameneters.</h3><br><a href='home.php'>Go Back</a></b></center>";
}
?>			
																
															
<br><br><br><br><br><br>
<?php include'footer.php'?>

<script src="assets\js\aos.js" type="text/javascript"></script>
<script>
		AOS.init({
  duration: 1500,
})
  </script>

</body>
</html>
