<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title> Project Report Table  </title>
<link rel="stylesheet" href="resources/css/userReport.css">
<link rel="stylesheet" href="resources/css/updateUser.css">
<link rel="stylesheet" href="resources/css/viewProfile.css">
<script  href="resources/jsp/userReport.jsp"></script>
<script  href="resources/jsp/viewProfile.jsp"></script>

<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css"
	rel="stylesheet">

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
rel="stylesheet" id="bootstrap-css">

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

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
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons"/>
	

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
	</style>
</head>
<body>


<nav
	class="navbar navbar-expand-lg navbar-light bg-white py-3 shadow-sm" style="margin-top: -370px;">
	<a href="#" class="navbar-brand font-weight-bold d-block d-lg-none">MegaMenu</a>
	<button type="button" data-toggle="collapse"
		data-target="#navbarContent" aria-controls="navbars"
		aria-expanded="false" aria-label="Toggle navigation"
		class="navbar-toggler">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div id="navbarContent" class="collapse navbar-collapse" style="width: 1800px; margin-top: -50px;">
		<ul class="navbar-nav  offset-md-4  ">

			<li class="nav-item"><a href=""
				class="nav-link font-weight-bold text-uppercase"style="color: #3e39478c;" >Home</a></li>
			<li class="nav-item"><a href="aboutUs"
				class="nav-link font-weight-bold text-uppercase" style="color: #3e39478c;">About</a></li>
			<li class="nav-item"><a href=""
				class="nav-link font-weight-bold text-uppercase" style="color: #3e39478c;" >DashBoard</a></li>
			<div class="dropdown">
				<button style=" border: none; background: white;"
					class=" nav-link font-weight-bold text-uppercase dropdown-toggle"
					type="button" id="dropdownMenu2" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false" >Add New</button>
				<div class="dropdown-menu" aria-labelledby="dropdownMenu2">
					<button class="dropdown-item" type="button"><a href="addUser">Add User</a></button>
					<button class="dropdown-item" type="button"><a href="addProject">Add Project</a></button>
					<button class="dropdown-item" type="button"><a href="addBug">Add Bug</a></button>
				</div>
			</div>

			<div class="dropdown">
				<button style=" border: none; background: white;"
					class=" nav-link font-weight-bold text-uppercase dropdown-toggle"
					type="button" id="dropdownMenu2" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"> Report</button>
				<div class="dropdown-menu" aria-labelledby="dropdownMenu2">
			    	<button class="dropdown-item" type="button"><a href="userReport">User Reports</a></button>				
					<button class="dropdown-item" type="button"><a href="bugReport">Bug Reports</a></button>
					<button class="dropdown-item" type="button"><a href="projectReport">Project Reports</a></button>
				</div>
			</div>

			<li class="nav-item"><a href="contactUs"
				class="nav-link font-weight-bold text-uppercase" style="color: #3e39478c;">Contact</a></li>
			
			
			
			<div class="dropdown  ml-5">
				<buttonstyle=" border: none; background: white;"
					class=" nav-link font-weight-bold text-uppercase dropdown-toggle"
					type="button" id="dropdownMenu2" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false">Login</button>
				<div class="dropdown-menu" aria-labelledby="dropdownMenu2">
					<button class="dropdown-item" type="button"><a href="firstPage.jsp">Admin</a></button>
					<button class="dropdown-item" type="button">Manager </button>
					<button class="dropdown-item" type="button">Developer</button>
				
				</div>
			
			</div>
			<li class="nav-item "><a href=""
				class="nav-link font-weight-bold text-uppercase" style="color: #3e39478c;">Logout</a></li>
			
			
		</ul>
	</div>
