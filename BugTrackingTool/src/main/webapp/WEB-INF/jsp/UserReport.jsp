<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<html>
<head>
<link rel="stylesheet" href="resources/css/userReport.css">
<link rel="stylesheet" href="resources/css/viewProfile.css">
<link rel="stylesheet" href="resources/css/updateUser.css">
<script href="resources/jsp/viewProfile.jsp" />
<script href="resources/jsp/userReport.jsp" />



<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css"
	rel="stylesheet">

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">

<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>


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

<link rel="stylesheet" href="resources/css/nav.css">
<style type="text/css">
input {
	border: none;
	border-bottom-color: white;
	padding: 7px;
	width: 250px;
}

.a {
	color: #3e39478c !important;
}

.a:hover {
	color: #000 !important;
}

</style>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons">


</head>
<body>


	<nav
		class="navbar navbar-default navbar-fixed-top navbar-expand-lg navbar-light bg-white py-3 shadow-sm"
		style="
    position: fixed;
    margin-top: -710px;
"> <a href="#"
		class="navbar-brand font-weight-bold d-block d-lg-none">MegaMenu</a>
	<button type="button" data-toggle="collapse"
		data-target="#navbarContent" aria-controls="navbars"
		aria-expanded="false" aria-label="Toggle navigation"
		class="navbar-toggler">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div id="navbarContent" class="collapse navbar-collapse"
		style="width: 1800px;">
		<ul class="navbar-nav  offset-md-4  ">

			<li class="nav-item"><a href=""
				class="nav-link font-weight-bold text-uppercase"
				style="color: #3e39478c;">Home</a></li>
			<li class="nav-item"><a href="aboutUs"
				class="nav-link font-weight-bold text-uppercase"
				style="color: #3e39478c;">About</a></li>
			<li class="nav-item"><a  href="dashboard"
				class="nav-link font-weight-bold text-uppercase"
				style="color: #3e39478c;">DashBoard</a></li>
			<div class="dropdown">
				<button style="border: none; background: white;"
					class=" nav-link font-weight-bold text-uppercase dropdown-toggle"
					type="button" id="dropdownMenu2" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false">Add New</button>
				<div class="dropdown-menu" aria-labelledby="dropdownMenu2">
					<button class="dropdown-item" type="button">
						<a class="a" href="addUser">Add User</a>
					</button>
					<button class="dropdown-item" type="button">
						<a class="a" href="addProject">Add Project</a>
					</button>
					<button class="dropdown-item" type="button">
						<a class="a" href="addBug">Add Bug</a>
					</button>
				</div>
			</div>

			<div class="dropdown">
				<button style="border: none; background: white;"
					class=" nav-link font-weight-bold text-uppercase dropdown-toggle"
					type="button" id="dropdownMenu2" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false">Report</button>
				<div class="dropdown-menu" aria-labelledby="dropdownMenu2">
					<button class="dropdown-item" type="button">
						<a class="a" href="userReport">User Reports</a>
					</button>
					<button class="dropdown-item" type="button">
						<a class="a" href="bugReport">Bug Reports</a>
					</button>
					<button class="dropdown-item" type="button">
						<a class="a" href="projectReport">Project Reports</a>
					</button>
				</div>
			</div>

			<li class="nav-item"><a href="contactUs"
				class="nav-link font-weight-bold text-uppercase"
				style="color: #3e39478c;">Contact</a></li>



			<div class="dropdown  ml-5">
				<button style="border: none; background: white;"
					class=" nav-link font-weight-bold text-uppercase dropdown-toggle"
					type="button" id="dropdownMenu2" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false">Login</button>
				<div class="dropdown-menu" aria-labelledby="dropdownMenu2">
					<button class="dropdown-item" type="button">
						<a class="a" href="firstPage.jsp">Admin</a>
					</button>
					<button class="dropdown-item a" type="button">Manager</button>
					<button class="dropdown-item a" type="button">Developer</button>

				</div>

			</div>
			<li class="nav-item "><a href=""
				class="nav-link font-weight-bold text-uppercase"
				style="color: #3e39478c;">Logout</a></li>


		</ul>
	</div>
	</nav>
	<div class="container">

		<div class="row" style="margin-top: -200px;">
			<div class="col-md-12 mb-2 ">
				<h3>User Report Table</h3>
			</div>
			<div class="col-lg-12 col-md-12 ml-auto mr-auto">

				<div class="table-responsive">
					<table class="table" id="userTable">
						<thead>
							<tr>
								<th class="text-center">id</th>
								<th>Employee status</th>
								<th>Department</th>
								<th>First Name</th>
								<th>Middle Name</th>
								<th>Last Name</th>
								<th>Country</th>
								<th>Mobile No.</th>
								<th>UserName</th>
								<th>Email Id</th>


								<th class="text-right">Actions</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="user" items="${userList}">
								<tr>
									<td class=" id text-center">${user.id }</td>
									<td>${user.employeeStatus }</td>
									<td>${user.department }</td>
									<td>${user.firstName } </td>
									<td>${user.middleName } </td>
									<td>${user.lastName } </td>
									<td>${user.country }</td>
									<td>${user.mobileNo }</td>
									<td>${user.userName }</td>
									<td>${user.emailId }</td>
									<td class="td-actions text-right">
									<button type="button" class="btn btn-success btn-link btn-just-icon btn-sm btn-open-modal"
										        data-original-title="" data-toggle="modal"
										        data-target="#editUserModal" data-id="${user.id}">
										    <i class="material-icons">edit</i>
										</button>

										<button type="button" rel="tooltip"
											class="btn btn-danger btn-link btn-just-icon btn-sm deleteData"
											data-original-title="" data-toggle="modal"
											data-target="#deleteUser" data-user-id="${user.id}">
											<i class="material-icons">close</i>
										</button>

									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>

				</tbody>
				</table>
			</div>

		</div>
	</div>
	</div>


