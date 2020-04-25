<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Upcoming deliveries</title>

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
margin-left: 700px;
font-family: Georgia;
}

</style>
</head>
<body style="background-color: #E0FFFF;">
	<h2>Upcoming delivery list</h2>
<div>	
	<label class="container">Register new delivery <input type="radio" name="delivery" onclick="location.href = 'dms_home.jsp';"><span class="checkmark"></span></label>
	<label class="container">View past deliveries <input type="radio" name="delivery" onclick="location.href = 'past_delivery.jsp';"><span class="checkmark"></span></label>
	<label class="container">View upcoming deliveries<input type="radio" name="delivery" checked="checked" onclick="location.href = 'future_delivery.jsp';"><span class="checkmark"></span></label><br>
	
	<sql:query var="listUpcomingDeliveries">
		SELECT * from dam_delivery_details;
	</sql:query>
	
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
		<c:forEach items="${listUpcomingDeliveries.rows}" var="delivery">
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
</div>
</body>
</html>
