<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
<script type="text/javascript">
	function validatereg()
	{
		var name = document.registrationForm.resident_name.value;
		var flat = document.registrationForm.resident_flat_number.value;
		var mobile = document.registrationForm.resident_mobile_number.value;
		var email = document.registrationForm.resident_email.value;
		var uname = document.registrationForm.username.value;
		var pass = document.registrationForm.password.value;
		var repass = document.registrationForm.reenter.value;
		
		atpos = email.indexOf("@");
        dotpos = email.lastIndexOf(".");
        
        if(pass == repass)
        {
        	if (atpos < 1 || ( dotpos - atpos < 2 )) 
            {
                alert("Please enter correct email ID")
                document.registrationForm.resident_email.focus();
                return false;
            }
        	return true;
        }
        else
        {
        	alert("Passwords must match")
        	document.registrationForm.reenter.focus();
        }
	}
</script>

<style>
input[type=text], input[type=password]{
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

div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
  margin: auto;
}

h2{
font-family: Georgia;
text-align: center;
margin-left: 50px;
}

p{
margin-left: 550px;
}
</style>
</head>
<body style="background-color: Turquoise;">
	<h2>Delivery and Visitor Access Portal</h2>
<div>
	<form:form name="registrationForm" modelAttribute="register" action="register_resident" method="post" onsubmit="return validatereg()">
		<h2>New Resident Registration</h2>
		<label><b>Name: </b></label><br><input id="rname" name="resident_name" type="text" required> <br>
		<label><b>Flat Number: </b></label><br><input id="rflat_number" name="resident_flat_number" type="text" required maxlength="6"> <br>
		<label><b>Mobile Number: </b></label><br><input id="rmobile_number" name="resident_mobile_number" type="text" required maxlength="10"> <br>
		<label><b>Email: </b></label><br><input id="remail" name="resident_email" type="text" required> <br>
		<label><b>Username: </b></label><br><input id="username" name="username" type="text" required> <br>
		<label><b>Password: </b></label><br><input id="password" name="password" type="password" required min="5" max="16"> <br>
		<label><b>Re-enter password: </b></label><br><input id="reenter" name="reenter" type="password" required min="5" max="16"> <br>
		<input type="submit"><br>
	</form:form>
	<p>Already registered resident? Click <a href="login.jsp">here</a> to login</p>
</div>
</body>
</html>
