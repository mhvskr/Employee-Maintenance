<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html >
<html>
<head>
<style>
body {
	text-align: center;
}
</style>
<link rel="stylesheet"
	href="<c:url value="resources/myStyle.css" />">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ADMIN PAGE</title>
</head>
<body background="<c:url value="resources/images/index11.jpg" />">

	<!-- <h2  >
		
		| </a> <a href="about.obj">About Us
		<a
			href="login.obj">Login <br>
	
	</h2> -->
	
	
		
		<a href="index.obj">
		<img src="resources/images/home.png" width="50" height="50" class="home"></a><a href="index.obj"><img class="logout" src="resources/images/lgout.png" align="top" height="40" width="150"> </a><center><h1 style="color: white;background-color:black" class="ems" >
		Employee Maintenance System</h1></center>
	
	


	<marquee>
		<h1 class="ems2">
			<font color="black" size="8px"> Welcome Admin ${name } </font>
		</h1>
	</marquee>
	
	<center>
	
	<h3>
		<a href="add.obj">ADD EMPLOYEE</a>
	</h3>
	<h3>
		<a href="modify.obj">UPDATE EMPLOYEE</a>
	</h3>
	<h3>
		<a href="display.obj">DISPLAY ALL EMPLOYEE DETAILS</a> 
	</h3>

	<c:if test="${flag ne null}">
		<h3>
			<a href="checkLeaves.obj">CHECK APPLIED LEAVES</a>
		</h3>
	</c:if>
	<br>
	<!-- <form action="index.jsp">
		<input type="submit" value="LOGOUT" />
	</form> -->

</center>
	<!-- <a href="index.jsp">LOGOUT</a> -->
</body>
</html>