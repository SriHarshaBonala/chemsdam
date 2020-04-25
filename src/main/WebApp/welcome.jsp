<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome page</title>

<style>

h2{
font-family: Georgia;
margin-left: 550px;
}

button {
  display: inline-block;
  border-radius: 4px;
  background-color: #48D1CC;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 18px;
  padding: 20px;
  width: 350px;
  height: 100px;
  transition: all 0.5s;
  cursor: pointer;
  margin-left: 600px;
}

button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

button:hover span {
  padding-right: 25px;
}

button:hover span:after {
  opacity: 1;
  right: 0;
}

</style>
</head>
<body style="background-color: #E0FFFF;">
	<h2>Delivery and Visitor Access Portal</h2>
	<h2>WELCOME TO XYZ APARTMENTS !!!</h2>	
<div>
	<button onclick="location.href = 'dms_home.jsp';"><span>Delivery Management System</span></button> <br><br>
	<button onclick="location.href = 'vam_home.jsp';"><span>Visitor Access Management</span></button>
</div>
</body>
</html>
