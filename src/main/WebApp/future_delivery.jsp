<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Upcoming deliveries</title>
</head>
<body>
	<h4>Upcoming delivery list</h4>
	
	<input type="radio" name="delivery" onclick="location.href = 'dms_home.jsp';">Register new delivery <br><br>
	<input type="radio" name="delivery" onclick="location.href = 'past_delivery.jsp';">View past deliveries <br><br>
	<input type="radio" name="delivery" checked="checked" onclick="location.href = 'future_delivery.jsp';">View upcoming deliveries <br><br>
	
	<table border="1">
		<tr>
			<th>Resident Flat Number</th>
			<th>Delivery Reference Number</th>
			<th>Delivery Name</th>
			<th>Delivery type</th>
			<th>Delivery Company</th>
			<th>Delivery Expected Date</th>
			<th>Resident Mobile Number</th>
			<th>Delivery Status</th>
		</tr>
		<c:forEach items="${all_deliveries}" var="delivery">
		<tr>
			<td>${delivery.resident_flat_number}</td>
			<td>${delivery.delivery_reference_number}</td>
			<td>${delivery.delivery_name}</td>
			<td>${delivery.delivery_type}</td>
			<td>${delivery.delivery_company}</td>
			<td>${delivery.delivery_expected_date}</td>
			<td>${delivery.resident_mobile_number}</td>
			<td>${delivery.delivery_status}</td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>