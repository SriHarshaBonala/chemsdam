<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Visitor Management System</title>
<style>

input[type=text]{
 width: 30%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 3px solid #ccc;
  box-sizing: border-box;
  -webkit-transition: 0.2s;
  margin-left: 550px;
}

input[type=text]:focus {
  border: 3px solid #555;
}

label{
 margin-left: 550px;
 font-family: Georgia;
}

input[type=submit]{
  background-color:#48D1CC;
  border: none;
  color: white;
  padding: 16px 32px;
  text-decoration: none;
  margin: 4px 550px;
  cursor: pointer;
  font-family: Georgia;
}

input[type=submit]:hover {
  background-color: #20B2AA;
}

.div1 {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
  margin: auto;
}

.div2 {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
  margin: auto;
}
.container {
  display: block;
  position: relative;
  padding-left: 35px;
  margin-bottom: 12px;
  cursor: pointer;
  font-size: 18px;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}


.container input {
  position: absolute;
  opacity: 0;
  cursor: pointer;
}

.checkmark {
  position: absolute;
  top: 0;
  left: 0;
  height: 25px;
  width: 25px;
  background-color: white;
  border-radius: 50%;
}

.container input:checked ~ .checkmark {
  background-color: #48D1CC;
}

.checkmark:after {
  content: "";
  position: absolute;
  display: none;
}

.container input:checked ~ .checkmark:after {
  display: block;
}

.container .checkmark:after {
 	top: 9px;
	left: 9px;
	width: 8px;
	height: 8px;
	border-radius: 50%;
	background: white;
}

h2{
margin-left: 550px;
font-family: Georgia;
}

.button {
  background-color: black; 
  border: none;
  color: white;
  padding: 10px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  -webkit-transition: 0.4s; 
  transition-duration: 0.4s;
}

.button: {
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
}

</style>
</head>
<body style="background-color: Turquoise;">
  <button class="button" onclick="location.href='welcome.jsp';">Home</button>
  <form id="bform" action="logout_resident"><button class="button">Logout</button></form>
	<h2>Welcome to Visitor Management System</h2>
<div class="div1">	
	<label class="container">Register new visitor <input type="radio" name="visitor" checked="checked"><span class="checkmark"></span></label>
	<label class="container">View past visitors <input type="radio" name="visitor" onclick="location.href = 'past_visitor.jsp';"><span class="checkmark"></span></label>
	<label class="container">View upcoming visitors<input type="radio" name="visitor" onclick="location.href = 'future_visitor.jsp';"><span class="checkmark"></span></label><br>
</div><br><br>
		<h2> Enter the new visitor details below</h2>
<div class="div2">
	<form:form name="newVisitor" modelAttribute="registerVisitor" action="register_visitor" method="post">
		<label><b>Flat Number : </b></label><br><input id="rflat_number" name="resident_flat_number" type="text" required maxlength="6"> <br><br>
		<label><b>Visitor Name : </b></label><br><input name="visitor_name" type="text" required> <br><br>
		<label><b>Visitor Mobile Number : </b></label><br><input name="visitor_mobile_number" type="text" required> <br><br>
		<label><b>Identification Number : </b></label><br><input name="visitor_identification_number" type="text" required> <br><br>
		<label><b>Expected Date : </b></label><br><input name="visitor_expected_date" type="text"> <br><br>
		<label><b>Resident Mobile Number : </b></label><br><input id="rmobile_number" name="resident_mobile_number" type="text" required maxlength="10"> <br><br>
		<!-- Delivery Status : <select name="delivery_status"><option>Not delivered</option></select><br> -->
		<input type="submit">
	</form:form>
</div>
</div>
</body>
</html>
