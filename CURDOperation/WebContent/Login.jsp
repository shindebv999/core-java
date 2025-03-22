<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
.fbox {
	display: flex;
	justify-Content: center;
	align-items: center;
	margin-top: 100px;
}

form {
	border: 2px solid;
	height: 240px;
	width: 200px;
	margin_left: 5px;
	padding: 10px;
	margin_top: 20px;
}

input {
	margin: 10px;
	padding: 7px;
}

.btn {
	width: 80px;
	height: 30px;
	color:;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="fbox">
		<form action="login" method="post">
			<h3>Login Form:</h3>
			<label>UserName :</label> <input type="text" name="userName"
				placeholder="Enter UserName"> <label>Password :</label> <input
				type="password" name="Password" placeholder="Enter Password">
			<input class="btn" type="submit" value="Login">
		</form>
		<h1 style="color: red">${Error}</h1>

	</div>
</body>
</html>