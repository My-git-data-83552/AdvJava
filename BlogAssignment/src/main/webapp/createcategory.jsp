<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>create category</title>
</head>
<body>
	<jsp:useBean id="cc" class="com.sunbeam.beans.CategoryBean"></jsp:useBean>
	<jsp:setProperty property="*" name="cc" />
	${ cc.createCategory() }
	<c:choose>
		<c:when test="${ cc.count!=0 }">
			<jsp:forward page="home.jsp"></jsp:forward>
		</c:when>
		<c:otherwise>
		<h3>Something went wrong!</h3>
		</c:otherwise>
	</c:choose>
</body>
</html>