<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete</title>
</head>
<body>
	<h2>${ initParam.Title }</h2>
	<jsp:useBean id="db" class="com.sunbeam.beans.DeleteCandidateBean"></jsp:useBean>
	<jsp:setProperty property="id" name="db" />

	${ db.deleteCandidate() }
	<c:choose>
		<c:when test="${ db.count ==1 }">
			<c:redirect url="result.jsp"></c:redirect>
		</c:when>
		<c:otherwise>
			<h6>Something went wrong!!!</h6>
			<a href="result.jsp">Go Back!</a>
		</c:otherwise>
	</c:choose>
</body>
</html>