<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
</head>
<body>
	<jsp:useBean id="rb" class="com.sunbeam.beans.RegistrationBean"
		scope="session"></jsp:useBean>
	<jsp:setProperty property="name" name="rb" param="name" />
	<jsp:setProperty property="email" name="rb" param="email" />
	<jsp:setProperty property="password" name="rb" param="password" />
	<jsp:setProperty property="phone" name="rb" param="phone" />

	<c:choose>
		<c:when test="${ rb.register() != 0 }">
			<jsp:forward page="index.jsp"></jsp:forward>
		</c:when>
		<c:otherwise>
			<h4>Something went wrong</h4>
		</c:otherwise>
	</c:choose>

</body>
</html>