</nav>


	<div class="container">
		
		<div class="row">
			<div class="col-md-12 mt-5">
				<h3>Project Report Table</h3>
			</div>
			<div class="col-lg-12 col-md-12 ml-auto mr-auto">
				
				<div class="table-responsive">
					<table class="table">
						<thead>
							<tr>
								<th class="text-center">#</th>
								<th>Project Name </th>
								<th>Submission Date</th>
								<th>Project Duration</th>
								<th>Client Name</th>
								<th>Client Address</th>
								<th>Phone No</th>
								<th>Email Id</th>
								<th>Department Name</th>
								<th>Description</th>
								
								<th class="text-right">Actions</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="project" items="${projectList}">
							<tr>
								<td class="text-center">${project.projectId }</td>
								<td>${project.projectName }</td>
								<td>${project.submissionDate }</td>
								<td>${project.projectDuration }</td>
								<td>${project.clientName } </td>
								<td>${project.clientAddress }</td>
								<td>${project.phoneNo }</td>
								<td>${project.emailId } </td>
								<td>${project.departmentName }</td>
								<td>${project.description } </td>
								<td class="td-actions text-right">
									<!-- <button type="button" rel="tooltip"
										class="btn btn-info btn-link btn-just-icon btn-sm btn-open-modal"
										data-original-title="" data-toggle="modal"  data-target="#updateUser">
									<i class="fa fa-file-text" style="font-size:15px;"></i>
									</button> -->
									<button type="button"
    class="btn btn-success btn-link btn-just-icon btn-sm btn-open-modal"
    data-original-title=""
    data-toggle="modal"
    data-target="#updateProjectReportModal"
    data-project-id="${project.projectId}" 
    data-project-name="${project.projectName}"
    data-submission-date="${project.submissionDate}"
    data-project-duration="${project.projectDuration}"
    data-client-name="${project.clientName}"
    data-client-address="${project.clientAddress}"
    data-phone-no="${project.phoneNo}"
    data-email-id="${project.emailId}"
    data-department-name="${project.departmentName}"
    data-description="${project.description}">
    <i class="material-icons">edit</i>
</button>

    <button type="button" rel="tooltip"
        class="btn btn-danger btn-link btn-just-icon btn-sm deleteButton"
        data-original-title=""
        data-toggle="modal"
        data-target="#deleteProjectReportModal"
        data-project-id="${project.projectId}"
        data-project-name="${project.projectName}"
        data-submission-date="${project.submissionDate}"
        data-project-duration="${project.projectDuration}"
        data-client-name="${project.clientName}"
        data-client-address="${project.clientAddress}"
        data-phone-no="${project.phoneNo}"
        data-email-id="${project.emailId}"
        data-department-name="${project.departmentName}"
        data-description="${project.description}">
        <i class="material-icons">close</i>
    </button>
								</td>
							</tr>	
					   </c:forEach>
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
<!-- Update Project Report Modal -->
<div class="modal fade" id="updateProjectReportModal" tabindex="-1" role="dialog" aria-labelledby="updateProjectReportModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="updateProjectReportModalLabel">Update Project Report</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
           <div class="modal-body">
           <div style="max-height: 90vh; overflow-y: auto;">
    <form id="updateProjectReportForm">
        <input type="hidden" id="projectId" name="projectId">
        
        <div class="form-group">
            <label for="updateProjectName">Project Name</label>
            <input type="text" class="form-control" id="projectName" name="projectName" required>
        </div>

        <div class="form-group">
            <label for="updateSubmissionDate">Submission Date</label>
            <input type="date" class="form-control" id="submissionDate" name="submissionDate" required>
        </div>

        <div class="form-group">
            <label for="updateProjectDuration">Project Duration</label>
            <input type="text" class="form-control" id="projectDuration" name="projectDuration" required>
        </div>

        <div class="form-group">
            <label for="updateClientName">Client Name</label>
            <input type="text" class="form-control" id="clientName" name="clientName" required>
        </div>

        <div class="form-group">
            <label for="updateClientAddress">Client Address</label>
            <input type="text" class="form-control" id="clientAddress" name="clientAddress" required>
        </div>

        <div class="form-group">
            <label for="updatePhoneNo">Phone No</label>
            <input type="text" class="form-control" id="phoneNo" name="phoneNo" required>
        </div>

        <div class="form-group">
            <label for="updateEmailId">Email Id</label>
            <input type="email" class="form-control" id="emailId" name="emailId" required>
        </div>

        <div class="form-group">
            <label for="updateDepartmentName">Department Name</label>
            <input type="text" class="form-control" id="departmentName" name="departmentName" required>
        </div>

        <div class="form-group">
            <label for="updateDescription">Description</label>
            <textarea class="form-control" id="description" name="description" rows="4" required></textarea>
        </div>
                 <button type="submit" id="saveChangesButton" class="btn btn-primary" style="margin-bottom: 90px;margin-left: 200px;" data-dismiss="modal">Save Changes</button>
                <button type="submit" class="btn btn-secondary"style=" margin-bottom: 90px;" data-dismiss="modal">Close</button>
        		   
                 
        
    </form>
    </div>
</div>
			 <!-- <div class="modal-footer">
		<button type="button" id="saveChangesButton" class="btn btn-primary">Save Changes</button>

                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div> -->
        </div>
    </div>
</div>


