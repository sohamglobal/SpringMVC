<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags" prefix="global" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spring" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Spring Web MVC Application</h2>
<hr/>
<h3>Login Here..</h3>
<spring:form method="post" action="checkuser" modelAttribute="user">
<table>
<tr>
	<td>User Id</td>
	<td>
	<global:bind path="userid">
	<input type="text" name="userid"/>
	</global:bind>
	</td>
</tr>
<tr>
	<td>Password</td>
	<td>
	<global:bind path="pass">
	<input type="password" name="pass"/>
	</global:bind>
	</td>
</tr>
<tr>	
	<td>
	<input type="submit" value="Submit"/>
	</td>
</tr>
</table>
</spring:form>


</body>
</html>