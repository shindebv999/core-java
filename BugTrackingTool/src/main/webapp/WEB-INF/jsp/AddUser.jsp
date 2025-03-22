<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">  
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css"
	rel="stylesheet">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<!------ Include the above in your HEAD tag -->

<link rel="stylesheet"
	href="https://unpkg.com/bootstrap-material-design@4.1.1/dist/css/bootstrap-material-design.min.css"
	integrity="sha384-wXznGJNEXNG1NFsbm0ugrLFMQPWswR3lds2VeinahP8N0zJw9VWSopbjv2x7WCvX"
	crossorigin="anonymous">
<script
src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"
	integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+"
	crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>	

<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons">
	

	<link rel="stylesheet" href="resources/css/nav.css">
	<style type="text/css">
	input{
	border:none;
	border-bottom-color:  white;
	padding: 7px;
	width: 250px;

	}
	a{
	color: #3e39478c!important;
	}
	a:hover{
	color: #000!important;
	}
	.login1
	{
	color:#fff!important;
	}
	</style>

<link rel="stylesheet" href="resources/css/nav.css">
<link rel="stylesheet" href="resources/css/addUser.css">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register...</title>
</head>
<body>

	<div class="container-fluid">
		<nav
			class="navbar navbar-default navbar-fixed-top navbar-expand-lg navbar-light bg-white py-3 shadow-sm">
		<a href="#" class="navbar-brand font-weight-bold d-block d-lg-none">MegaMenu</a>
		<button type="button" data-toggle="collapse"
			data-target="#navbarContent" aria-controls="navbars"
			aria-expanded="false" aria-label="Toggle navigation"
			class="navbar-toggler">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div id="navbarContent" class="collapse navbar-collapse">
			<ul class="navbar-nav  offset-md-4  ">

				<li class="nav-item"><a href=""
					class="nav-link font-weight-bold text-uppercase">Home</a></li>
				<li class="nav-item"><a href="aboutUs"
					class="nav-link font-weight-bold text-uppercase">About</a></li>
				<li class="nav-item"><a href=""
					class="nav-link font-weight-bold text-uppercase">DashBoard</a></li>
				<div class="dropdown">
					<button
						class="btn nav-link font-weight-bold text-uppercase dropdown-toggle"
						type="button" id="dropdownMenu2" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">Add New</button>
					<div class="dropdown-menu" aria-labelledby="dropdownMenu2">
						<button class="dropdown-item" type="button">
							<a href="addUser">Add User</a>
						</button>
						<button class="dropdown-item" type="button">
							<a href="addProject">Add Project</a>
						</button>
						<button class="dropdown-item" type="button">
							<a href="addBug">Add Bug</a>
						</button>
					</div>
				</div>

				<div class="dropdown">
					<button
						class="btn nav-link font-weight-bold text-uppercase dropdown-toggle"
						type="button" id="dropdownMenu2" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">Report</button>
					<div class="dropdown-menu" aria-labelledby="dropdownMenu2">
						<button class="dropdown-item" type="button">
							<a href="userReport">User Reports</a>
						</button>
						<button class="dropdown-item" type="button">
							<a href="bugReport">Bug Reports</a>
						</button>
						<button class="dropdown-item" type="button">
							<a href="projectReport">Project Reports</a>
						</button>
					</div>
				</div>

				<li class="nav-item"><a href="contactUs"
					class="nav-link font-weight-bold text-uppercase">Contact</a></li>



				<div class="dropdown  ml-5">
					<button
						class="btn nav-link font-weight-bold text-uppercase dropdown-toggle"
						type="button" id="dropdownMenu2" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">Login</button>
					<div class="dropdown-menu" aria-labelledby="dropdownMenu2">
						<button class="dropdown-item" type="button">
							<a href="firstPage.jsp">Admin</a>
						</button>
						<button class="dropdown-item" type="button">Manager</button>
						<button class="dropdown-item" type="button">Developer</button>

					</div>

				</div>
				<li class="nav-item "><a href=""
					class="nav-link font-weight-bold text-uppercase">Logout</a></li>


			</ul>
		</div>
		</nav>

		<h1>${successMsg }</h1>
		<h1>${errMsg }</h1>
		<div class="container mt-5">
			<div class="row">
				<div class="col-md-7" style="margin-left: -200px";>
					<div class="card">
						<header class="card-header"> <a href="login"
							class="float-right btn btn-primary btn1 Smt-1 login1">Log in</a>
						<h4 class="card-title mt-2">Sign up</h4>
						</header>
						<article class="card-body regBox">
						<form action="add_User">
							<div class="form-row">
								<div class="col form-group">
									<label>Prefix</label><br> <select name="prefix" required
										class="GddList p-2 border border-secondary rounded ">
										<option selected disabled>Choose Any One</option>
										<option>Mr.</option>
										<option>Mrs.</option>
										<option>Miss</option>
									</select>
								</div>
								<div class="col form-group">
									<label>Employee Status </label> <select name="employeeStatus"
										required class="GddList p-2 border border-secondary rounded">
										<option selected disabled>Select Status</option>
										<option>Consaltant</option>
										<option>Admin</option>
										<option>Manager</option>
										<option>Developer</option>
										<option>Tester</option>
									</select>
								</div>
								<!-- form-group end.// -->
								<div class="col form-group">
									<label>Department </label> <select name="department" required
										class="GddList p-2 border border-secondary rounded">
										<option selected disabled>Select Dept.</option>
										<option>Python Department</option>
										<option>Php Department</option>
										<option>Java Department</option>
									</select>
								</div>
							</div>
							<div class="form-row">
								<div class="col form-group">
									<label>First Name </label> <input type="text" name="firstName"
										class="form-control" required placeholder="">
								</div>
								<div class="col form-group">
									<label>Middle Name </label> <input type="text"
										name="middleName" class="form-control" required placeholder="">
								</div>
								<!-- form-group end.// -->
								<div class="col form-group">
									<label>Last Name</label> <input type="text" required
										class="form-control" name="lastName" placeholder=" ">
								</div>
							</div>
							<div class="form-row">
								<div class="col form-group col-md-4">
									<label>Gender </label><br> <select
										class="GddList p-2 border border-secondary rounded"
										name="gender" required>
										<option selected disabled>Select Gender</option>
										<option>Male</option>
										<option>Female</option>
										<option>Other</option>
									</select>
								</div>
								<div class="col form-group">
									<label> Date Of Birth </label> <input type="date"
										name="date_Of_Birth" class="form-control" required
										placeholder="">
								</div>
								<div class="form-group col-md-4">
									<label>Country</label> <select name="country" required
										id="inputState" class="form-control">
										<option selected disabled>Choose...</option>
										<option>Uzbekistan</option>
										<option>Russia</option>
										<option selected="">United States</option>
										<option>India</option>
										<option>Afganistan</option>
									</select>
								</div>
							</div>
							<div class="form-row">

								<div class="col form-group">
									<label>Mobile No. </label> <input type="text"
										class="form-control" name="mobileNo" required placeholder="">
								</div>
								<div class="col form-group">
									<label>User Name </label> <input type="text" name="userName"
										class="form-control" required placeholder="Enter userName">
								</div>
								<!-- form-group end.// -->
								<div class="col form-group">
									<label>Password</label> <input type="password" required
										class="form-control" name="password" placeholder="abc12*** ">
								</div>
							</div>

							<div class="form-group">
								<label>Email address</label> <input type="email" required
									name="emailId" class="form-control" required placeholder="">
								<small class="form-text text-muted">We'll never share
									your email with anyone else.</small>
							</div>

							<div class="form-row">
								<div class="form-group col-md-6">
									<label>City</label> <input type="text" required name="city"
										class="form-control">
								</div>
								<div class="form-group col-md-6">
									<label>State</label> <select name="state" id="inputState"
										required class="form-control">
										<option selected disabled>Choose...</option>
										<option>Maharastra</option>
										<option>Andrapradesh</option>
										<option>Tamilnadu</option>
										<option>Gujart</option>
										<option>ZarKhand</option>
										<option>Rajastan</option>
										<option>Kerala</option>
										<option>Bihar</option>
										<option>UttarPradesh</option>
										<option>MadhyaPradesh</option>

									</select>
								</div>
							</div>
						
							<div class="form-group">
								<button type="submit" class="btn btn-primary btn1 btn-block">
									Register</button>
							</div>
							<!-- form-group// -->
							<small class="text-muted ">By clicking the 'Sign Up'
								button, you confirm that you accept our <br> Terms of use
								and Privacy Policy.
							</small>
						</form>
						</article>
						<!-- card-body end .// -->
						<div class="border-top card-body text-center card1">
							Have an account? <a id="a" href="login">Log In</a>
						</div>
					</div>
				</div>
                      <div class="col-lg-4 col-md-4 text-center">

				<img style="margin-left: 180px;height: 780px;"; height="px"  src="resources/images/details-1.png">
			</div>
                      
			</div>
			
		</div>
</body>
</html>