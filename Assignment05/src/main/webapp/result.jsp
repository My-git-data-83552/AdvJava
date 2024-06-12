<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Result</title>
</head>
<body>
	<h2>${ initParam.Title }</h2>
		<jsp:useBean id="rlb" class="com.sunbeam.beans.CandidateListBean"></jsp:useBean>
		<table border="1">
			<thead>
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th>Party</th>
					<th>Votes</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="c" items="${ rlb.candidateList() }">
					<tr>
						<td>${ c.id }</td>
						<td>${ c.name }</td>
						<td>${ c.party }</td>
						<td>${ c.votes }</td>
						<td><a href="editcand.jsp?id=${ c.id }"> <img
								src="https://i.pinimg.com/564x/46/81/1d/46811d97ff6b90d9ea4d96ada6b28df4.jpg"
								alt="EDIT" width="24" height="24">
						</a> <a href="delete.jsp?id=${ c.id }"> <img
								src="https://i.pinimg.com/564x/94/fe/9f/94fe9f2bc1c059f27df2bbb19bb708e9.jpg"
								alt="EDIT" width="24" height="24">
						</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<br /> <br /> <a href="index.jsp">Logout</a>
	</form>
</body>
</html>