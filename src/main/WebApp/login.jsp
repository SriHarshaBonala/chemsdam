<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
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
}

p{
margin-left: 550px;
}

</style>
</head>
<body style="background-color: #E0FFFF;">
	<h2 align="center">Delivery and Visitor Access Portal</h2>
	<h2 font-family="Georgia" align='center'>Login details</h2>
<div>
	<form:form id="loginForm" modelAttribute="login" action="login_details" method="post">
		<label><b>Username : </b></label><br><input id="username" name="username" type="text" placeholder="Enter Username"required> <br>
		<label><b>Password : </b></label><br><input id="password" name="password" type="password" placeholder="Enter Password" required> <br>
		<input type="submit"> <br>
	</form:form >
	<p>Forgot Password? Click <a href="forgotpassword.jsp">here</a> to recover account <br>Not a registered resident? Click <a href="register.jsp">here</a> to register</p>
</div>
</body>
</html>
