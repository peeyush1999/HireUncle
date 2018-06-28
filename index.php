
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
  
  
  <link rel="stylesheet" href="assets/css/aos.css" >
  
  
  <script src="assets/js/validate.js" type="text/javascript">
  
  
  user_reg_validate();
  employee_reg_validate();
  
  </script>
  <link rel="stylesheet" href="assets/css/starstyle.css">
  <style>
    /* Add a gray background color and some padding to the footer */
    
	body{
		background-color:	#555555 !important;
	min-width:500px !important;
	
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
	



	
  </style>
</head>
<body>
<!-- NAVIGATION BAR CONTENT-->
<?php include'header.php'?>
<?php include'navbar.php'?>

						<!-- home content code-->
										<div class="container">
											<div class="row">
											  <div class="col-sm-8">
												<div id="myCarousel" class="carousel slide" data-ride="carousel">
												  <!-- Indicators -->
												  <ol class="carousel-indicators">
													<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
													<li data-target="#myCarousel" data-slide-to="1"></li>
													
												  </ol>

												  <!-- Wrapper for slides -->
												  <div class="carousel-inner" role="listbox">
													<div class="item active">
													  <img src="assets/img/banner2.jpg" style="height:auto;" alt="Image">
													        
													</div>
													
													
													
													

													<div class="item">
													  <img src="assets/img/banner12.jpg" alt="Image">
													       
													</div>
												  </div>

												  <!-- Left and right controls -->
												  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
													<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
													<span class="sr-only">Previous</span>
												  </a>
												  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
													<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
													<span class="sr-only">Next</span>
												  </a>
												</div>
											  </div>
											  <!-- search box-->
											  
										
											  
											  <div class="col-sm-4" style="padding-top:5px;" >
												
														<div class="searchbox " style="background-color:#313233;border-radius:20px;height:120%;padding:8px 5px 10px 5px">
															<div class="name">
															<label style="font-size:1.5em;">Find Your Domestic Helper</label>
															</div>
															<form action="testprofilebox.php" method="post" ><!-- add validation-->
															<div class="sbox" style="margin:20px 15px 15px 15px;">
																	 
																	 
																		<select id="skill" name="skill"  class="form-first-name form-control">
																			<option value="0">Select Skill...</option>
																			<option value="Carpenter">Carpenter</option>
																			<option value="Carpet Cleaner">Carpet Cleaner</option>
																			<option value="Driver Service">Driver Service</option>
																			<option value="Duplicate Key Maker">Duplicate Key Maker</option>
																			<option value="Electrician">Electrician</option>
																			<option value="Mason">Mason</option>
																			<option value="Painter">Painter</option>
																			<option value="Pest Control">Pest Control</option>
																			<option value="Plumber">Plumber</option>
																			<option value="Repairs">Repairs</option>
																			<option value="Towing Service">Towing Service</option>
																			<option value="Gardner">Gardner</option>
																			<option value="Baby Sitter">Baby Sitter</option>
																		</select>	
																	 
																</div>
															
															<div class="sbox" style="margin:10px 15px 20px 15px;">
																 
																<input type="text" name="city" placeholder="Enter Your City"  class="form-first-name form-control" required> 
															</div>
															
															
															<div class="sbox" style="20px 15px 15px 15px;">
																
																<select id="rating" name="rating" style="margin:auto ;width:93%"  class="form-first-name form-control">
																			<option value="0">Select Rating...</option>
																			<option value="1">1</option>
																			<option value="2">2</option>
																			<option value="3">3</option>
																			<option value="4">4</option>
																			<option value="5">5</option>
																</select>
																	
															</div>
															<br>
															<div class="sbox">
															<button type="submit" name="submit"  class="btn" style="width:30%;">Go </button>  <button type="reset" name="reset"  class="btn" style="width:30%;" >   Reset </button> 
															</div>
															<br><br>
														</div>
												</form>
											  </div>
											<!-- search box end-->
											  </div>
											<hr>
											</div>
											<div class="container text-center" >    
											  <h3 style="color:white !important;font-weight:bold;border:4px ;border-color:gray;">One Stop Solution For All Your Needs</h3>
											  <br>
											  <div class="row" style="color:white;font-size:1.5em;" >
												<div class="col-sm-2" data-aos="fade-right" >
												  <img src="assets/img/car1.png" class="img-responsive"  alt="Image">
												  <p>Carpenter</p>
												</div>
												<div class="col-sm-2" data-aos="fade-left" > 
												  <img src="assets/img/plumber.png" class="img-responsive" style="width:100%" alt="Image">
												  <p>Plumber</p>    
												</div>
												<div class="col-sm-2" data-aos="fade-right" > 
												  <img src="assets/img/elec.png" class="img-responsive" style="width:100%" alt="Image">
												  <p>Electrician</p>
												</div>
												<div class="col-sm-2" data-aos="fade-left" > 
												  <img src="assets/img/painter.png" class="img-responsive" style="width:100%" alt="Image">
												  <p>Painter</p>
												</div> 
												<div class="col-sm-2" data-aos="fade-right" > 
												  <img src="assets/img/gardner.png" class="img-responsive" style="width:100%" alt="Image">
												  <p>Gardener</p>
												</div>     
												<div class="col-sm-2" data-aos="fade-left" > 
												  <img src="assets/img/driver.png" class="img-responsive" style="width:100%" alt="Image">
												  <p>Driver</p>
												</div> 
											  </div>
											  <hr>
											</div>
	
											<div class="container text-center">    
											  <h3 style="color:white !important;font-weight:bold;border:4px ;border-color:gray;" >What they say about us !</h3>
											  <br>
											  <div class="row" >
												
												  
												</div>
												<div class="col-sm-4" data-aos="flip-up" style="padding:20px; margin:auto;"> 
												  <img src="assets/img/testimonial311.png" class="img-responsive" style="width:100%" alt="Image">
												 
												</div>
												<div class="col-sm-4" data-aos="flip-up" style="padding:20px; margin:auto;">
												  <img src="assets/img/testimonial32.png" class="img-responsive" style="width:100%" alt="Image">
												</div>
												<div class="col-sm-4" data-aos="flip-up" style="padding:20px; margin:auto;">
												
												  <img src="assets/img/testimonial33.png" class="img-responsive"  alt=Image">
												</div>  
											  </div>
											  
											</div>

											

						
						<!-- home content end-->
<?php include'footer.php'?>

<!-- Animation on scroll script--> 
<script src="assets\js\aos.js" type="text/javascript"></script>
<script>
		AOS.init({
  duration: 1200,
})

  </script>

</body>
</html>
