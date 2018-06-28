<?php @session_start();

if(isset($_SESSION['login']) AND $_SESSION['login']==True )
{
	$uname = $_SESSION['user'];
}

?>

<nav class="navbar navbar-inverse " >
  <div class="container-fluid" style="width:100%;">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".collapse">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <!--<a class="navbar-brand" href="#">Logo</a>-->
    </div>
    <div class="collapse navbar-collapse" id="myNavbar" style="margin:auto;">
      <ul class="nav navbar-nav">
	    <?php 
		if(isset($_SESSION['type']) AND $_SESSION['type']=='user')
		{
			echo "<li><a href='udashboard.php'> $uname"."'"."s Dashboard</a></li>";
		}
		if(isset($_SESSION['type']) AND $_SESSION['type']=='employee')
		{
			echo "<li><a href='edashboard.php'> $uname"."'"."s Dashboard</a></li>";
		}
			
		?>
        <li><a href="home.php">Home</a></li>
        <li><a href="howitwork.php">How It Works</a></li>
        <li><a href="faq.php">FAQ</a></li>
        <li><a href="contactus.php">Contact Us</a></li>
		
      </ul>
      
	  <ul class='nav navbar-nav navbar-right'>
        <li>
			<a class='btn1 launch-modal' href='#' data-modal-id='modal-login'><span class='glyphicon glyphicon-log-in'></span> Login</a>
			<!-- add modal login form here-->
			<?php include 'loginform.php'?>
		</li>
		
		<li>
		
		<a href="regpage.php" ><span class="glyphicon glyphicon-log-in"></span> SignUp</a>
		<!-- add modal sign up form here-->
		
		
		</li>
      </ul>
    </div>
  </div>
</nav>


