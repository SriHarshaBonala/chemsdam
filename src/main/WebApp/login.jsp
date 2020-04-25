<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body>
	<h3>Login details</h3> <br>
	<form:form id="loginForm" modelAttribute="login" action="login_details" method="post">
		Username : <input id="username" name="username" type="text"> <br>
		Password : <input id="password" name="password" type="password"> <br>
		<input type="submit"> <br>
	</form:form >
	Forgot Password? Click <a href="forgotpassword.jsp">here</a> to recover account <br>
	Not a registered user? Click <a href="register.jsp">here</a> to register
</body>
</html>