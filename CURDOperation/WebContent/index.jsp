<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="curd">
		<a href="Login.jsp">Login</a> <a href="index.jsp">Home</a> <a
			href="addEmpRec.jsp">Add Employee Record </a> <a
			href="updateEmpRec.jsp">Update Employee Record </a> <a
			href="deleteEmpRec.jsp">Delete Employee Record </a> <a
			href="selectEmpRec.jsp">Select Employee Record </a> <a
			href="selectAll">SelectAll Employees </a>
	</div>


</body>
</html>