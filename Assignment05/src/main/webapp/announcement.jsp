<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Announcement</title>
</head>
<body>
	<div style="text-align: center;">
		<h2>${ initParam.Title }</h2>
		Hello, ${lb.user.firstName} ${lb.user.lastName}
		<hr />
		<form method="get" action="announce.jsp">
			<textarea rows="4" cols="150%" name="message"></textarea>
			<br />
			<br /> <input type="submit" value="Declare!"> <a
				href="result.jsp">Go Back!</a>
		</form>
	</div>
</body>
</html>