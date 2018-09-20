<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee Maintenance System</title>
<link rel="stylesheet"
	href="<c:url value="resources/myStyle.css" />">
</head>
<body background="<c:url value="resources/images/index11.jpg" />">
<a href="index.obj">
		<img src="resources/images/home.png" width="50" height="50" class="home"></a><a href="index.obj">
		<img class="logout" src="resources/images/lgout.png" align="top" height="40" width="150"> </a>
		<center><h1 style="color: white;background-color:black" class="ems" >
		Employee Maintenance System</h1>
		<h1  style="color: white;background-color:black" class="ems">SEARCH EMPLOYEE</h1>
	</center>
	<center>
	<form action="searchEmployee.obj" method="post" >
			<table align="center" class="trans">
			<tr>
				<td>CHOOSE OPTIONS :</td>
				<td><select name="search">
						<option value="employeeId">Employee Id</option>
						<option value="firstName">FirstName</option>
						<option value="lastName">LastName</option>
						<option value="grade">Grade</option>
						<option value="maritalStatus">MaritalStatus</option>
				</select></td>
				
			</tr>					
		</table>
<input type="submit" value="search" />
	</form>
	</center>
	<br>
<c:if test="${msg ne null}">
		<center><h1 style ="color:red ;background-color:white"  class="ems" >${msg}</h1></center>
		</c:if>
	<c:if test="${isFirst==true }">
	<s:form action="searchEmp.obj" modelAttribute="employee" method="post">
		<c:if test="${name==id}">
			<s:label path="employeeId">Enter employeeId</s:label>
			<s:errors path="employeeId"></s:errors>
			<s:input path="employeeId"  />
		</c:if>

		<c:if test="${name==fname}">
			<s:label path="firstName">Enter first name</s:label>
			<s:errors path="firstName"></s:errors>
			<s:input path="firstName"  />
		</c:if>

		<c:if test="${name==lname}">
			<s:label path="lastName">Enter last name</s:label>
			<s:errors path="lastName"></s:errors>
			<s:input path="lastName" />
		</c:if>

		<c:if test="${name==grade}">
			<s:label path="grade">Enter grade</s:label>
			<s:errors path="grade"></s:errors>
			<s:input path="grade" />
		</c:if>

		<c:if test="${name==maritalStatus}">
			<s:label path="maritalStatus">Enter Marital Status</s:label>
			<s:errors path="maritalStatus"></s:errors>
			<s:input path="maritalStatus" />
		</c:if>
		
		<input type="submit" value="search"/>
		
		
	</s:form>

</c:if>

	
</body>
</html>



