<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<link rel="stylesheet"href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.slim.min.js"></script>
<link rel="stylesheet" href="resources/css/addProject.css">
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
<link rel="stylesheet" href="resources/css/nav.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Project</title>
</head>
<body>

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
				<li class="nav-item"><a href=""
					class="nav-link font-weight-bold text-uppercase">DashBoard</a></li>
				<div class="dropdown">
					<button
						class="btn nav-link font-weight-bold text-uppercase dropdown-toggle"
						type="button" id="dropdownMenu2" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false" style="background: white";>Add New</button>
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
						aria-haspopup="true" aria-expanded="false" style="background: white";>Report</button>
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
						aria-haspopup="true" aria-expanded="false" style="background: white";>Login</button>
					<div class="dropdown-menu" aria-labelledby="dropdownMenu2">
						<button class="dropdown-item" type="button" >
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

<div class="container col-md-6 mt-3">

  <form action="add_Project">
    <div class="row jumbotron box8">
      <div class="col-sm-12 mx-t3 mb-4">
        <h2 class="text-center txt-color ">Add Project</h2>
      </div>
      <div class="col-sm-6 form-group">
        <label >Project Name</label>
        <input type="text" class="form-control" name="projectName" placeholder="Enter Project Name." required>
      </div>
      <div class="col-sm-6 form-group">
        <label>Submission Date </label>
        <input type="date" class="form-control" name="submissionDate"  required>
      </div>
      <div class="col-sm-6 form-group">
        <label>Project Duration</label>
        <input type="text" class="form-control" name="projectDuration"  placeholder="Enter projectDuration." required>
      </div>
      <div class="col-sm-6 form-group">
        <label >Client Name</label>
        <input type="text" class="form-control" name="clientName"  placeholder="Enter clientName." required>
      </div>
      <div class="col-sm-6 form-group">
        <label>Client Address</label>
        <input type="text" class="form-control" name="clientAddress" id="address-2" placeholder="Enter clientAddress." required>
      </div>
      <div class="col-sm-6 form-group">
        <label >Phone No</label>
        <input type="text" class="form-control" name="phoneNo"  placeholder="Enter EnterphnoneNo." required>
      </div>
   	  <div class="col-sm-6 form-group">
        <label>Email Id </label>
        <input type="email" class="form-control" name="emailId" placeholder="Enter Email." required>
      </div>
      <div class="col-sm-6 form-group">
        <label f>Department Name</label>
        <select class="form-control" name="departmentName">
          <option >Choose..</option>
          <option >Java Department</option>
          <option >PHP Department</option>
          <option >Python Department</option>
          <option >C# Department </option>
          <option >.NET Department</option>
        </select>
      </div>
      
        <div class="col-md-12 form-group">
        <label>Description</label><br>
       <textarea rows="3" cols="90" name="description" placeholder=" Add project Description"></textarea>
       </div>

       <button type="submit" class="btn btn-primary btn1  btn-lg  btn-block">Add Project</button>
   
                     
    </div>
  </form>
</div>


</body>
</html>