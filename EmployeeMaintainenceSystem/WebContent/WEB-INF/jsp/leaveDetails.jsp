<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet"
	href="<c:url value="resources/myStyle.css" />">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Leave Details</title>
</head>
<body background="<c:url value="resources/images/index11.jpg" />">

<a href="index.obj">
		<img src="resources/images/home.png" width="50" height="50" class="home"></a><a href="index.obj"><img class="logout" src="resources/images/lgout.png" align="top" height="40" width="150"> </a>
		<center><h1 style="color: white;background-color:black" class="ems" >
		Employee Maintenance System</h1>
<c:choose>
<c:when test="${list ne null}">
<table border="2px"class="trans">
<tr>
<td>Leave Id</td>
<td>Employee Id</td>
<td>Leave Balance</td>
<td>Start Date</td>
<td>Duration</td>
<td>End Date</td>
</tr>

<c:forEach var="temp" items="${list}">
<tr>
<td>${temp.leaveId}</td>
<td>${temp.employeeId}</td>
<td>${temp.remainingLeaves}</td>
<td>${temp.startdate}</td>
<td>${temp.duration}</td>
<td>${temp.enddate}</td>

<td colspan="2"><s:form action="leaveStatus.obj" method="post" modelAttribute="employee" >
		<input type="submit" value = "Approve" name="approve" />
		<input type="submit" value = "Reject" name="reject"/><s:hidden path="employeeId" value="${temp.employeeId}"/> 
		</s:form>
</td>
</tr>
</c:forEach>

</table>
</c:when>
<c:otherwise>
<h3  style="color: white;background-color:black" class="ems">No Leave Record Found</h3>
</c:otherwise>
</c:choose>
</center>
</body>
</html>