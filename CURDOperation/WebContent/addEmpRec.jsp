<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
.eid label {
	display: block;
	margin-bottom: 5px;
	margin-left: 110px;
}

.eid input {
	display: block;
	margin-bottom: 7px;
	margin-left: 90px;
}

h2 {
	margin-top: -7px;
	text-align: center;
}

input {
	height: 30px;
}

.dd_list {
	display: inline-block;
	height: 35px;
	margin-left: 20px;
}

.Co {
	margin-top: 10px;
}

.Co label {
	display: inline-block;
}

.lbl {
	margin-left: 110px;
}

.inp {
	margin-left: 23px;
}

.cadd {
	margin-top: 10px;
}

.cadd label {
	display: block;
	margin-bottom: 20px;
}

#sadd {
	width: 350px;
}

.add {
	margin-top: 10px;
	display: block;
}

.add #sid {
	margin-left: 20px;
}

.field {
	margin-top: 10px;
}

.field .lbl1 {
	margin-left: 140px;
}

.lbl2 {
	margin-left: 80px;
}

.field .inp1 {
	margin-left: 20px;
}

.fbox {
	border: 2px solid;
	width: 450px;
	height: 480px;
	padding: 15px;
}

.btn {
	margin: 20px 0 0 130px;
	padding: 7px;
	width: 130px;
	background: white;
}

.required:after {
	content: '*';
	color: red;
}

.mainbox {
	display: flex;
	justify-Content: center;
	align-items: center;
}

.fbox {
	background: white;
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
	color: white; border : 1px solid red;
	padding: 10px;
	border: 1px solid red;
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
			<form action="addEmpRec">
				<h2>Employee Registration Form</h2>
				<p>Register Your Account by this form .Required fields are
					marked with the asterisk(*)</p>
				<hr>
				<div class="eid">
					<label class="required">EmpId</label> <input type="number"
						name="id">
				</div>
				<div class="Co">
					<label class="required"> First Name</label> <label
						class="lbl required">Last Name</label>
				</div>

				<div class="Co">
					<input type="text" name="empName"> <input class="inp"
						type="text" name="empLname">
				</div>

				<div class="cadd">
					<label>Employee Address</label>
					<div class="add">
						<input type="text" id="cid" name="city" placeholder="City ">
						<input type="text" id="sid" name="state" placeholder="State">
					</div>
					<div class="add">
						<input type="text" name="zipc" placeholder="Zip Code"> <select
							name="ddlist" class="dd_list">
							<option disabled selected>Country</option>
							<option>Astroliya</option>
							<option>BangalaDesh</option>
							<option>japan</option>
							<option>chaina</option>
							<option>India</option>
							<option>Indoneshiya</option>
						</select>
					</div>
				</div>

				<div class="field">
					<label class="required">Email</label> <label class="lbl1">PhoneNo</label>
				</div>

				<div class="field">
					<input type="email" name="email"> <input class="inp1"
						type="tel" name="phoneno" Placeholder="e.g: 91+ 9898989898">
				</div>

				<button class="btn">Registration</button>
			</form>
		</div>
	</div>
	
	<h4 style="color: green">${successMsg}</h4>
	<h4 style="color: red">${errorMsg}</h4>


</body>
</html>