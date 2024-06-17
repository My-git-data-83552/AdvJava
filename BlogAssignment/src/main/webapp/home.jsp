<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>
</head>
<body>
	<nav class="navbar navbar-expand-lg bg-body-tertiary">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">BlogForLife!</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link disabled"
						aria-current="page" href="bloglist.jsp">All Blogs</a></li>
					</li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="bloglist.jsp?userid=${ lb.user.id }">My
							Blogs</a></li>
					</li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="createblog.jsp">Create Blog</a></li>
					</li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="findblog.jsp">Find Blogs</a></li>
					</li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="categories.jsp">Categories</a></li>
					</li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="newcategory.jsp">Create Categories</a></li>
					</li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="logout.jsp" style="color: red"><b>Log
								Out</b></a></li>
					</li>
				</ul>
			</div>
		</div>
	</nav>

	<jsp:useBean id="fab" class="com.sunbeam.beans.allBlogBean"></jsp:useBean>
	${ fab.allBlogList() }

	<div class="container mt-5">
		<h2 class="mb-4" style="text-align: center;">Blogs Table</h2>
		<table class="table table-dark table-striped-columns">
			<thead class="thead-dark">
				<tr>
					<th>ID</th>
					<th>Title</th>
					<th>Contents</th>
					<th>User ID</th>
					<th>Category ID</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="c" items="${ fab.list }">
					<tr>
						<td>${ c.id }</td>
						<td>${ c.title }</td>
						<td>${ c.contents }</td>
						<td>${ c.userId }</td>
						<td>${ c.categoryId }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

</body>
</html>