<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Bug Report Table  </title>
<link rel="stylesheet" href="resources/css/userReport.css">
<link rel="stylesheet" href="resources/css/updateUser.css">
<link rel="stylesheet" href="resources/css/viewProfile.css">
<script  href="resources/jsp/userReport.jsp"></script>
<script  href="resources/jsp/viewProfile.jsp"></script>

 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css"
	rel="stylesheet">

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
rel="stylesheet" id="bootstrap-css">

<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>


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
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons">
	<!-- Include jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>


	
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

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
	class="navbar navbar-default navbar-fixed-top navbar-expand-lg navbar-light bg-white py-3 shadow-sm" style="
    position: fixed;
    margin-top: -720px;
">
	<a href="#" class="navbar-brand font-weight-bold d-block d-lg-none">MegaMenu</a>
	<button type="button" data-toggle="collapse"
		data-target="#navbarContent" aria-controls="navbars"
		aria-expanded="false" aria-label="Toggle navigation"
		class="navbar-toggler">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div id="navbarContent" class="collapse navbar-collapse" style="width: 1800px;">
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
				<button style=" border: none; background: white;"
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
		
		<div class="row" style="
    margin-top: -300px;
">
			<div class="col-md-12 mb-2">
				<h3>Bug Report Table</h3>
			</div>
			<div class="col-lg-12 col-md-12 ml-auto mr-auto">
				
				<div class="table-responsive">
					<table class="table">
						<thead>
							<tr>
								<th class="text-center">#</th>
								<th>Bug Name </th>
								<th>Project Name </th>
								<th>Tester Code </th>
								<th>Bug Level </th>
								<th>Bug Priority </th>
								<th>Status Name </th>
								<th>Description</th>
								
								<th class="text-right">Actions</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="bug" items="${bugList}">
							<tr>
								<td class="text-center">${bug.bugId }</td>
								<td>${bug.bugName }</td>
								<td>${bug.projectName }</td>
								<td>${bug.testerCode }</td>
								<td>${bug.bugLevel } </td>
								<td>${bug.bugPriority }</td>
								<td>${bug.statusName }</td>
								<td>${bug.description } </td>
								
								<td class="td-actions text-right">
									<!-- <button type="button" rel="tooltip"
										class="btn btn-info btn-link btn-just-icon btn-sm btn-open-modal"
										data-original-title="" data-toggle="modal"  data-target="#updateBug">
									<i class="fa fa-file-text" style="font-size:15px;"></i>
									</button> -->
									    <!-- Edit Button -->
									    <button type="button" class="btn btn-success btn-link btn-just-icon btn-sm btn-open-modal"
									        data-bug-id="${bug.bugId}"
									        data-bug-name="${bug.bugName}"
									        data-project-name="${bug.projectName}"
									        data-tester-code="${bug.testerCode}"
									        data-bug-level="${bug.bugLevel}"
									        data-bug-priority="${bug.bugPriority}"
									        data-status-name="${bug.statusName}"
									        data-description="${bug.description}"
									        data-toggle="modal" data-target="#editBugReportModal">
									        <i class="material-icons">edit</i>
									    </button>

									<button type="button" rel="tooltip"
									    class="btn btn-danger btn-link btn-just-icon btn-sm deleteButton"
									    data-bug-id="${bug.bugId}"
									    data-bug-name="${bug.bugName}"
									    data-project-name="${bug.projectName}"
									    data-tester-code="${bug.testerCode}"
									    data-bug-level="${bug.bugLevel}"
									    data-bug-priority="${bug.bugPriority}"
									    data-status-name="${bug.statusName}"
									    data-description="${bug.description}"
									    data-toggle="modal" data-target="#deleteBugModal">
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
    <button type="button" class="close" data-dismiss="modal"  aria-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
</div>

<!-- Update Bug Report Modal -->
<div class="modal fade" id="editBugReportModal" tabindex="-1" role="dialog" aria-labelledby="editBugReportModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="editBugReportModalLabel">Edit Bug Report</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
<div class="modal-body">
    <form id="editBugReportForm" action="./updateBugReport/${bug.bugId}">
               <div style="max-height: 90vh; overflow-y: auto;">
        <input type="hidden" id="bugId" name="bugId">
        <div class="form-group">
            <label for="bugName">Bug Name</label>
            <input type="text" class="form-control" id="bugName" name="bugName" required>
        </div>
        <div class="form-group">
            <label for="projectName">Project Name</label>
            <input type="text" class="form-control" id="projectName" name="projectName">
        </div>
        <div class="form-group">
            <label for="testerCode">Tester Code</label>
            <input type="text" class="form-control" id="testerCode" name="testerCode">
        </div>
        <div class="form-group">
            <label for="bugLevel">Bug Level</label>
            <select class="form-control" id="bugLevel" name="bugLevel">
                <option value="Low">Low</option>
                <option value="Medium">Medium</option>
                <option value="High">High</option>
            </select>
        </div>
        <div class="form-group">
            <label for="bugPriority">Bug Priority</label>
            <select class="form-control" id="bugPriority" name="bugPriority">
                <option value="Low">Low</option>
                <option value="Medium">Medium</option>
                <option value="High">High</option>
            </select>
        </div>
        <div class="form-group">
            <label for="statusName">Status Name</label>
            <input type="text" class="form-control" id="statusName" name="statusName">
        </div>
        <div class="form-group">
            <label for="description">Description</label>
            <textarea class="form-control" id="description" name="description" rows="4"></textarea>
        </div>
        <!-- Add more fields here as needed -->
        <button type="submit" class="btn btn-primary"style="margin-bottom: 90px;margin-left: ;" >Save Changes</button>
    </form>
    </div>
