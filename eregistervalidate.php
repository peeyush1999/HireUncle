<?php

	include 'dbconnect.php';
?>
<?php
	
	
	$uname=$_POST["uname"];
	$name=$_POST["name"];
	$password=$_POST["password"];
	$password=md5($password);
	$mnumber=$_POST["mnumber"];
	$anumber=$_POST["anumber"];
	$email=$_POST["email"];
	$addr=$_POST["addr"];
	$city=$_POST["city"];
	$state=$_POST["state1"];
	$skill=$_POST["skill"];
	$exp=$_POST["exp"];
	
	
	$query = $conn->prepare("INSERT INTO employeedata (username,name,password,mobileno,aadharno,email,address,city,state,skill,exp) VALUES (?,?,?,?,?,?,?,?,?,?,?)");
	$query->bind_param("sssiisssisi",$uname,$name,$password,$mnumber,$anumber,$email,$addr,$city,$state,$skill,$exp);
	include'navbar.php';
	if (!$query->execute()) 
	{
		echo "<br><br><center><h2 style='font-weight:bold;color:white'>";
		echo "Execute failed: (" . $query->errno . ") " . $query->error;
		echo "</h2></center>";
	}
	else
	{
		echo "<br><br><center><h2 style='font-weight:bold;color:white;'>";
		echo "Dear $name, You are successfully registered !";
		echo "</h2><a href='home.php'>Goto Home</a><br><br><Br></center>";
	}
	
	
	
	include'footer.php';
?>
	
	
	
	
	
	
	