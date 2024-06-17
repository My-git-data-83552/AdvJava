<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Category Page</title>
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
.card {
	margin-bottom: 20px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	/* Optional: Add shadow to cards */
}

.card-img-top {
	height: 200px;
	object-fit: cover;
}
</style>
</head>
<body>
	<nav class="navbar navbar-expand-lg bg-body-tertiary">
		<div class="container-fluid">
			<a class="navbar-brand" href="home.jsp">BlogForLife!</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link" aria-current="page"
						href="home.jsp">All Blogs</a></li>
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
					<li class="nav-item"><a class="nav-link disabled"
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

	<jsp:useBean id="ccb" class="com.sunbeam.beans.CategoryBean"></jsp:useBean>
	<jsp:setProperty property="*" name="ccb" />
	${ ccb.showCategories() }


	<c:choose>
		<c:when test="${ ccb.list!=null }">
			<div class="container">
				<h2 class="mb-4" style="text-align: center; color: navy;">Categories</h2>
				<div class="row" style="padding-top: 20px;">

					<c:forEach var="c" items="${ ccb.list }">
						<div class="col-md-4">
							<div class="card">
								<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPDJKa2bZtTe0MQdpO3yRbuuF1hM1JcNUbIw&s" class="card-img-top"
									alt="Category Image">
								<div class="card-body">
									<p class="card-text" style="font-family: monospace;">Category
										ID: ${ c.id }</p>
									<h5 class="card-title">Title: ${ c.title }</h5>
									<p class="card-text">Description: ${ c.description }</p>
								</div>
							</div>
						</div>
					</c:forEach>

				</div>
			</div>
		</c:when>
		<c:otherwise>
		Something went wrong.
		</c:otherwise>
	</c:choose>
</body>
</html>
