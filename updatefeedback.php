<?php session_start();
ob_start();
include'dbconnect.php';
if(isset($_POST['desc'])!=True)
{
	header('Location:udashboard.php');
}
$uname=$_SESSION['user'];
$ename=$_POST['emp'];
$rating=$_POST['star'];
$feedback=$_POST['desc'];
$service=$_POST['sid'];



$query="INSERT into feedback VALUES('$service','$uname','$ename','$feedback',CURRENT_DATE,'$rating')";

if (!($stmt = $conn->prepare($query))) 
{
	echo "Query Preparation failed: (" . $conn->errno . ") " . $conn->error;
}

if (!$stmt->execute()) 
{
	echo "Query Execute failed: (" . $query->errno . ") " . $query->error;
}

$stmt->close();

$extractrating="SELECT sum(rating),count(rating) FROM feedback WHERE rating<>0 AND employeeid='$ename'";
if (!($stmt1 = $conn->prepare($extractrating))) 
{
	echo "Query Preparation failed: (" . $conn->errno . ") " . $conn->error;
}
if (!$stmt1->execute()) 
{
	echo "Query Execute failed: (" . $extractrating->errno . ") " . $extractrating->error;
}

$stmt1->bind_result($sum,$num);
$stmt1->fetch();
$stmt1->close();

$avg=round($sum/ $num); 
$sql="UPDATE employeedata SET rating=$sum, numrating=$num, avgrating=$avg WHERE username='$ename'";

if ($conn->query($sql) === TRUE) {
    echo "Your Feedback has been submitted successfully !!";
} else {
    echo "Error updating record: " . $conn->error;
}
{
	
}


?>

