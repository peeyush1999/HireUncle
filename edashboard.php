<?php session_start();
ob_start(); // to enable output buffering so that header error can be solved !!
$username=$_SESSION['user'];
if($_SESSION['login']!=True or $_SESSION['type']=='user')
	header('Location:home.php');


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
  <link rel="stylesheet" href="assets/css/aos.css" >
  
  
  
  
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
	.dashboard{
		padding:5px 5px 5px 5px;
		font-size:1.5em
	}
	.dashboard1{
		padding:5px 5px 5px 5px;
		font-size:1.1em
	}
  </style>
</head>
<body>
<!-- NAVIGATION BAR CONTENT-->
<?php include'header.php'?>
<?php include'navbar.php'?>

<div class="container-fluid">
	<div class="grp" style="background-color: #3c3d3f ;width: 60% ;margin:auto;padding:20px 5px 20px 5px; border-radius:20px;min-width:275px">
		<div class="dashboard">
		<?php $firstchar = $username[0];
			echo "<img src='assets/img/alphabets2/$firstchar.png' alt='Employee propic'  height='100px' width='100px'>";
		?>
		</div>
		<div class="dashboard">
		<span style="font-size:1em ;color:white;font-weight:400"> Welcome <?php echo $username ?>!!</span>
		</div>
		<div class="dashboard">
			<a href='viewrequest.php'><button type="button" class="btn" style="width:50%;min-width:175px;padding:2px 2px 2px 2px;"><span class="dashboard1">View Request</span></button></a>
		</div>
		<div class="dashboard">
			<a href='changestatus.php'><button type="button" class="btn" style="width:50%;min-width:175px;padding:2px 2px 2px 2px;"><span class="dashboard1">Accept/Reject</span></button></a>
		</div>
		<div class="dashboard">
		<a href="eprofileupdate.php"><button type="button" class="btn" style="width:50%;min-width:175px;padding:2px 2px 2px 2px;"><span class="dashboard1">Update Profile</span></button></a>
		</div>
		<div class="dashboard">
		<a href="changepassword.php">	<button type="button" class="btn" style="width:50%;min-width:175px;padding:2px 2px 2px 2px;";><span class="dashboard1">Change Password</span></button></a>
		</div>
		<div class="dashboard">
		<a href="logout.php">	<button type="button" class="btn" style="width:50%;min-width:175px;padding:2px 2px 2px 2px;"><span class="dashboard1">Log Out</span></button></a>
		</div>
	</div>
</div>
<br><br>








<?php include'footer.php'?>






<script src="assets\js\aos.js" type="text/javascript"></script>
<script>
		AOS.init({
  duration: 1200,
})

  </script>
  

</body>
</html>
