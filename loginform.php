<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap Modal Registration Form Template</title>

        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="assets/css/form-elements.css">
        <link rel="stylesheet" href="assets/css/style.css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href="assets/ico/favicon.png">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">

    </head>

    <body>
		<!--
		<div class="top-big-link">
                            	<a class="btn btn-link-1 launch-modal" href="#" data-modal-id="modal-login">Launch modal</a>
                            </div>
			-->
        <!-- MODAL -->
        <div class="modal fade" id="modal-login" tabindex="-1" role="dialog" aria-labelledby="modal-login-label" aria-hidden="true">
        	<div class="modal-dialog">
        		<div class="modal-content">
        			
        			<div class="modal-header">
        				<button type="button" class="close" data-dismiss="modal">
        					<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
        				</button>
						<center><b>
        				<h3 class="modal-title" id="modal-login-label" style="font-size:200%">Log In</h3>
        				<p>Fill in the form below to get instant access:</p>
						</b></center>
					</div>
        			
        			<div class="modal-body">
        				
					<!-- login code-->
					<form class="registration-form" id="login" action="loginvalidate.php" onsubmit="return #" method="post">
				
								<div class="form-group">
									 <label><b>Username</b></label> 
									 <input type="text" placeholder="Enter Username" name="uname" class="form-first-name form-control" required> 
								</div >
								<div class="form-group" >
									 <label><b>Password</b></label> 
									 <input type="password" placeholder="Enter Password" name="password" class="password form-control" required> 
								</div>
								<div class="form-group" >
									<label><b>Login As </b></label>
									<br>									
									 <input type="radio" name="type" value="user" required>User &nbsp;&nbsp;&nbsp;
									 
									 <input type="radio" name="type" value="employee"  required>Employee  
								</div>
								<div class="form-group" align="center" >
								 <button type="submit" name="submit"  class="btn" style="width:30%">Submit </button>  <button type="reset" name="reset"  class="btn" style="width:30%" >Reset </button>
								</div>
							
							
							<div class="form-group" align="center">
							<a href="changepassword.php" ><b>Forgot Password ?</b></a>
							</div>
							</br>
						
					</form>	
					<!-- code ends-->
					
						
	                    
        			</div>
        			
        		</div>
        	</div>
        </div>


        <!-- Javascript -->
        <script src="assets/js/jquery-1.11.1.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.backstretch.min.js"></script>
        <script src="assets/js/scripts.js"></script>
        
        <!--[if lt IE 10]>
            <script src="assets/js/placeholder.js"></script>
        <![endif]-->

    </body>

</html>