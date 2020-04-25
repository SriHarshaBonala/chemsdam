<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delivery Management System</title>
</head>
<body>
	<h4>Welcome to Delivery Management System</h4>
	
	<input type="radio" name="delivery" checked="checked">Register new delivery <br><br>
	<input type="radio" name="delivery" onclick="location.href = 'past_delivery.jsp';">View past deliveries <br><br>
	<input type="radio" name="delivery" onclick="location.href = 'future_delivery.jsp';">View upcoming deliveries <br><br>
	
	<form:form name="newDelivery" modelAttribute="registerDelivery" action="register_delivery" method="post">
		Flat Number : <input id="rflat_number" name="resident_flat_number" type="text" required maxlength="6"> <br>
		Package Name : <input name="delivery_name" type="text" required> <br>
		Package Type : <input name="delivery_type" type="text" required> <br>
		Delivery Company : <input name="delivery_company" type="text" required> <br>
		Identification Number : <input name="delivery_reference_number" type="text" required> <br>
		Expected Date : <input name="delivery_expected_date" type="text"> <br>
		Mobile Number : <input id="rmobile_number" name="resident_mobile_number" type="text" required maxlength="10"> <br>
		<!-- Delivery Status : <select name="delivery_status"><option>Not delivered</option></select><br> -->
		<input type="submit">
	</form:form>
</body>
</html>