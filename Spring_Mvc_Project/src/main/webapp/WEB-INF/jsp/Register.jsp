<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
	integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"
	integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.slim.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href='https://fonts.googleapis.com/css?family=Poppins'
	rel='stylesheet'>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Form</title>
<style type="text/css">
.fsectoin {
	border: 2px solid gray;
	padding: 20px;
}
</style>
</head>
<body>
	<section class="col-md-5 offset-md-3 fsectoin">
	<h2>Register</h2>
	<form action="register">
		<div class="form-row">
			<div class="form-group col-md-6">
				<label for="inputUserName">User Name</label> <input type="text"
					class="form-control border border-info" name="uname" id="uname">
			</div>
			<div class="form-group col-md-6">
				<label for="inputEmail4">Email</label> <input type="email"
					class="form-control border border-info" name="email"
					id="inputEmail4">
			</div>
			<div class="form-group col-md-6">
				<label for="inputPassword4">Password</label> <input type="password"
					class="form-control border border-info" name="pwd"
					id="inputPassword4">
			</div>
			<div class="form-group col-md-6">
				<label for="inputConfPassword4">Confirm Password</label> <input
					type="password" name="confpwd"
					class="form-control border border-info" id="inputPassword">
			</div>


		</div>
		<h3 class="offset-md-2 p-2 ">Personal Information</h3>
		<hr>
		<div class="form-row">
			<div class="form-group col-md-6">
				<label for="inputAddress">Address</label> <input type="text"
					class="form-control border border-info" name="adr"
					id="inputAddress">
			</div>
			<div class="form-group col-md-6">
				<label for="inputPhone4">Phone Number</label> <input type="text"
					class="form-control border border-info" name="phone"
					id="inputPhone">
			</div>
		</div>
		<div class="form-row">
			<div class="form-group col-md-4">
				<label for="inputCity">City</label> <input type="text"
					class="form-control border border-info" name="city" id="inputCity">
			</div>
			<div class="form-group col-md-4">
				<label for="inputState">State</label> <select id="inputState"
					name="state" class="form-control border border-info">
					<option selected>Choose...</option>
					<option>MAHARASTRA</option>
					<option>GUJARAT</option>
					<option>HARIYANA</option>
					<option>MADYAPRADESH</option>
					<option>TAMILNADU</option>
					<option>TELANGANA</option>
				</select>
			</div>
			<div class="form-group col-md">
				<label for="inputZip">Zip</label> <input type="text"
					class="form-control border border-info" name="zip" id="inputZip">
			</div>
		</div>
		<div class="form-group">
			<div class="form-check">
				<input class="form-check-input border border-info" type="checkbox"
					id="gridCheck"> <label class="form-check-label"
					for="gridCheck">I agree to the terms </label>
			</div>
		</div>
		<p>
			Already have an Account? Click here to <a href="index.jsp">Login</a>
			<button type="submit" class="btn btn-info offset-md-8 mt-2">Registration</button>
	</form>
	</section>
</body>
</html>