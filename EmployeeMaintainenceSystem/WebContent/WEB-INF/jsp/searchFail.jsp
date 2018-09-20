<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ERROR PAGE</title>
<link rel="stylesheet"
	href="<c:url value="resources/myStyle.css" />">
</head>
<body background="<c:url value="resources/images/index11.jpg" />">
<a href="index.obj">
		<img src="resources/images/home.png" width="50" height="50" class="home"></a><a href="index.obj">
		<img class="logout" src="resources/images/lgout.png" align="top" height="40" width="150"> </a>
		<center><h1 style="color: white;background-color:black" class="ems" >
		Employee Maintenance System</h1>
	
	
<h2 style="color: white;background-color:black" class="ems">${msg}</h2>

</center>

</body>
</html>