<!-- Success Alert (initially hidden) -->
<div class="alert alert-success alert-dismissible fade show d-none" role="alert" id="successAlert">
    <strong>SuccessFully Update ....!!:</strong> <span id="successMessage"></span>
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
</div>
<!-- Error Alert (initially hidden) -->
<div class="alert alert-danger alert-dismissible fade show d-none" role="alert" id="errorAlert">
    <strong>Error:</strong> <span id="errorMessage"></span>
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
</div>

<!-- Modal Fullscreen xl -->
<div class="modal" id="editUserModal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Edit User</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
             <div style="max-height: 90vh; overflow-y: auto;">
                <form id="editUserForm" action="updateUser" method="post">
                    <!-- Input fields for user data -->
                    <input type="hidden" id="userId" name="id" value="${user.id}">
                    <div class="form-group">
                        <label for="prefix">Prefix</label>
                        <input type="text" class="form-control" id="prefix" name="prefix" value="${user.prefix}">
                    </div>
                     <div class="form-group">
                        <label for="employeeStatus">employeeStatus</label>
                        <input type="text" class="form-control" id="employeeStatus" name="employeeStatus" value="${user.employeeStatus}" >
                    </div>
                     <div class="form-group">
                        <label for="Department">Department</label>
                        <input type="text" class="form-control" id="department" name="department" value="${user.department}">
                    </div>
                     <div class="form-group">
                        <label for="firstName">firstName</label>
                        <input type="text" class="form-control" id="firstName" name="firstName" value="${user.firstName}">
                    </div>
                     <div class="form-group">
                        <label for="middleName">middleName</label>
                        <input type="text" class="form-control" id="middleName" name="middleName" value="${user.middleName}">
                    </div>
                     <div class="form-group">
                        <label for="lastName">lastName</label>
                        <input type="text" class="form-control" id="lastName" name="lastName" value="${user.lastName}">
                    </div>
                    
                    <div class="form-group">
                        <label for="Gender">Gender</label>
                        <input type="text" class="form-control" id="gender" name="gender" value="${user.gender}">
                    </div>
                       <div class="form-group">
                        <label for="date_Of_Birth">Date Of Birth</label>
                        <input type="date" class="form-control" id="date_Of_Birth" name="date_Of_Birth"  value="${user.date_Of_Birth}" required>
                    </div>
                       <div class="form-group">
                        <label for="Country">Country</label>
                        <input type="text" class="form-control" id="country" name="country" value="${user.country}">
                    </div>
                      <div class="form-group">
                        <label for="mobileNo">mobileNo</label>
                        <input type="text" class="form-control" id="mobileNo" name="mobileNo" value="${user.mobileNo}">
                    </div>
                    <div class="form-group">
                        <label for="userName">userName</label>
                        <input type="text" class="form-control" id="userName" name="userName" value="${user.userName}">
                    </div>
                    <div class="form-group">
                        <label for="password">password</label>
                        <input type="text" class="form-control" id="password" name="password" value="${user.password}">
                    </div>
                      
                       <div class="form-group">
                        <label for="Email_id">Email_id</label>
                        <input type="email" class="form-control" id="emailId" name="emailId"  value="${user.emailId}">
                    </div>
                     <div class="form-group">
                        <label for="City">City</label>
                        <input type="text" class="form-control" id="city" name="city"  value="${user.city}">
                    </div>

                    <div class="form-group">
                        <label for="state">State</label>
                        <input type="text" class="form-control" id="state" name="state"  value="${user.state}">
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Save changes</button>
                    </div>
                </form>
            </div>
        </div>
        </div>
    </div>
</div>

