<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Visitor Details</title>
</head>
<body>

	<sql:setDataSource
        var="database"
        url="jdbc:postgresql://localhost:5432/g3_chemsdam"
        user="postgres" password="16011M3513"/>
	
	<sql:query var="editUpcomingVisitors" dataSource="${database}" sql="SELECT * FROM dam_visitor_details WHERE visitor_identification_number='${visitor_identification_number}'">
		SELECT * FROM dam_visitor_details WHERE visitor_status IN ('Not yet arrived','not yet arrived', 'NOT YET ARRIVED');
	</sql:query>
	
	<h2> Enter visitor details below</h2>
	<div class="div2">
	<c:forEach items="${editUpcomingVisitors.rows}" var="visitor">
		<form:form name="editVisitor" modelAttribute="editVisitor" action="update_visitor" method="post">
			<label><b>Identification Number : </b></label><br><input name="visitor_identification_number" value="${visitor_identification_number}" readonly><br><br>
			<label><b>Flat Number : </b></label><br><input id="rflat_number" name="resident_flat_number" value="${visitor.resident_flat_number}" type="text" required maxlength="6"> <br><br>
			<label><b>Visitor Name : </b></label><br><input name="visitor_name" value="${visitor.visitor_name}" type="text" required> <br><br>
			<label><b>Visitor Mobile Number : </b></label><br><input name="visitor_mobile_number" value="${visitor.visitor_mobile_number}" type="text" required> <br><br>
			<label><b>Expected Date : </b></label><br><input name="visitor_expected_date" value="${visitor.visitor_expected_date}" type="text"> <br><br>
			<label><b>Resident Mobile Number : </b></label><br><input id="rmobile_number" value="${visitor.resident_mobile_number}" name="resident_mobile_number" type="text" required maxlength="10"> <br><br>
			<input type="submit" value="Update Details">
		</form:form>
	</c:forEach>
	</div>
</body>
</html>