<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<style>
.mainbox {
	display: flex;
	justify-Content: center;
	align-items: center;
}

.eid label {
	display: block;
	margin-bottom: 5px;
	margin-left: 60px;
}

.eid input {
	display: block;
	margin-bottom: 7px;
	margin-left: 60px;
}

h2 {
	margin-top: -7px;
	text-align: center;
}

input {
	height: 30px;
}

.fbox {
	border: 2px solid;
	width: 380px;
	height: 230px;
	padding: 15px;
	margin-bottom: 10px;
}

.btn {
	margin: 20px 0 0 70px;
	padding: 7px;
	width: 130px;
	background: white;
}

.required:after {
	content: '*';
	color: red;
}

table, tr, th, td {
	border: 2px solid;
	border-collapse: collapse;
	padding: 5px;
}

.curd {
	border: 2px solid red;
	padding: 20px;
	background: white;
	margin-bottom: 10px;
}

a {
	display: inline-block;
	margin-bottom: 7px;
	margin-left: 40px;
	text-decoration: none;
	color: red;
	background: black;
	border: 1px solid white;
	padding: 9px;
	border-radius: 10px;
}
h3{
text-align: center;
}
a:HOVER {
	cursor: pointer;
	color: white;
	border: 1px solid red;
	padding: 10px;
}

.tbl {
	display: flex;
	justify-Content: center;
	align-items: center;
}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="curd">
		<a href="index.jsp">Home</a> <a href="addEmpRec.jsp">Add Employee
			Record </a> <a href="updateEmpRec.jsp">Update Employee Record </a> <a
			href="deleteEmpRec.jsp">Delete Employee Record </a> <a
			href="selectEmpRec.jsp">Select Employee Record </a> <a
			href="selectAll">SelectAll Employees </a>
	</div>

	<div class="mainbox">

		
		<div class="fbox">
			<form action="getEmpRec">
				<h2>Select Employee data</h2>
				<p>Select Employee data by this form.</p>
				<hr>
				<div class="eid">
					<label class="required">EmpId:</label> <input type="number"
						name="id">
				</div>


				<button class="btn">GetRecord</button>
			</form>
		</div>
	</div>
	<h3>Select Employee_data By Id:</h3><br>
	<div class="tbl">
			
			<table>
				<tr>
					<th>EmpId</th>
					<th>Frist Name</th>
					<th>Last Name</th>
					<th>City</th>
					<th>State</th>
					<th>Zip Code</th>
					<th>Country</th>
					<th>Email</th>
					<th>PhoneNo</th>

				</tr>
				<tr>
					<td>${emp.id}</td>
					<td>${emp.empName}</td>
					<td>${emp.empLname}</td>
					<td>${emp.city}</td>
					<td>${emp.state}</td>
					<td>${emp.zipc}</td>
					<td>${emp.ddlist}</td>
					<td>${emp.email}</td>
					<td>${emp.phoneno}</td>

				</tr>


			</table>
			</div>
</body>
</html>