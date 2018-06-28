
<?php include'navbar.php'?>
<?php include'dbconnect.php'?>

<?php 

	$skills=$_POST["skill"];
	$citys=$_POST["city"];
	
	$ratings=$_POST["rating"];
	
	$query="SELECT username,name,mobileno,aadharno,email,address,city,state,skill,exp,rating,numrating FROM employeedata WHERE skill='$skills' AND city='$citys' AND rating = '$ratings' ";
	
	
	if ($stmt = $conn->prepare($query)) 
	{

		/* execute statement */
		$stmt->execute();

		/* bind result variables */
		$stmt->bind_result($uname,$name,$mnumber,$anumber,$email,$addr,$city,$state,$skill,$exp,$rating,$numrating);

		/* fetch values */
		while ($stmt->fetch())
		{
			printf ("%s %s %d %d %s %s %s %d %d %d %d %d\n", $uname,$name,$mnumber,$anumber,$email,$addr,$city,$state,$skill,$exp,$rating,$numrating);
		}
	}
	else
	{
		echo "Execute failed: (" . $query->errno . ") " . $query->error;
	}

    /* close statement */
    $stmt->close();

	
	
	
	?>

<div class="container">
	<div class="row">
	hello
	hello
	</div>
</div>
  
<?php include'footer.php'?>


