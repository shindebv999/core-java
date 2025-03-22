<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
.curd {
	border: 2px solid red;
	padding: 20px;
	background: white;
	margin-bottom: 10px;
}

a {
	display: inline-block;
	margin-bottom: 7px;
	margin-left: 30px;
	text-decoration: none;
	color: red;
	background: black;
	border: 1px solid white;
	padding: 9px;
	border-radius: 10px;
}

a:HOVER {
	cursor: pointer;
	color: white;
	border: 1px solid red;
	padding: 10px;
}

h2 {
	margin-top: -7px;
	text-align: center;
}

.eid label {
	display: block;
	margin-bottom: 3px;
	margin-left: 80px;
}

.eid input {
	margin-left: 70px;
	margin-bottom: 7px;
}

input {
	height: 30px;
}

.fbox {
	border: 2px solid;
	width: 380px;
	height: 250px;
	padding: 15px;
}

.btn {
	margin: 20px 0 0 80px;
	padding: 7px;
	width: 130px;
	background: white;
}

.mainbox {
	display: flex;
	justify-Content: center;
	align-items: center;
}

.required:after {
	content: '*';
	color: red;
}
</style>
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
			<form action="deleteEmpRec">
				<h2>Delete Employee Data</h2>
				<p>Delete Employee data using this form.</p>
				<hr>
				<div class="eid">
					<label class="required">EmpId</label> <input type="number"
						name="id">
				</div>

				<button class="btn">Delete</button>
			</form>
		</div>
	</div>
	<h4 style="color: green">${successMsg}</h4>
	<h4 style="color: red">${errorMsg}</h4>

</body>
</html>