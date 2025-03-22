<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
table,tr,th,td{
border:2px solid ;
border-collapse:collapse;
padding:5px;
}
</style>
<body>
<table>
<tr>
<th>Company Name</th>
<th>Owner </th>
<th>Street Address </th>
<th>City </th>
<th>State </th>
<th>Zip Code</th>
<th>Country </th>
<th>Email </th>
<th>PhoneNo </th>
<th>Nominal Caption</th>
<th>Industry</th>
</tr>
<tr>
<td>${com.cname}</td>
<td>${com.owner}</td>
<td>${com.saddress}</td>
<td>${com.city}</td>
<td>${com.state}</td>
<td>${com.zipc}</td>
<td>${com.ddlist}</td>
<td>${com.email}</td>
<td>${com.phoneno}</td>
<td>${com.n_Caption}</td>
<td>${com.ind}</td>
</tr>
</table>

</body>
</html>