</div>

            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

<!-- JavaScript for updating and deleting bug reports -->

<!-- Update Bug Report -->
<script>
$(document).on("click", ".btn-open-modal", function () {
    var bugId = $(this).data("bug-id");
    console.log("Bug ID:", bugId);
    
    // Fetch bug report data via AJAX and populate the edit modal
    $.ajax({
        type: "GET",
        url: "./getBugReportById/" + bugId,
        success: function (data) {
            console.log("Received bug report data:", data);
            $("#bugId").val(data.bugId);
            $("#bugName").val(data.bugName);
            $("#projectName").val(data.projectName);
            $("#testerCode").val(data.testerCode);
            $("#bugLevel").val(data.bugLevel);
            $("#bugPriority").val(data.bugPriority);
            $("#statusName").val(data.statusName);
            $("#description").val(data.description);

            // Show the edit modal
            $("#editBugReportModal").modal("show");
        },
        error: function () {
            alert("Bug report not found or error occurred while fetching bug report data.");
        }
    });
});
 //Handle form submission (updateBugReport)
$("#editBugReportForm").submit(function (event) {
 event.preventDefault();

 // Serialize the form data (if needed)
 var formData = $(this).serialize();

 // Update the URL to include the bug ID and form data
 var bugId = $("#bugId").val();
 var updatedUrl = `./updateBugReport/${bugId}?${formData}`;

 $.ajax({
     type: "GET",
     url: updatedUrl,
     data: $(this).serialize(),
     success: function (response) {
         // Handle success (e.g., close the modal, update the bug report table)
         $("#editBugReportModal").modal("hide");
      // Close the success alert after a delay (e.g., 3 seconds)
         setTimeout(function () {
             $('#successAlert').alert('close');
         }, 3000); // Adjust the delay as needed (in milliseconds)
         $('#successAlert').removeClass('d-none');
         
         // Update the bug report table with the updated data
         var updatedBugId = response.bugId;
         var updatedBugName = response.bugName;

         // Find the table row with the matching data-bug-id attribute
         var $tableRow = $('tr[data-bug-id="' + updatedBugId + '"]');

         // Update the cells in that row to reflect the new data
         $tableRow.find('td:eq(1)').text(updatedBugName);
         $tableRow.find('td:eq(2)').text(response.projectName);
         // Update other fields if needed
            $tableRow.find('td:eq(3)').text(response.testerCode);
            $tableRow.find('td:eq(4)').text(response.bugLevel);
            $tableRow.find('td:eq(5)').text(response.bugPriority);
            $tableRow.find('td:eq(6)').text(response.statusName);
            $tableRow.find('td:eq(7)').text(response.description);
     },
     error: function () {
         $('#errorMessage').text("Error occurred while updating bug report data.");
         $('#errorAlert').removeClass('d-none'); // Show the error alert
     }
 });
}); 
</script>
<script>
$(document).ready(function() {
    $('.deleteButton').click(function () {
        // Get bug report data from the data attributes of the clicked button
        var bugId = $(this).data('bug-id');
        var bugName = $(this).data('bug-name');
        var projectName = $(this).data('project-name');
        var testerCode = $(this).data('tester-code');
        var bugLevel = $(this).data('bug-level');
        var bugPriority = $(this).data('bug-priority');
        var statusName = $(this).data('status-name');
        var description = $(this).data('description');
        
        // Confirm the deletion with the user and display bug report details
        if (confirm('Are you sure you want to delete this bug report?\n\nBug Name: ' + bugName +
            '\nProject Name: ' + projectName + '\nTester Code: ' + testerCode +
            '\nBug Level: ' + bugLevel + '\nBug Priority: ' + bugPriority +
            '\nStatus Name: ' + statusName + '\nDescription: ' + description)) {
            
            // Send an AJAX request to delete the bug report
            $.ajax({
                type: 'DELETE',
                url: './deleteBug/' + bugId,
                success: function () {
                    // Remove the table row if deletion is successful
                    $('tr[data-bug-id="' + bugId + '"]').remove();
                    alert('Bug report deleted successfully');
                },
                error: function (xhr, textStatus, errorThrown) {
                    alert('Error deleting bug report: ' + xhr.responseText);
                }
            });
        }
    });
});
</script>

</body>
</html>