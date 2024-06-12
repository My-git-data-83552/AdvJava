<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
	${ initParam.Title }
	<jsp:useBean id="lb" class="com.sunbeam.beans.LoginBean" scope="session"></jsp:useBean>
	<jsp:setProperty property="email" name="lb" param="username" />
	<jsp:setProperty property="password" name="lb" param="pw" />
	${ lb.authenticate() }

	<c:choose>
		<c:when test="${ lb.user.role == 'voter'}">
			<%--<jsp:forward page="candlist.jsp" />  --%>
			<c:redirect url="candlist.jsp"></c:redirect>
		</c:when>
		<c:when test="${ lb.user.role == 'admin'}">
			<jsp:forward page="result.jsp" />
		</c:when>
		<c:otherwise>
			<h3>Login Failed</h3>
			<a href="index.jsp">Try Again!</a>
		</c:otherwise>
	</c:choose>
</body>
</html>