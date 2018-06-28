<?php 
session_start();

if(isset($_POST['ename'])!=True)
{
	header('Location:udashboard.php');
}

include'dbconnect.php';
$ename = $_POST['ename'];
$uid = $_SESSION['user'];
$count = 0;


$query="SELECT count(*) as counter FROM request WHERE employeeid='$ename' ";

$stmt = $conn->prepare($query);
$stmt->execute();

$stmt->bind_result($count);
$stmt->fetch();
$count = $count ;
$stmt->close();



$sid = $ename.(string)$count;

$status='pending';
$date=date("d-m-Y");

$insquery = "INSERT INTO request(serviceid, userid, employeeid,status,date) VALUES ('$sid','$uid','$ename','$status',CURRENT_DATE)";
/*
$stmt1 = $conn->prepare($insquery);
echo $sid,$uid,$ename,$status,$date;
$stmt1->bind_param("sssss",$sid,$uid,$ename,$status,$date);
$stmt1->execute();
*/

if($stmt1 = $conn->prepare($insquery)) { // assuming $mysqli is the connection
    $stmt1->execute();
    // any additional code you need would go here.
} else {
    $error = $conn->errno . ' ' . $conn->error;
    echo $error; // 1054 Unknown column 'foo' in 'field list'
}














include'navbar.php';
echo"<br><br><br><br><br><br>";

echo "<p style='font-size:2em ;color:white;'> Your Request has been successfully registered.<br><br> Please visit '<a href='viewrequest.php'>'View Request'</a> from your dashboard (Click on Link) to know the current status of your request</p>";

echo"<br><br><br><br><br><br><br><br><br><br><br><br>";

include'footer.php';






?>