<?php

include'dbconnect.php';


$action=$_POST['act'];
$service=$_POST['serid'];


$query="UPDATE request SET status='$action' WHERE serviceid='$service'";
$stmt=$conn->prepare($query);
$stmt->execute();

header('Location:viewrequest.php');

?>