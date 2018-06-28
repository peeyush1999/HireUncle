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
	
.head{
	font-size:35px;
	padding: 10px 5px 15px 5px;
	color:white;
}
#choice{
	min-width:300px;
}

  </style>
</head>
<body>
<!-- NAVIGATION BAR CONTENT-->
<?php include'header.php'?>
<?php include'navbar.php'?>



<!-- Register code-->

<div class="container">
					<div class="head">
					<label>REGISTRATION PAGE</label>
					</div>
					<div class="head">
					Please select Account Type to continue 
					
					</div>
					<br><br>
					<div class="col-sm-6" style="margin:10px 0px 20px 0px ">
					<img src="assets/img/man.png" alt="user" height="47%" width="47%"><br><br>
					<a class="btn1 launch-modal" href="#" data-modal-id="modal-register-user"  ><button class="btn" style="width:30%; "><span id="choice">User</span></button></a>
					</div>
					
					
					<!--  User REGistration TEST  CODE-->
					

					<div class="modal fade" id="modal-register-user" tabindex="-1" role="dialog" aria-labelledby="modal-register-label" aria-hidden="true"   >
        	<div class="modal-dialog">
        		<div class="modal-content">
					
        			
        			<div class="modal-header">
        				<button type="button" class="close" data-dismiss="modal">
        					<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
        				</button>
						<center>
						<b>
        				<h3 class="modal-title" id="modal-register-label" style="font-size:200%">User Registration Page</h3>
        				
						<p>Fill in the form below to get yourself registered:</p>
						</b>
						</center>
        			</div>
        			
        			<div class="modal-body">
						
					<form class="registration-form" id="register" action="uregistervalidate.php"  onsubmit="return user_reg_validate();" method="post" >
						
								<div class="form-group">
									 <label><b>Username</b></label> 
									 <input type="text" placeholder="Enter Username" name="uname" class="form-first-name form-control" required> 
								</div>
								
								<div class="form-group">			
								 <label><b>Name</b></label> 
									 <input type="text" placeholder="Enter Your Name" name="name" class="form-first-name form-control" required> 
								</div>
								<div class="form-group">
									 <label><b>Password</b></label> 
								<input type="password" placeholder="Enter Password" name="password" class="form-first-name form-control" required> 
								</div>
								<div class="form-group">
									 <label><b>Confirm Password</b></label> 
									 <input type="password" placeholder="Confirm Password" name="cpassword" class="form-first-name form-control" required> 
								</div>
								<div class="form-group">
									 <label><b>Mobile No.</b></label> 
									 <input type="text" placeholder="Enter Mobile Number" name="mnumber" class="form-first-name form-control" required> 
								</div>
								<div class="form-group">
									 <label><b>Aadhar No.</b></label> 
									 <input type="text" placeholder="Enter Your Aadhar Number" name="anumber" class="form-first-name form-control" required> 
								</div>
								<div class="form-group">
									 <label><b>Email</b></label> 
									 <input type="text" placeholder="Enter Your Email" name="email" class="form-first-name form-control" required> 
								</div>
								
								<div class="form-group">
									 <label><b>Address</b></label> 
									 <input type="text" name="addr" placeholder="Enter Your Address" class="form-first-name form-control" required> 
								</div>
								<div class="form-group">
									 <label><b>City</b></label> 
									 <input type="text" name="city" placeholder="Enter Your City" class="form-first-name form-control" required> 
								</div>
								<div class="form-group">
									 <label><b>State</b></label> 
									 
										<select name="state" id="state" class="form-first-name form-control">
											<option value="0">Select</option>
											<option value="1">Andaman and Nicobar Islands</option>
											<option value="2">Andhra Pradesh</option>
											<option value="3">Arunachal Pradesh</option>
											<option value="4">Assam</option>
											<option value="5">Bihar</option>
											<option value="6">Chandigarh</option>
											<option value="7">Chhattisgarh</option>
											<option value="8">Dadra and Nagar Haveli</option>
											<option value="9">Daman and Diu</option>
											<option value="10">Delhi</option>
											<option value="11">Goa</option>
											<option value="12">Gujarat</option>
											<option value="13">Haryana</option>
											<option value="14">Himachal Pradesh</option>
											<option value="15">Jammu and Kashmir</option>
											<option value="16">Jharkhand</option>
											<option value="17">Karnataka</option>
											<option value="18">Kerala</option>
											<option value="19">Lakshadweep</option>
											<option value="20">Madhya Pradesh</option>
											<option value="21">Maharashtra</option>
											<option value="22">Manipur</option>
											<option value="23">Meghalaya</option>
											<option value="24">Mizoram</option>
											<option value="25">Nagaland</option>
											<option value="26">Odisha</option>
											<option value="27">Puducherry</option>
											<option value="28">Punjab</option>
											<option value="29">Rajasthan</option>
											<option value="30">Sikkim</option>
											<option value="31">Tamil Nadu</option>
											<option value="32">Telangana</option>
											<option value="33">Tripura</option>
											<option value="34">Uttar Pradesh</option>
											<option value="35">Uttarakhand</option>
											<option value="36">West Bengal</option>
											</select>
									 
								</div>
								<div class="form-group" align="center">
								 <button type="submit" name="submit"  class="btn" style="width:30%" >Submit </button>  <button type="reset" name="reset"  class="btn" style="width:30%" >Reset </button> 
								</div>
							
						
					</form>


					</div>
        			
        		</div>
        	</div>
        </div>




					<div class="col-sm-6" >
					<img src="assets/img/worker.png" alt="employee" height="48%" width="48%"><br><BR>
					<a class="btn1 launch-modal" href="#" data-modal-id="modal-register-employee" ><button class="btn" style="width:30%"><span id="choice">Employee</span></button> </a>
					</div>
					<!--employee regstration code-->
						<div class="modal fade" id="modal-register-employee" tabindex="-1" role="dialog" aria-labelledby="modal-register-label" aria-hidden="true">
        	<div class="modal-dialog">
        		<div class="modal-content">
					
        			
        			<div class="modal-header">
        				<button type="button" class="close" data-dismiss="modal">
        					<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
        				</button>
						<center><b>
        				<h3 class="modal-title" id="modal-register-label" style="font-size:200%">Employee Registration Form</h3>
        				<p>Fill in the form below to get yourself registered:</p>
						</center></b>
        			</div>
        			
        			<div class="modal-body">	
		
		<form class="e-registration-form" id="register1" action="eregistervalidate.php" onsubmit="return employee_reg_validate();" method="post" >
			
				
					<div class="form-group">
						 <label><b>Username</b></label> 
						 <input type="text" placeholder="Enter Username" name="uname" class="form-first-name form-control" required> 
					</div>
					
					<div class="form-group">			
					 <label><b>Name</b></label> 
						 <input type="text" placeholder="Enter Your Name" name="name" class="form-first-name form-control" required> 
					</div>
					<div class="form-group">	
						 <label><b>Password</b></label> 
						 <input type="password" placeholder="Enter Password" name="password" class="form-first-name form-control" required> 
					</div>
					<div class="form-group">
						 <label><b>Confirm Password</b></label> 
						 <input type="password" placeholder="Confirm Password" name="cpassword" class="form-first-name form-control" required> 
					</div>
					<div class="form-group">
						 <label><b>Mobile No.</b></label> 
						 <input type="text" placeholder="Enter Mobile Number" name="mnumber" class="form-first-name form-control" required> 
					</div>
					<div class="form-group">
						 <label><b>Aadhar No.</b></label> 
						 <input type="text" placeholder="Enter Your Aadhar Number" name="anumber" class="form-first-name form-control" required> 
					</div>
					<div class="form-group">
						 <label><b>Email</b></label> 
						 <input type="text" placeholder="Enter Your Email" name="email" class="form-first-name form-control"  required> 
					</div>
					
					<div class="form-group">
						 <label><b>Address</b></label> 
						 <input type="text" name="addr" placeholder="Enter Your Address" class="form-first-name form-control" required> 
					</div>
					<div class="form-group">
						 <label><b>City</b></label> 
						 <input type="text" name="city" placeholder="Enter Your City" class="form-first-name form-control"  required> 
					</div>
					<div class="form-group">
						 <label><b>State</b></label> 
						 
							<select name="state1" id="state1" class="form-first-name form-control" >
								<option value="0">Select</option>
								<option value="1">Andaman and Nicobar Islands</option>
								<option value="2">Andhra Pradesh</option>
								<option value="3">Arunachal Pradesh</option>
								<option value="4">Assam</option>
								<option value="5">Bihar</option>
								<option value="6">Chandigarh</option>
								<option value="7">Chhattisgarh</option>
								<option value="8">Dadra and Nagar Haveli</option>
								<option value="9">Daman and Diu</option>
								<option value="10">Delhi</option>
								<option value="11">Goa</option>
								<option value="12">Gujarat</option>
								<option value="13">Haryana</option>
								<option value="14">Himachal Pradesh</option>
								<option value="15">Jammu and Kashmir</option>
								<option value="16">Jharkhand</option>
								<option value="17">Karnataka</option>
								<option value="18">Kerala</option>
								<option value="19">Lakshadweep</option>
								<option value="20">Madhya Pradesh</option>
								<option value="21">Maharashtra</option>
								<option value="22">Manipur</option>
								<option value="23">Meghalaya</option>
								<option value="24">Mizoram</option>
								<option value="25">Nagaland</option>
								<option value="26">Odisha</option>
								<option value="27">Puducherry</option>
								<option value="28">Punjab</option>
								<option value="29">Rajasthan</option>
								<option value="30">Sikkim</option>
								<option value="31">Tamil Nadu</option>
								<option value="32">Telangana</option>
								<option value="33">Tripura</option>
								<option value="34">Uttar Pradesh</option>
								<option value="35">Uttarakhand</option>
								<option value="36">West Bengal</option>
								</select>
						 
					</div>
					<div class="form-group">
						 <label><b>Skill</b></label> 
						 
							<select id="skill" name="skill" class="form-first-name form-control" >
								<option value="0">Select</option>
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
					<div class="form-group">
						 <label><b>Experience</b></label> 
						 <input type="text" name="exp" placeholder="Enter Your experience in years" class="form-first-name form-control" required>
						 
					</div>
					<div class="form-group" align="center">
					 <button type="submit" name="submit"  class="btn" style="width:30%">Submit </button>  <button type="reset" name="reset"  class="btn" style="width:30%"  >Reset </button>  
					</div>
				
		</form>

					</div>
        			
        		</div>
        	</div>
        </div>
							


</div>
<br><br>


<!-- Footer -->
	<?php include'footer.php'?>








        <!-- Javascript -->
        <script src="assets/js/jquery-1.11.1.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.backstretch.min.js"></script>
        <script src="assets/js/scripts.js"></script>





</body>
</html>
