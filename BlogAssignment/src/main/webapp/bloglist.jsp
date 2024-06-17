<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>My Blogs</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>
<style>

.blog-card {
	margin-bottom: 20px; /* Add space between blog cards */
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	/* Optional: Add shadow to cards */
}

.blog-card-title {
	font-size: 1.5rem;
	font-weight: bold;
}

.blog-card-text {
	font-size: 1rem;
}
</style>
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
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="home.jsp">All Blogs</a></li>
					</li>
					<li class="nav-item"><a class="nav-link disabled"
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


	<jsp:useBean id="fbu" class="com.sunbeam.beans.allBlogBean"></jsp:useBean>
	<jsp:setProperty property="userId" name="fbu" value="${ lb.user.id }"/>
	${ fbu.myBlogList() }
	<div class="container">
		<h2 class="mb-4">My Blogs</h2>
		<div class="row">
			<c:forEach var="blog" items="${fbu.list}">
				<div class="col-md-4">
					<div class="card blog-card">
						<div class="card-body">
							<h5 class="card-title blog-card-title">Title: ${blog.title}</h5>
							<p class="card-text blog-card-text">Contents:
								${blog.contents}</p>
							<p class="card-text blog-card-text">Category ID:
								${blog.categoryId}</p>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
</body>
</html>
