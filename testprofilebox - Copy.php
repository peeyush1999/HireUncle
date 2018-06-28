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
		   font-size:15px;
		   font: "arial" ;
		   margin-right:0px;
		   background-color:yellow;
		   
		}
		.row
			{
				border-radius: 20px;
				background: #2f2f30;
				padding: 10px; 
				width: 70%;
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
		
				<div class="col-sm-4" style="float:left; width:25%; padding:0px 0px 0px 0px;min-width:150px">
				<img src="assets/ico/plumber.png" alt="plumber"  style="border-radius: 20px;" align="left">
				</div>
				<div  id="col-sm-6" align="left" style="width:30% ;float:left; margin-left: 20px;margin-right:20px;margin-top:5px;min-width:250px; ">
					
						<div >
							<label class="attribute">Name</label>: Pappu
						</div >
						<div>
							<label class="attribute">Speciality</label>: Plumber
						</div>
						<div>
							<label class="attribute">Experience</label>: 5 yrs
						</div>
						<div>
							<label class="attribute">Ph.No.</label>: 1231231231
						</div>
						<div>
							<label class="attribute">Rating</label>: stars
						</div>
						
				</div>
				
				<div  class="col-sm-2"  style=" width:30%;float:left; margin-left: 30px;margin-right:5px; margin-top:15px;  min-width:100px;">
					
					<button class="btn" style="margin:15px 0px 10px 0px; min-width:50px;">View Feedbacks</button>
					
					
					<button class="btn" style="margin:10px 0px 15px 0px; min-width:50px;">Hire</button>
					
				</div>
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
