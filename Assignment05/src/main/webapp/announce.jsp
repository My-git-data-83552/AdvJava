<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Announce</title>
</head>
<body>
	
	<jsp:useBean id="ann" class="com.sunbeam.beans.AnnouncementBean" scope="application"></jsp:useBean>
	<jsp:setProperty property="message" name="ann" param="message"/>
	<jsp:forward page="result.jsp"></jsp:forward>
	
</body>
</html>