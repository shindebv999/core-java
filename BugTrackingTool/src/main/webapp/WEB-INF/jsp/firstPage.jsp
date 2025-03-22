<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>		
<link>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.7/css/all.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
    
    <link rel="stylesheet" href="resources/css/login.css">

</head>

<section class="py-5 text-white">
<div class="container py-4">
	<div class="row">
		<div class="col-lg-6  text-center">
			<img style="margin-left:-100px"; height="570px" src="resources/images/bug1.png">
		</div>

		<div class="col-lg-6  text-center">
			<div class="wrapper bg-white">
				<div class="h2 text-center">Login</div>
				<div class="h4 text-muted text-center pt-2">Enter your login
					details</div>
				<form action="dashboard" class="pt-3">
					<div class="form-group py-3">
						<div class="input-field">
							<span class="far fa-user p-2"></span> <input type="text"
								placeholder="Username or Email Address" name="userName" required class="">
						</div>
					</div>
					<div class="form-group mt-3 py-1 pb-3">
						<div class="input-field">
							<span class="fas fa-lock p-2"></span> <input type="text"
								placeholder="Enter your Password" name="password"  required class="">
							<button class="btn bg-white text-muted">
								<span class="far fa-eye-slash"></span>
							</button>
						</div>
					</div>
					<div class="d-flex align-items-start">
						<div class="remember mt-3">
							<label class="option text-muted"> Remember me <input
								type="radio" name="radio"> <span class="checkmark"></span>
							</label>
						</div>
						<div class="ml-auto mt-3">
							<a href="#" id="forgot">Forgot Password?</a>
						</div>
					</div>
					<button class="btn btn-block text-center mt-4 my-3">Log in</button>

				</form>
			</div>
		</div>

	</div>


	<div class="row pt-5">
		<div class="col-lg-10 mx-auto"></div>
	</div>
</div>
</section>
</div>

</body>
</html>