<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
form{
border:2px solid ;
height:240px;
width:200px;
margin_left:5px;
padding:10px;
margin_top:20px;
background: linear-gradient(to top right,hotpink,skyblue );
}

input{
margin:10px;
padding:7px;
}
.btn{
width:80px;
height:30px;
color:;
}
</style>
</head>
<body>
<form action="login">
<h3>Login Form:</h3>
<label>UserName :</label>
<input type="text" name="uname" placeholder="Enter UserName">
<label>Password :</label>
<input type="password" name="pwd" placeholder="Enter Password">
<input class="btn" type="submit" value="Login">
</form>
</body>
</html>