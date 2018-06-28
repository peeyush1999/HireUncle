<?php session_start();
include'dbconnect.php';
if(isset($_POST['email'])!=True)
{
	header('Location:udashboard.php');
}
$username=$_SESSION['user'];
$email=$_POST['email'];
$mobile=$_POST['mnumber'];
$aadhar=$_POST['anumber'];
$address=$_POST['address'];
$city=$_POST['city'];
$state=$_POST['state'];


$updatequery="UPDATE userdata SET email='$email', mobileno='$mobile', aadharno='$aadhar',address='$address',city='$city',state='$state' WHERE username='$username'";
$stmt=$conn->prepare($updatequery);
$stmt->execute();


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
  
  
  <script src="assets/js/validate.js" type="text/javascript">
  user_reg_validate();
  employee_reg_validate();
  
  </script>
  <style>
  
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
  </style>
</head>
<body>
<!-- NAVIGATION BAR CONTENT-->
<?php include'header.php'?>
<?php include'navbar.php'?>
<div class="container">
	<br><br><br>
	<p style="font-size:1.5em;color:white" align="center">User  !!  You have successfully updated your Profile<br>
	<br><br><br>
<?php echo $updatequery;?>
	click <a href="home.php" >HERE</a> to goto Home Page.</p>
	
</div>


<?php include'footer.php'?>
<!-- Animation on scroll script--> 
<script src="assets\js\aos.js" type="text/javascript"></script>
<script>
		AOS.init({
  duration: 1200,
})

  </script>

  
</body>
</html>
