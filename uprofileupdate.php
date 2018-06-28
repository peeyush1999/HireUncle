<?php
session_start();
ob_start();
include'dbconnect.php';

if($_SESSION['login']!=True OR $_SESSION['type']=='employee')
{
	header('Location:home.php');
}
$username=$_SESSION['user'];
$type=$_SESSION['type'];

$query="SELECT username,name,mobileno,aadharno,email,address,city,state FROM userdata where username='$username'";
$stmt=$conn->prepare($query);
$stmt->execute();

$stmt->bind_result($uname,$name,$mobile,$aadhar,$email,$address,$city,$state);
$stmt->fetch();


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
  user_update_validate();
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
	body{
		background-color:	#555555 !important;
		min-width:700px !important;
	
	}
	
.row
	{
		border-radius: 20px;
		background: #2f2f30;
		padding: 10px; 
		width: 65%;
		
		
		margin:auto !important;
		
		
		margin-bottom:2%;
		margin-top:2%;
	}
.form-group1{
	
	padding-left:15%;
	text-align:left ;
	
	font-size:1.2em;
}
.form-group1 label,.form-group1 input{
	
	width:40%;
	margin:auto;
	
	padding: 15px 0px 15px 0px;
	
	float: none; /* if you had floats before? otherwise inline-block will behave differently */
	display: inline-block;
	vertical-align: middle;    

}
.form-group1 label,.form-group1 select{
	
	width:40%;
	margin:auto;
	
	padding: 15px 0px 15px 0px;
	
	float: none; /* if you had floats before? otherwise inline-block will behave differently */
	display: inline-block;
	vertical-align: middle;    

}
  </style>
</head>
<body>
<!-- NAVIGATION BAR CONTENT-->
<?php include'navbar.php'?>


<!-- update profile code-->
<div class='container'>

	<div class='row'>
		<form class='update-profile' id='update-profile' action='updateuvalidate.php' onsubmit='return user_update_validate();' method='post'>
			<div class='form-group' >
				<label style='font-size:1.5em'><b>Update Profile</b></label>				
			</div>
			
			<div class='form-group1' >
				 <label ><b>Username</b></label> 
				 <?php echo $uname ?>
				 
			</div >
			
			<div class='form-group1' >
				 <label ><b>Name</b></label> 
				 <?php echo $name ?>
			</div >
			
			<div class='form-group1'>
				 <label ><b>Email</b></label> 
				 <input type='text' placeholder='Update Your Email' name='email' class='form-first-name form-control' required <?php echo 'value='.$email ?>> 
			</div >
			<div class='form-group1'>
				 <label><b>Mobile No. </b></label> 
				 <input type='text' placeholder='Update Mobile No.' name='mnumber' class='form-first-name form-control' required <?php echo 'value='.$mobile ?>> 
			</div >
			<div class='form-group1' >
				 <label><b>Aadhar</b></label> 
				 <input type='text' placeholder='Update Your Aadhar' name='anumber' class='aadhar form-control' required <?php echo 'value='.$aadhar ?>> 
			</div>
			<div class='form-group1' >
				 <label><b>Address</b></label> 
				 <input type='text' placeholder='Update Your Address' name='address' class='address form-control' required <?php echo 'value="'.$address.'"' ?>> 
			</div>
			<div class='form-group1' >
				 <label><b>City</b></label> 
				 <input type='text' placeholder='Update Your City' name='city' class='city form-control' required <?php echo 'value='.$city ?>> 
			</div>
			<div class='form-group1'>
				 <label><b>State</b></label> 
									 
						<select name='state' id='state' class='state form-control'>
							<option value='0'>Select</option>
							<option value='1'>Andaman and Nicobar Islands</option>
							<option value='2'>Andhra Pradesh</option>
							<option value='3'>Arunachal Pradesh</option>
							<option value='4'>Assam</option>
							<option value='5'>Bihar</option>
							<option value='6'>Chandigarh</option>
							<option value='7'>Chhattisgarh</option>
							<option value='8'>Dadra and Nagar Haveli</option>
							<option value='9'>Daman and Diu</option>
							<option value='10'>Delhi</option>
							<option value='11'>Goa</option>
							<option value='12'>Gujarat</option>
							<option value='13'>Haryana</option>
							<option value='14'>Himachal Pradesh</option>
							<option value='15'>Jammu and Kashmir</option>
							<option value='16'>Jharkhand</option>
							<option value='17'>Karnataka</option>
							<option value='18'>Kerala</option>
							<option value='19'>Lakshadweep</option>
							<option value='20'>Madhya Pradesh</option>
							<option value='21'>Maharashtra</option>
							<option value='22'>Manipur</option>
							<option value='23'>Meghalaya</option>
							<option value='24'>Mizoram</option>
							<option value='25'>Nagaland</option>
							<option value='26'>Odisha</option>
							<option value='27'>Puducherry</option>
							<option value='28'>Punjab</option>
							<option value='29'>Rajasthan</option>
							<option value='30'>Sikkim</option>
							<option value='31'>Tamil Nadu</option>
							<option value='32'>Telangana</option>
							<option value='33'>Tripura</option>
							<option value='34'>Uttar Pradesh</option>
							<option value='35'>Uttarakhand</option>
							<option value='36'>West Bengal</option>
							</select>
					 
				</div>
			<div class='form-group' align='center' style='margin:20px 0px 20px 0px;' >
			 <button type='submit' name='submit'  class='btn' style='width:30%'>Update</button>  <button type='reset' name='reset'  class='btn' style='width:30%' >Reset </button>
			</div>
		
				
			
		
		</form>	
	
	
	</div>
</div>


<?php include'footer.php'?>
<!-- Animation on scroll script--> 
<script src='assets\js\aos.js' type='text/javascript'></script>
<script>
		AOS.init({
  duration: 1200,
})

  </script>

  
</body>
</html>