<script>
$(document).on("click", ".btn-open-modal", function () {
	 var projectId = $(this).data("project-id"); // Define projectId here

    console.log("Project ID:", projectId); // Now, you can access projectId

    $.ajax({
        type: "GET",
        url: "./getProjectReportById/" + projectId,
        success: function (data) {
            if (data) {
                $("#projectId").val(data.projectId);
                $("#projectName").val(data.projectName);
                $("#submissionDate").val(data.submissionDate);
                $("#projectDuration").val(data.projectDuration);
                $("#clientName").val(data.clientName);
                $("#clientAddress").val(data.clientAddress);
                $("#phoneNo").val(data.phoneNo);
                $("#emailId").val(data.emailId);
                $("#departmentName").val(data.departmentName);
                $("#description").val(data.description);

                $("#updateProjectReportModal").modal("show");
               console.log(data);
            } else {
                alert("Project report not found or error occurred while fetching project report data.");
            }
        },
        error: function () {
            alert("Project report not found or error occurred while fetching project report data.");
        }
    });
});



$(document).ready(function() {
    // Add a click event listener to the "Save Changes" button
    $('#saveChangesButton').click(function(event) {
        // Prevent the default form submission
        event.preventDefault();

        // Serialize the form data
        var formData = $('#updateProjectReportForm').serialize();

        // Send an AJAX request to update the project report
        $.ajax({
            type: 'GET',
            url: './updateProjectReport?' + formData, // Append form data to the URL
            success: function(response) {
                // Close the modal
                $("#updateProjectReportModal").modal("hide");

                // Show a success message (you need an element with id "successMessage" for this to work)
                $('#successMessage').text("Project report updated successfully.");
                $('#successAlert').removeClass('d-none');

                // Update the corresponding row in the table
                var projectId = response.projectId;

                // Find the table row with the matching data-project-id attribute
                var $tableRow = $('tr[data-project-id="' + projectId + '"]');

                // Update the table cells with the new data
                $tableRow.find('td:eq(1)').text(response.projectName);
                $tableRow.find('td:eq(2)').text(response.submissionDate);
                $tableRow.find('td:eq(3)').text(response.projectDuration);
                $tableRow.find('td:eq(4)').text(response.clientName);
                $tableRow.find('td:eq(5)').text(response.clientAddress);
                $tableRow.find('td:eq(6)').text(response.phoneNo);
                $tableRow.find('td:eq(7)').text(response.emailId);
                $tableRow.find('td:eq(8)').text(response.departmentName);
                $tableRow.find('td:eq(9)').text(response.description);
            },

            error: function() {
                // Show an error message (you need an element with id "errorMessage" for this to work)
                $('#errorMessage').text("Error occurred while updating project report data.");
                $('#errorAlert').removeClass('d-none');
            }
        });
    });
});

</script>


<script>
$(document).ready(function() {
    $('.deleteButton').click(function () {
        // Get project report data from the data attributes of the clicked button
        var projectId = $(this).data('projectId');
        var projectName = $(this).data('project-name');
        var submissionDate = $(this).data('submission-date');
        var projectDuration = $(this).data('project-duration');
        var clientName = $(this).data('client-name');
        var clientAddress = $(this).data('client-address');
        var phoneNo = $(this).data('phone-no');
        var emailId = $(this).data('email-id');
        var departmentName = $(this).data('department-name');
        var description = $(this).data('description');
        
      // Confirm the deletion with the user and display project report details
        if (confirm('Are you sure you want to delete this project report?\n\nProject Name: ' + projectName +
            '\nSubmission Date: ' + submissionDate + '\nProject Duration: ' + projectDuration +
            '\nClient Name: ' + clientName + '\nClient Address: ' + clientAddress +
            '\nPhone No: ' + phoneNo + '\nEmail Id: ' + emailId +
            '\nDepartment Name: ' + departmentName + '\nDescription: ' + description)) {
            
              // Send an AJAX request to delete the project report
        
      /*   // Confirm the deletion with the user
        if (confirm('Are you sure you want to delete this project report?\n\nProject Name: ' + projectName)) {
             */
            // Send an AJAX request to delete the project report
            $.ajax({
                type: 'DELETE',
                url: './deleteProjectReport/' + projectId,
            })
            .done(function(data, textStatus, jqXHR) {
                if (jqXHR.status === 204) {
                    // Deletion was successful (HTTP 204 response)
                    $('tr[data-project-id="' + projectId + '"]').remove();
                    alert('Project report deleted successfully');
                } else {
                    // Handle unexpected response status
                    alert('Unexpected response status: ' + jqXHR.status);
                }
            })
            .fail(function(jqXHR, textStatus, errorThrown) {
                // Handle the error
                alert('Error deleting project report: ' + jqXHR.responseText);
            });
        }
    });
});

</script>






</body>

</html>