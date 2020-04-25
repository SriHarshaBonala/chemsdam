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
</head>
<body>
	<h3>Register</h3>
	<form:form name="registrationForm" modelAttribute="register" action="register_resident" method="post" onsubmit="return validatereg()">
		Name: <input id="rname" name="resident_name" type="text" required> <br>
		Flat Number: <input id="rflat_number" name="resident_flat_number" type="text" required maxlength="6"> <br>
		Mobile Number: <input id="rmobile_number" name="resident_mobile_number" type="text" required maxlength="10"> <br>
		Email: <input id="remail" name="resident_email" type="text" required> <br>
		Username: <input id="username" name="username" type="text" required> <br>
		Password: <input id="password" name="password" type="password" required min="5" max="16"> <br>
		Re-enter password: <input id="reenter" name="reenter" type="password" required min="5" max="16"> <br>
		<input type="submit"><br>
	</form:form>
	Already registered user? Click <a href="login.jsp">here</a> to login
</body>
</html>