<?php include 'includes/header.php'; ?>
<body class="hold-transition login-page">
<div class="login-box">
<div class="login-box-body">
    	<p class="login-box-msg">Sign in </p>

    	<form action="verify.php" method="POST">
      		<div class="form-group has-feedback">
        		<input type="email" class="form-control" name="email" placeholder="Email" required>
        		<span class="glyphicon glyphicon-envelope form-control-feedback"></span>
      		</div>
          <div class="form-group has-feedback">
            <input type="password" class="form-control" name="password" placeholder="Password" required>
            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
          </div>
      		<div class="row">
    			<div class="col-xs-4">
          			<button type="submit" class="btn btn-primary btn-block btn-flat" name="login"><i class="fa fa-sign-in"></i> Sign In</button>
        		</div>
      		</div>
    	</form>
      <br>
      <a href="password_forgot.php">I forgot my password</a><br>
      <a href="signup.php" class="text-center">Register a new member</a><br>
      <a href="index.php"><i class="fa fa-home"></i> Home</a>
  	</div>
</div><?php include 'includes/scripts.php' ?>
<?php


if(isset($_POST['login']))

{
	$email=$_POST['email'];
	$password=$_POST['password'];

$customer_email = mysqli_real_escape_string($conn, $_POST['email']);

$customer_pass = mysqli_real_escape_string($conn, $_POST['password']);

$select_customer = "select * from users where email='$customer_email'";

$run_customer = mysqli_query($conn,$select_customer);

$check_customer = mysqli_num_rows($run_customer);

$row_customer = mysqli_fetch_array($run_customer);

$hash_password = $row_customer['password'];

$decrypt_password = password_verify($customer_pass, $hash_password);

if($decrypt_password == 0){
	
echo "<script>alert('your password or email is wrong')</script>";

exit();
	
}
}?>