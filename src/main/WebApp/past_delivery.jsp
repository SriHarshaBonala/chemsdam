<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Past deliveries</title>
<style>

div {
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
font-family: Georgia;
margin-left: 700px;

}

</style>
</head>
<body style="background-color: #E0FFFF;"> 
	<h2>Past delivery list</h2>
<div>	
	<label class="container">Register new delivery <input type="radio" name="delivery" onclick="location.href = 'dms_home.jsp';"><span class="checkmark"></span></label>
	<label class="container">View past deliveries <input type="radio" name="delivery" checked="checked" onclick="location.href = 'past_delivery.jsp';"><span class="checkmark"></span></label>
	<label class="container">View upcoming deliveries<input type="radio" name="delivery" onclick="location.href = 'future_delivery.jsp';"><span class="checkmark"></span></label><br>
</div>
</body>
</html>
