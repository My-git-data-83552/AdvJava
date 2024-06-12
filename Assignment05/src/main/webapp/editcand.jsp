<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit</title>
</head>
<body>
	<h2>${ initParam.Title }</h2>
	<jsp:useBean id="ecb" class="com.sunbeam.beans.FindCandidateBean"></jsp:useBean>
	<jsp:setProperty name="ecb" property="id" param="id" />
	${ ecb.fetchCandidate() }
	<form method="post" action="updatecand.jsp">
		<input type="hidden" name="id"> <br />
		<br />Name: <input type="text" name="name" value="${ ecb.candidate.name }"> <br />
		<br />Party: <input type="text" name="party" value="${ ecb.candidate.party }"> <br />
		<br />Votes: <input type="text" name="votes" value="${ ecb.candidate.votes }" readonly="readonly">
		<br />
		<br />
		<input type="submit" value="SAVE">
	</form>
</body>
</html>