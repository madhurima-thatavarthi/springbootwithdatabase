<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Custom Login Page</title>
<style>
.errorblock {
	color: #ff0000;
	background-color: #ffEEEE;
}
</style>

</head>
<body onload='document.loginForm.j_username.focus();'>
	<h3>Custom Login Page</h3>

	<%
		String errorString = (String) request.getAttribute("error");
	if (errorString != null && errorString.trim().equals("true")) {
		out.println("<span class=\"errorblock\">Incorrect login name or password. Please try again");
	}
	%>

	<form name='loginForm' action="<c:url value='login' />" method='POST'>

		<table>
			<tr>
				<td>User:</td>
				<td><input type='text' name='username' value=''></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type='password' name='password' /></td>
			</tr>
			<tr>
				<td><input name="submit" type="submit" value="submit" /></td>
				<td><input name="reset" type="reset" /></td>
			</tr>
		</table>
	</form>
</body>
</html>