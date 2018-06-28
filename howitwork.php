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
	body{
			/* suppose you want minimun width of 1000px */
		   min-height:500px;
		   min-width:600px;
		   font-size:15px;
		   font: "arial" ;
		   margin-right:0px;
		   background-color:yellow;
		   
		}
		.row
			{
				border-radius: 20px;
				background: #2f2f30;
				padding: 30px; 
				width: 90%;
				min-width:550px;
				
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
  
</head>
<body>
<!-- NAVIGATION BAR CONTENT-->
<?php include'header.php'?>
<?php include'navbar.php'?>
	<!-- Profile        box code-->

				
				

	<div class="container" >
		<div class="row" >
		
		<div class="heading" align="center" style="margin:5px 5px 5px 5px;">
		<span style="color:#7fffff ;font-size:3em;font-wieght:bold;" data-aos="zoom-in">How It Works</span><br><br>
		</div>
		<div class="que" align="left" style="font-size:1em;" data-aos="fade-right">
		<span style="color:#fff468 ;font-weight:400"># Searching Employee</span><br><br>
			<p>Goto Home page there you find the 'Find Domestic Helper Portal' . Enter the required field
			Hit 'Go' button or if you want to clear the field press 'Reset' button<br><br>
			HOME > FIND DOMESTIC PORTAL > ENTER DETAILS > GO.</p><br><br>
			<img src="assets/img/hiw1.jpg" alt="image" width="50%">
		</div>
		<br>
		<div class="que" align="left" style="font-size:1em;" data-aos="fade-left">
		<span style="color:#fff468 ;font-weight:400"># How To Create Account</span><br>
		<p>To create account ,Find SignUp button on navigation bar then you will be redirected to page
		Select one of the option USER or EMPLOYEE .After selecting ,A pop-up will appear which require's
		your details ,Make sure that you provide correct details and fill each field,Press SUBMIT button.
		<br><br>
		
		SignUp(navigation bar) > SELECT USER OR EMPLOYEE > FILL DETAILS > SUBMIT<br><br>
		</p><img src="assets/img/hiw2.jpg" alt="image" width="50%">
		
			
		</div>
		<br>
		<div class="que" align="left" style="font-size:1em;" data-aos="fade-right">
		<span style="color:#fff468 ;font-weight:400"># How To Login Into Account</span><br>
		<p>To Login ,Find Login button on navigation bar .A pop up comes out,fill required
		details,then click Submit.
		<br><br>
		Login(navigation bar) > SELECT USER OR EMPLOYEE > FILL DETAILS > SUBMIT
		<br><br></p>
		<img src="assets/img/hiw3.jpg" alt="image" width="50%">
				   
		</div>
		<br>
		<div class="que" align="left" style="font-size:1em;" data-aos="fade-left">
		<span style="color:#fff468 ;font-weight:400"># How to Hire Employ</span><br>
		<p>To Hire Employee make sure that you are logged in as User .If you are not
		then login as shown above then search for your required field .Search result will 
		appear find appropriate Employee .Click on HIRE button.
		<br><br>
		HOME > FIND DOMESTIC PORTAL > ENTER DETAILS > CHOOSE EMPLOYEE > HIRE.
		<br><br>
		<img src="assets/img/hiw4.jpg" alt="image" width="50%">

		
			   
		</div>
		<br>
		<!--
		<div class="que" align="left" style="font-size:1em;" data-aos="fade-right" >
		<span style="color:#fff468 ;font-weight:400"># How to Update Profile</span><br>
			
		
				   
		</div>
		<br>
		<div class="que" align="left" style="font-size:1em;" data-aos="fade-left">
		<span style="color:#fff468 ;font-weight:400"># How to Reset Password</span><br>
			
			
				   
		</div>
		<br>
		<div class="que" align="left" style="font-size:1em;" data-aos="fade-right" >
		<span style="color:#fff468 ;font-weight:400"># How to Delete Feedback</span><br>
				   
		</div>
		<br><br>
		-->
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
