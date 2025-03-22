<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
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
	margin-left: 90px;
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
.lbl2{
margin-left: 80px;
}
.field .inp1 {
	margin-left: 20px;
}

.fbox {
	border: 2px solid;
	width: 500px;
	height: 535px;
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
</style>
<body>
<div class="fbox">
		<form action="register">
			<h2>Company Registration Form</h2>
			<p>Register Your Business by this form .Required fields are
				marked with the asterisk(*)</p>
			<hr>
			<div class="Co">
				<label class="required">Company name</label> <label
					class="lbl required">owner</label>
			</div>

			<div class="Co">
				<input type="text" name="cname"> <input class="inp"
					type="text" name="owner">
			</div>

			<div class="cadd">
				<label class="required">Company mailing address</label> <input
					id="sadd" type="text" name="saddress" placeholder="Street Address">
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

			<div class="field">
				<label>Nominal Caption</label> <label class="lbl2 required">Industry</label>
			</div>

			<div class="field">
				<input type="text" name="n_Caption"> <select name="ind"
					class=" dd_list">
					<option class=" inp1" disabled selected>Industry</option>
					<option>Riyality Software Services</option>
					<option>Java Under Tree</option>
				</select>
			</div>

			<button class="btn">Registration</button>
		</form>
	</div>

</body>
</html>