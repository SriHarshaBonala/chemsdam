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
text-align: center;
margin-left: 40px;
}

button {
  display: inline-block;
  border-radius: 4px;
  background-color: #20B2AA;
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

input[type=submit] {
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

.b: {
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
}

</style>
</head>
<body style="background-color: PaleTurquoise;">
<form action="logout_resident"><button class="b1">Logout</button></form>
	<h2>Delivery and Visitor Access Portal</h2>
	<h2>WELCOME TO AIT APARTMENTS !!!</h2>	
<div>
	<button onclick="location.href = 'dms_home.jsp';"><span>Delivery Management System</span></button> <br><br>
	<button onclick="location.href = 'vam_home.jsp';"><span>Visitor Access Management</span></button>
</div>
</body>
</html>
