<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>submit blog</title>
</head>
<body>
<jsp:useBean id="cb" class="com.sunbeam.beans.CreateBlog"></jsp:useBean>
<jsp:setProperty property="*" name="cb"/>
${ cb.createBlog() }

<c:choose>
<c:when test="${ cb.count!=0 }">
	<h1>data added</h1>
</c:when>
<c:otherwise>
	<h2>error</h2>
</c:otherwise>
</c:choose>

</body>
</html>