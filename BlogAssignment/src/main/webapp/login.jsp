<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login jsp</title>
</head>
<body>
	<jsp:useBean id="lb" class="com.sunbeam.beans.LoginBean" scope="session"></jsp:useBean>
	<jsp:setProperty property="*" name="lb" />

	${ lb.login() }
	<c:choose>
		<c:when test="${ lb.user==null }">
			<h2>Login Failed!</h2>


		</c:when>
		<c:otherwise>
			<jsp:forward page="home.jsp"></jsp:forward>
		</c:otherwise>
	</c:choose>
</body>
</html>