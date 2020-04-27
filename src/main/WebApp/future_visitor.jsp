<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Upcoming Visitors</title>

<style>

div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
  margin: auto;
  position: absolute;
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

.button {
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

.button: {
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
}

</style>
</head>
<body style="background-color: Turquoise;">
<button class="button" onclick="location.href='welcome.jsp';">Home</button>
 <form id="bform" action="logout_resident"><button class="button">Logout</button></form>
	<h2>Upcoming Visitor list</h2>
<div>	
	<label class="container">Register new visitor <input type="radio" name="delivery" onclick="location.href = 'vam_home.jsp';"><span class="checkmark"></span></label>
	<label class="container">View past visitors <input type="radio" name="delivery" onclick="location.href = 'past_visitor.jsp';"><span class="checkmark"></span></label>
	<label class="container">View upcoming visitors<input type="radio" name="delivery" checked="checked" onclick="location.href = 'future_visitor.jsp';"><span class="checkmark"></span></label><br>
	
	<sql:setDataSource
        var="database"
        url="jdbc:postgresql://localhost:5432/g3_chemsdam"
        user="postgres" password="16011M3513"/>
	
	<sql:query var="listUpcomingVisitors" dataSource="${database}">
		SELECT * FROM dam_visitor_details WHERE visitor_status IN ('Not yet arrived','not yet arrived', 'NOT YET ARRIVED') order by visitor_expected_date desc;
	</sql:query>
	
	<table border="1">
		<tr>
			<th>Resident Flat Number</th>
			<th>Visitor Identification Number</th>
			<th>Visitor Name</th>
			<th>Visitor Expected Date</th>
			<th>Resident Mobile Number</th>
			<th>Visitor Mobile Number</th>
			<th>Visitor Status</th>
			<th>Action</th>
		</tr>
		<c:forEach items="${listUpcomingVisitors.rows}" var="visitor">
		<tr>
			<td>${visitor.resident_flat_number}</td>
			<td>${visitor.visitor_identification_number}</td>
			<td>${visitor.visitor_name}</td>
			<td>${visitor.visitor_expected_date}</td>
			<td>${visitor.resident_mobile_number}</td>
			<td>${visitor.visitor_mobile_number}</td>
			<td>${visitor.visitor_status}</td>
			<td>
				<a href="edit_visitor?visitor_identification_number=${visitor.visitor_identification_number}">Edit</a> &nbsp;&nbsp;
				<a href="delete_visitor?visitor_identification_number=${visitor.visitor_identification_number}">Delete</a>
			</td>
		</tr>
		</c:forEach>
	</table>
</div>
</body>
</html>