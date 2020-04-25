<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Password recovery</title>
</head>
<body>
	<h3>Forgot Password</h3> <br>
	<form:form id="fpasswordForm" modelAttribute="forgot" action="update_password" method="post">
		Username : <input id="uname" name="username" type="text"> <br>
		Flat Number : <input id="mb" name="resident_flat_number" type="text" maxlength="6"> <br>
		New password : <input id="np" name="password" type="password"> <br>
		Re-enter new password : <input id="rnp" name="repass" type="password"> <br>
		<input type="submit"> <br>
	</form:form >
	<a href="login.jsp">Back</a>
</body>
</html>