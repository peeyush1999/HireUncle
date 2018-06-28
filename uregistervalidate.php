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
	$state=$_POST["state"];
	
	
		include'navbar.php';
	$query = $conn->prepare("INSERT INTO userdata (username,name,password,mobileno,aadharno,email,address,city,state) VALUES (?,?,?,?,?,?,?,?,?)");
	$query->bind_param("sssiisssi",$uname,$name,$password,$mnumber,$anumber,$email,$addr,$city,$state);
	
	if (!$query->execute()) 
	{
		echo "<br><br><center><h2 style='font-weight:bold;color:white;'>";
		echo "Execute failed: (" . $query->errno . ") " . $query->error;
		echo "</h2><a href='home.php'>Goto Home</a><br><br><Br></center>";
		
	}
	else
	{
		echo "<br><br><center><h2 style='font-weight:bold;color:white;'>";
		echo "Dear $name, You are successfully registered !";
		echo "</h2><a href='home.php'>Goto Home</a><br><br><Br></center>";
	}
	
	
	
include'footer.php';	
?>
	
	
	
	
	
	