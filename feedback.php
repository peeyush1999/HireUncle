<?php
session_start();
ob_start();
include'dbconnect.php';

if(isset($_SESSION['login'])!=True or $_SESSION['type']=='employee')
{
	header('Location:home.php');
}
$uname=$_SESSION['user'];
$serid=$_POST['serid'];
$eid=$_POST['eid'];





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
  
  <link rel="stylesheet" href="assets\css\aos.css" >
  
  
  
  <script src="assets/js/validate.js" type="text/javascript">

  feedback_validate();
  
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
	textarea {
  width: 100% !important; 
  max-height:300px;
  height: 200px !important;
}
  </style>
  
</head>
<body>
<!-- NAVIGATION BAR CONTENT-->
<?php include'header.php'?>
<?php include'navbar.php'?>
											<!-- Profile        box code-->
<style type="text/css">
	body{
		/* suppose you want minimun width of 1000px */
	   min-height:500px;
	   
	   font-size:15px;
	   font: "arial" ;
	   margin:auto;
	   background-color:	#555555 !important;
		min-width:700px !important;
	
	   
	}
	.row
		{
			border-radius: 20px;
			background: #2f2f30;
			padding: 10px; 
			width: 70%;
			
			
			margin:auto;
			font-size:1.5em;
			color:white;
			
			margin-bottom:2%;
			margin-top:2%;
		}



	#profile {
		 /* Account for margins + border values */
		width:35%;
		float: left;
		height: 20%;
		/*padding: 0px 0px  ;
		margin: 5px 5px 5px 5px;*/
	}

	
	.attribute{
		
		
		color:#7fffff;
	}
	
	</style>

	<div class="container" >
		<div class="row" style="min-width:600px !important;" >
				<form action="updatefeedback.php" id="feedback"  onsubmit="return feedback_validate();" method="post"><!-- addd action to form for feed back-->
				
				
				<div class="col-sm-4" style="float:left; width:20%; padding:0px 0px 0px 0px;margin-left:18px;">
				<img src="assets/ico/plumber.png" alt="plumber"  style="border-radius: 20px;" align="left">
				</div>
				<div  id="col-sm-6" align="left" style="width:25% ;float:left; margin-left: 20px;margin-right:20px;margin-top:5px;min-width:300px !important; ">
					
						<div >
							<label class="attribute">Feedback Portal</label>
						</div >
						<div >
							<label class="attribute">Feedback By</label>: <?php echo $uname ?>
						</div >
						<div >
							<label class="attribute">Employee Name</label>: <?php echo $eid ?>
						</div >
						<div>
							<label class="attribute">Service Id</label>: <?php echo $serid ?>
						</div>
						
						<!--<div>
							<label class="attribute">Rating</label>: stars
						</div>-->
						
				</div>
				
				<div  class="col-sm-2"  style=" width:25%;float:left; margin-left: 30px;margin-right:5px; margin-top:15px; ">
					<!--button to submit feedback form-->
					<button class="btn" type="submit" form="feedback" value="Submit" style="margin:10px 0px 10px 0px;padding:0px 0px 0px 0px;min-width:140px !important;">Submit Feedback</button>
					<!-- button to reset form-->
					
					<button class="btn" name="reset" type="reset" form="feedback" value="reset" style="margin:10px 0px 15px 0px; min-width:140px !important; ">Reset</button>
					
				</div>
				<div class="col-sm-12" style="margin:20px 0px 10px 0px;">
				<textarea name="desc" cols="40" rows="20" placeholder="Write Feedback For Employee And Also Give Ratings...." required></textarea>
				<div style="margin-top:20px;"><label>Rate your overall experience : </label></div>   <!-- add name-->
				<div class="stars" style="align:center;">
												  <!--<form action="">-->
													
													<input class="star star-5" id="star-5" type="radio" name="star" value="5">
													<label class="star star-5" for="star-5"></label>
													<input class="star star-4" id="star-4" type="radio" name="star" value="4">
													<label class="star star-4" for="star-4"></label>
													<input class="star star-3" id="star-3" type="radio" name="star" value="3">
													<label class="star star-3" for="star-3"></label>
													<input class="star star-2" id="star-2" type="radio" name="star" value="2">
													<label class="star star-2" for="star-2"></label>
													<input class="star star-1" id="star-1" type="radio" name="star" value="1">
													<label class="star star-1" for="star-1"></label>
												  
						</div>
				</div>
				<?php echo "<input type='hidden' name='emp' value='$eid'>"; ?>
				<?php echo "<input type='hidden' name='sid' value='$serid'>"; ?>
		</form>
		</div>
		
			
		
	</div>
																	
																
															

<?php include'footer.php'?>

<script src="assets\js\aos.js" type="text/javascript"></script>
<script>
		AOS.init({
  duration: 1500,
})
  </script>

</body>
</html>
