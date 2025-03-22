<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

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

table, tr, th, td {
	border: 2px solid;
	border-collapse: collapse;
	padding: 5px;
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
			<c:forEach var="emp" items="${empList}">
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
			</c:forEach>
		</table>

	</div>

</body>
</html>