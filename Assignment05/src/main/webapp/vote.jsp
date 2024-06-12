<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Vote</title>
</head>
<body>
	<h2>${ initParam.Title }</h2>
	Hello, ${lb.user.firstName} ${lb.user.lastName}
	<hr />
	<jsp:useBean id="vb" class="com.sunbeam.beans.VoteBean"></jsp:useBean>
	<jsp:setProperty property="id" name="vb" param="candidate" />
	<jsp:setProperty property="userId" name="vb" value="${ lb.user.id }"/>
	${ vb.vote() }
	<c:choose>
		<c:when test="${ vb.count==1 && lb.user.status==0}">
		${ vb.updateStatus() }
	Thank you for saving Democracy!
	<a href="index.jsp">LOG OUT</a>
			</c:when>
		<c:otherwise>
 	You have Already Voted Bro!<br/>
 	<a href="index.jsp">Logout!</a>
 	</c:otherwise>
	</c:choose>
</body>
</html>