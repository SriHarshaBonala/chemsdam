<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Past deliveries</title>
</head>
<body>
	<h4>Past delivery list</h4>
	
	<input type="radio" name="delivery" onclick="location.href = 'dms_home.jsp';">Register new delivery <br><br>
	<input type="radio" name="delivery" checked="checked" onclick="location.href = 'past_delivery.jsp';">View past deliveries <br><br>
	<input type="radio" name="delivery" onclick="location.href = 'future_delivery.jsp';">View upcoming deliveries <br><br>
</body>
</html>