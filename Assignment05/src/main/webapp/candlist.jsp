<%@page import="com.sunbeam.pojos.Candidate"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Candidate List</title>
</head>
<body>
	<form action="vote.jsp">
		<h3>Online Voting</h3>
		
		<jsp:useBean id="cl" class="com.sunbeam.beans.CandidateListBean"></jsp:useBean>
		<c:forEach var="c" items="${ cl.candidateList() }"><input type="radio" name="candidate" value="${ c.id }"> ${ c.name } (${ c.party })<br />
		</c:forEach>
		<br /> <input type="submit" value="VOTE">
	</form>
</body>
</html>