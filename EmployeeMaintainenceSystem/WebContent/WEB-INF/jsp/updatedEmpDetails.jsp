<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UPDATED EMPLOYEE DETAILS</title>
<link rel="stylesheet"
	href="<c:url value="resources/myStyle.css" />">

</head>
<body background="<c:url value="resources/images/index11.jpg" />">
<a href="index.obj">
		<img src="resources/images/home.png" width="50" height="50" class="home"></a><a href="index.obj">
		<img class="logout" src="resources/images/lgout.png" align="top" height="40" width="150"> </a>
		<center><h1 style="color: white;background-color:black" class="ems" >
		Employee Maintenance System</h1></center>
		<br>
		<center>
	<h1 style="color: white;background-color:black" class="ems">Updated Employee Record</h1>
	<table class="trans">
		<tr>
			<th bgcolor="bisque">Employee Id</th>
			<th bgcolor="bisque">Employee First Name</th>
			<th bgcolor="bisque">Employee Last Name</th>
			<th bgcolor="bisque">Date of Birth</th>
			<th bgcolor="bisque">Date of Joining</th>
			<th bgcolor="bisque">Department Id</th>
			<th bgcolor="bisque">Grade</th>
			<th bgcolor="bisque">Designation</th>
			<th bgcolor="bisque">Basic salary</th>
			<th bgcolor="bisque">Gender</th>
			<th bgcolor="bisque">MaritalStatus</th>
			<th bgcolor="bisque">Address</th>
			<th bgcolor="bisque">Phone Number</th>
			<th bgcolor="bisque">Manager ID</th>
		</tr>
		<tr>
			<td>${bean.employeeId }</td>
			<td>${bean.firstName}</td>
			<td>${bean.lastName}</td>
			<td>${bean.dateOfBirth }</td>
			<td>${bean.dateOfJoining }</td>
			<td>${bean.departmentId }</td>
			<td>${bean.grade }</td>
			<td>${bean.designation }</td>
			<td>${bean.salary }</td>
			<td>${bean.gender}</td>
			<td>${bean.maritalStatus }</td>
			<td>${bean.address }</td>
			<td>${bean.phoneNumber}</td>
			<td>${bean.managerId}</td>
		</tr>
	</table>
	</center>
	<!-- <br>
	<form action="admin.obj" method="post">
		<input type="submit" value="HOME" />
	</form> -->
</body>
</html>