<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Delivery Details</title>
</head>
<body>

	<sql:setDataSource
        var="database"
        url="jdbc:postgresql://localhost:5432/g3_chemsdam"
        user="postgres" password="16011M3513" />
	
	<sql:query var="editUpcomingDeliveries" dataSource="${database}" sql="SELECT * FROM dam_delivery_details WHERE delivery_reference_number='${delivery_reference_number}'">
		SELECT * FROM dam_delivery_details WHERE delivery_status IN ('Not yet delivered', 'Received','not yet delivered', 'NOT YET DELIVERED', 'RECEIVED', 'received');
	</sql:query>
	
	<h2> Enter the delivery details below</h2>
	<div class="div2">
	<c:forEach items="${editUpcomingDeliveries.rows}" var="delivery">
		<form:form name="editDelivery" modelAttribute="editDelivery" action="update_delivery" method="post">
			<label><b>Identification Number : </b></label><br><input name="delivery_reference_number" value="${delivery_reference_number}" readonly><br><br>
			<label><b>Flat Number : </b></label><br><input id="rflat_number" name="resident_flat_number" value="${delivery.resident_flat_number}" type="text" required maxlength="6"> <br><br>
			<label><b>Package Name : </b></label><br><input name="delivery_name" value="${delivery.delivery_name}" type="text" required> <br><br>
			<label><b>Package Type : </b></label><br><input name="delivery_type" value="${delivery.delivery_type}" type="text" required> <br><br>
			<label><b>Delivery Company : </b></label><br><input name="delivery_company" value="${delivery.delivery_company}" type="text" required> <br><br>
			<label><b>Expected Date : </b></label><br><input name="delivery_expected_date" value="${delivery.delivery_expected_date}" type="text"> <br><br>
			<label><b>Mobile Number : </b></label><br><input id="rmobile_number" name="resident_mobile_number" value="${delivery.resident_mobile_number}" type="text" required maxlength="10"> <br><br>
			<input type="submit" value="Update Details">
		</form:form>
		</c:forEach>
	</div>
</body>
</html>