<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
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

	<div class="d-flex justify-content-center">
		<div class="col-4">
			<img
				src="https://images.pexels.com/photos/807598/pexels-photo-807598.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
				style="width: 300%" height="798px" alt="Image">
		</div>
		<div class="col-4">
			<form method="post" action="login.jsp">
				<br> <br>
				<h2 style="text-align: center; color: white;">Login Here!</h2>
				<br> <br>

				<div class="form-floating mb-3">
					<input type="email" class="form-control" name="email"
						id="floatingInput" placeholder="name@example.com"> <label
						for="floatingInput">Email address</label><br> <br>
				</div>
				<div class="form-floating">
					<input type="password" class="form-control" name="password"
						id="floatingPassword" placeholder="Password"> <label
						for="floatingPassword">Password</label>
				</div>
				<br> <br>
				<button class="btn btn-primary" style="align-self: center;">Log
					In</button>
				<br> <br>
			<%--<c:choose>
					<c:when test="${ rb.count==0 }">
						<div>
							<h6 style="color: aqua;">
								Don't have an Account? <a href="newuser.jsp">Sign up here!</a>
							</h6>
						</div>
					</c:when>
					<c:otherwise>
						<div class="alert alert-light" role="alert">Registration
							Successful of ${ rb.name }</div>
					</c:otherwise>
				</c:choose> --%>
			</form>
		</div>
		<div class="col-4"></div>
	</div>

	</div>
</body>
</html>