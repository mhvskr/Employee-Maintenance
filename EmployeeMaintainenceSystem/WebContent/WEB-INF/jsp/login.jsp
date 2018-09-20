<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isErrorPage="true"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%-- <style>

body, html {
    height: 100%;
     	text-align: center;
     	 background-image: url("resources/images/index11.jpg");

    /* Full height */
    height: 100%; 

    /* Center and scale the image nicely */
    background-position: center top;
    background-repeat: repeat;
    background-size: cover; 
    
}
h1 {text-align:center;}
a {color:#1E72B4}
h3 {
	height: 50px;
float: left;
}
/* .login {
	position: absolute;
	top: 60px; 
	
}  */
.bg { 
    /* The image used */
   
}
table.transbox {
  margin: 30px;
  background-color: #ffffff;

  opacity: 0.8;
  filter: alpha(opacity=80); /* For IE8 and earlier */
}
h1{
width:450px;
padding:10px;
border:5px solid white;
 opacity: 0.7;
  filter: alpha(opacity=70);
}
table,th,td,tr{
text-align:center;
text-color:white;}


</style> --%>
<link rel="stylesheet"
	href="<c:url value="resources/myStyle.css" />">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LoginPage</title>
</head>

<body background="<c:url value="resources/images/index11.jpg" />">
	 
		<a href="index.obj">
		<img src="resources/images/home.png" width="50" height="50" class="home"></a>
		<center><h1 style="color: white;background-color:black" class="ems" >
		Employee Maintenance System</h1></center>
			<br>
			<center>
			<c:if test="${msg ne null }">
			<center>
			<h1 style="color: red;background-color:white" class="ems">${msg}</h1>
			</center>
			</c:if>
			<table class="transbox" cellpadding="10px">
				<s:form action="loginDetails.obj" modelAttribute="user"
					method="post" id="loginform">
					<tr>
					<td></td>
					<td align="center" colspan="2">
					<img src="resources/images/h1.png" width="120" height="120" >
					</td></tr>

					<tr>
						<td><b>Enter UserName:</b></td>
						<td><s:input path="userName" /></td>
						<td style="color: red"><s:errors path="userName"></s:errors></td>
					</tr>
					<tr>
						<td><b>Enter Password:</b></td>
						<td><s:password path="password" /></td>
						<td style="color: red"><s:errors path="password" ></s:errors></td>
					</tr>
					<tr>
					<td></td>
					<td align="center" ><input type="submit" value="LOGIN" /></td>
					</tr>
				</s:form>
			
			</table>
			</center>	




</body>
</html>