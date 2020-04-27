<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Password recovery</title>

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
margin-left: 70px;
}

p{
margin-left: 550px;
font-family: Georgia;
}

</style>
</head>
<body style="background-color: Turquoise;">
	<h2 align="center">Delivery and Visitor Access Portal</h2>
<div>
	<form:form id="fpasswordForm" modelAttribute="forgot" action="update_password" method="post">
		<h2>Forgot Password</h2>
		<label><b>Username : </b><label><br><input id="uname" name="username" type="text"> <br>
		<label><b>Flat Number : </b><label><br><input id="mb" name="resident_flat_number" type="text" maxlength="6"> <br>
		<label><b>New password : </b><label><br><input id="np" name="password" type="password"> <br>
		<label><b>Re-enter new password : </b><label><br><input id="rnp" name="repass" type="password"> <br>
		<input type="submit"> <br>
	</form:form >
	<p><a href="login.jsp">Back</a></p>
</div>
</body>
</html>
