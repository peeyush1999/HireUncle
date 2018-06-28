<?php session_start();
	ob_start();

	/*to check whether uname was post from login.php*/
	if(isset($_POST['uname'])!=True)
		header('Location:home.php');
	
	$_SESSION['user'] = '';
	$_SESSION['login'] = '';
	$_SESSION['type']='';


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
  </style>
</head>
<body>
<!-- NAVIGATION BAR CONTENT-->
<?php include'header.php'?>

<?php include'navbar.php'?>


<?php

	include 'dbconnect.php';
?>
<?php
	$uname=$_POST["uname"];
	$password=$_POST["password"];
	$password=md5($password);
	$type=$_POST["type"];
	
	
	if($type=="employee")
	{
		$query ="SELECT username from employeedata WHERE username='$uname' AND password='$password'";
		if (!($stmt = $conn->prepare($query))) 
		{
			echo "Prepare failed: (" . $conn->errno . ") " . $conn->error;
		}
		
		if (!$stmt->execute()) 
		{
			echo "Execute failed: (" . $query->errno . ") " . $query->error;
		}
		else
		{	$stmt->store_result();
			if($stmt->num_rows>0) 
			{
				echo "Welcome ! ".$uname;
				$_SESSION['user'] = $uname;
				$_SESSION['login'] = True;
				$_SESSION['type']=$type;	
				header('Location:edashboard.php');
			}
			else
			{	
				/*employee wron password*/
			
				
				echo "<p style='font-size:1.5em;color:white' align='center'>UserName - Password of employee is Invalid </p>";
				
				
				echo "<br><p style='font-size:1.5em;color:white' align='center'>Please Login Again or <a href='home.php'>Click here</a> to goto home page !</p>";
			
				
			
			}
			
		}
		
	}
	if($type=="user")
	{
		$query ="SELECT username from userdata WHERE username='$uname' AND password='$password'";
		if (!($stmt = $conn->prepare($query))) 
		{
			/*echo "Prepare failed: (" . $conn->errno . ") " . $conn->error;*/
		}
		
		if (!$stmt->execute()) 
		{
			//echo "Execute failed: (" . $query->errno . ") " . $query->error;
		}
		else
		{	$stmt->store_result();
			if($stmt->num_rows>0) 
			{
				//echo "Welcome ! ".$uname;
				$_SESSION['user'] = $uname;
				$_SESSION['login'] = True;
				$_SESSION['type']=$type;	
				header('Location:udashboard.php');
			
			}
			else
			{
				echo "<p style='font-size:1.5em;color:white' align='center'>UserName - Password of user Invalid</p>";
				echo "<p style='font-size:1.5em;color:white' align='center'>Please Login Again or <a href='home.php'>CLICK HERE</a> to goto home page !</p>";
			}
			
		}
		
	}
	
	
	
?>
<?php include'footer.php'?>






<script src="assets\js\aos.js" type="text/javascript"></script>
<script>
		AOS.init({
  duration: 1200,
})

  </script>
  

</body>
</html>
