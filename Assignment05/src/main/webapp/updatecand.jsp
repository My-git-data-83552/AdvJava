<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Candidate</title>
</head>
<body>
	<jsp:useBean id="ucb" class="com.sunbeam.beans.UpdateCandidateBean"></jsp:useBean>
	<jsp:setProperty name="ucb" property="*" />
	${ ucb.updateCandidate() }
	<c:choose>
		<c:when test="${ ucb.count == 1 }">
			<c:redirect url="result.jsp"></c:redirect>
		</c:when>
		<c:otherwise>
			<h6>Update Failed!!!</h6>
			<a href="result.jsp">Go back</a>
		</c:otherwise>
	</c:choose>
</body>
</html>