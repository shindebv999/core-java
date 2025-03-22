<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet"
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
	
	<link rel="stylesheet" href="resources/css/nav.css">
	
</head>

<div class="container-fluid">
<nav
	class="navbar navbar-expand-lg navbar-light bg-white py-3 shadow-sm">
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
			<li class="nav-item"><a href="dashboard"
				class="nav-link font-weight-bold text-uppercase">DashBoard</a></li>
			<div class="dropdown">
				<button
					class="btn nav-link font-weight-bold text-uppercase dropdown-toggle"
					type="button" id="dropdownMenu2" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false">Add New</button>
				<div class="dropdown-menu" aria-labelledby="dropdownMenu2">
					<button class="dropdown-item" type="button"><a href="addUser">Add User</a></button>
					<button class="dropdown-item" type="button"><a href="addProject">Add Project</a></button>
					<button class="dropdown-item" type="button"><a href="addBug">Add Bug</a></button>
				</div>
			</div>

			<div class="dropdown">
				<button
					class="btn nav-link font-weight-bold text-uppercase dropdown-toggle"
					type="button" id="dropdownMenu2" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"> Report</button>
				<div class="dropdown-menu" aria-labelledby="dropdownMenu2">
			    	<button class="dropdown-item" type="button"><a href="userReport">User Reports</a></button>				
					<button class="dropdown-item" type="button"><a href="bugReport">Bug Reports</a></button>
					<button class="dropdown-item" type="button"><a href="projectReport">Project Reports</a></button>
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
					<button class="dropdown-item" type="button"><a href="firstPage.jsp">Admin</a></button>
					<button class="dropdown-item" type="button">Manager </button>
					<button class="dropdown-item" type="button">Developer</button>
				
				</div>
			
			</div>
			<li class="nav-item "><a href=""
				class="nav-link font-weight-bold text-uppercase">Logout</a></li>
			
			
		</ul>
	</div>
</nav>



<section class="py-5 text-white">
	<div class="container py-4">
		<div class="row">
			<div class="col-lg-4 col-md-4 text-center">

				<img style="margin-left:-200px"; height="570px"  src="resources/images/bug2.webp">
			</div>
				<div class="col-lg-6 text-center offset-md-2 p-4">

				<div class="d-grid gap-2 mt-5 ">
					<button type="button" style="background-color: #509aab;"  class="btn  btn-outline-secondary  btn-lg btn-block mb-4 "><a href="addUser" style="color:#fff";>Add User</a></button>
					<button type="button" style="background-color: #509aab; color:#fff";  class="btn btn-outline-secondary btn-lg btn-block mb-4 " ><a href="addProject"  style="color:#fff";>Add Project</a></button>
					<button type="button" style="background-color: #509aab; color:#fff";  class="btn btn-outline-secondary  btn-lg btn-block mb-4 "> <a href="addBug"  style="color:#fff";>Add Bug</a></button>
					<button type="button" style="background-color: #509aab; color:#fff";  class="btn btn-outline-secondary btn-lg btn-block mb-4 "> <a href="bugReport"  style="color:#fff";>User Report</a></button>
					<button type="button" style="background-color: #509aab; color:#fff";  class="btn btn-outline-secondary  btn-lg btn-block mb-4 "> <a href="projectReport"  style="color:#fff";>Project Report</a></button>
                   <button type="button" style="background-color: #509aab; color:#fff";  class="btn  btn-outline-secondary btn-lg btn-block mb-4 " ><a href="bugReport"  style="color:#fff";>Bug Report</a></button>
					<button type="button" style="background-color: #509aab; color:#fff";  class="btn btn-outline-secondary btn-lg btn-block mb-4 "><a href=""  style="color:#fff";>Logout</a></button>
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