<script>
$(document).on("click", ".btn-open-modal", function () 
		{
    var userId = $(this).data("id");
    console.log("User ID:", userId); 
    $.ajax({
        type: "GET",
        url: "./getUserById/" + userId,
        success: function (data) {
                  console.log("Received user data:", data);
            	  $("#userId").val(data.id);
                  $("#employeeStatus").val(data.employeeStatus);
                  $("#department").val(data.department);
                  $("#prefix").val(data.prefix);
                  $("#firstName").val(data.firstName);
                  $("#middleName").val(data.middleName);
                  $("#lastName").val(data.lastName);
                  $("#gender").val(data.gender);
                  $("#date_Of_Birth").val(data.dateOfBirth);
                  $("#country").val(data.country);
                  $("#mobileNo").val(data.mobileNo);
                  $("#userName").val(data.userName);
                  $("#password").val(data.password);
                  $("#emailId").val(data.emailId);
                  $("#city").val(data.city);
                  $("#state").val(data.state);

                // Show the modal
                $("#editUserModal").modal("show");
            },
            error: function () {
                alert("User not found or error occurred while fetching user data.");
            }
        });
    });


    // Handle form submission (updateUser)
    $("#editUserForm").submit(function (event) {
        event.preventDefault();

        $.ajax({
            type: "GET",
            url: "./updateUser",
            data: $(this).serialize(),
            success: function (response) {
                // Handle success (e.g., close the modal, update the user list)
                $("#editUserModal").modal("hide");
                $('#successMessage').text("User Updated successfully");
                $('#successAlert').removeClass('d-none'); 
                
             // Assuming 'response' contains the updated user data

             // Update the user table with the updated data
             var updatedUserId = response.id;
             var updatedEmployeeStatus = response.employeeStatus;
             var updatedDepartment = response.department;
             var updatedFirstName = response.firstName;
             var updatedMiddleName = response.middleName;
             var updatedLastName = response.lastName;
             var updatedCountry = response.country;
             var updatedMobileNo = response.mobileNo;
             var updatedUserName = response.userName;
             var updatedEmailId = response.emailId;

             // Find the table row with the matching data-id attribute
             var $tableRow = $('tr[data-id="' + updatedUserId + '"]');

             // Update the cells in that row to reflect the new data
             $tableRow.find('td:eq(1)').text(updatedEmployeeStatus);
             $tableRow.find('td:eq(2)').text(updatedDepartment);
             $tableRow.find('td:eq(3)').text(updatedFirstName);
             $tableRow.find('td:eq(4)').text(updatedMiddleName);
             $tableRow.find('td:eq(5)').text(updatedLastName);
             $tableRow.find('td:eq(6)').text(updatedCountry);
             $tableRow.find('td:eq(7)').text(updatedMobileNo);
             $tableRow.find('td:eq(8)').text(updatedUserName);
             $tableRow.find('td:eq(9)').text(updatedEmailId);

                         },
            error: function () {
                $('#errorMessage').text("Error occurred while updating user data.");
                $('#errorAlert').removeClass('d-none'); // Show the error alert
            }
        });
    });
 
/*  // Function to update the table row with new data
    function updateTableRow(userId, formData) {
        // Parse the form data and extract the updated values
        var updatedValues = {};
        formData.split('&').forEach(function (pair) {
            var parts = pair.split('=');
            updatedValues[decodeURIComponent(parts[0])] = decodeURIComponent(parts[1]);
        });

        // Find the table row by user ID
        var rowToUpdate = $("#userTable tr[data-id='" + userId + "']");
        
        rowToUpdate.find("td:eq(1)").text(updatedValues["employeeStatus"]);
        rowToUpdate.find("td:eq(2)").text(updatedValues["department"]);
        rowToUpdate.find("td:eq(3)").text(updatedValues["firstName"]);
        rowToUpdate.find("td:eq(4)").text(updatedValues["middleName"]);
        rowToUpdate.find("td:eq(5)").text(updatedValues["lastName"]);
        rowToUpdate.find("td:eq(6)").text(updatedValues["country"]);
        rowToUpdate.find("td:eq(7)").text(updatedValues["mobileNo"]);
        rowToUpdate.find("td:eq(8)").text(updatedValues["userName"]);
        rowToUpdate.find("td:eq(9)").text(updatedValues["emailId"]);
     
    }
 */</script>

	<script>
		$(document).ready(function() {
			 $('.deleteData').click(function () {
		// Get the user ID from the data-user-id attribute of the clicked button
		var userId = $(this).data('user-id');
		// Get other data from the current row
		var employeeStatus = $(this).closest('tr').find('td:eq(1)').text();
		 department = $(this).closest('tr').find('td:eq(2)').text();
		var firstName = $(this).closest('tr').find('td:eq(3)').text();
		var country = $(this).closest('tr').find('td:eq(4)').text();
		var mobileNo = $(this).closest('tr').find('td:eq(5)').text();
		var userName = $(this).closest('tr').find('td:eq(6)').text();
		var emailId = $(this).closest('tr').find('td:eq(7)').text();
		// Confirm the deletion with the user
		if (confirm('Are you sure you want to delete this user?\n\nEmployee Status: '+ employeeStatus
			+ '\nDepartment: '+ department + '\nFirst Name: '+ firstName + '\nCountry: '+ country + '\nMobile No.: '+ mobileNo
			+ '\nUserName: '+ userName+ '\nEmail Id: '+ emailId)) {
		// Send an AJAX request to delete the user
		$.ajax({
			type : 'DELETE',
			url : './deleteUser/'+ userId,
			success : function() {
			// Remove the table row if deletion is successful
			$(	'tr[data-user-id="'+ userId + '"]').remove();
			alert('User deleted successfully');
		    },
			error : function() {
			alert('Error deleting user');
			}
			});
			}
		});
    });
	</script>



</body>
</html>