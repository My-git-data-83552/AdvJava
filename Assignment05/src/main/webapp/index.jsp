<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
	<h2>${ initParam.Title }</h2>
	<form method="post" action="login.jsp">
		User Name: <input type="text" name="username"> <br /> <br />
		Password: <input type="password" name="pw"> <br /> <br /> <input
			type="submit" name="button" value="Log In"> <a
			href="newuser.jsp">Register here</a>
	</form>
</body>
</html>