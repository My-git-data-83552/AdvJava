<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
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
<body
	style="background: url('https://images.pexels.com/photos/2740956/pexels-photo-2740956.jpeg') no-repeat center center fixed; background-size: cover;">
	<div class=" mt-5">
		<h2 class="text-center text-white">Registration Form</h2>
		<form class="mx-auto p-4 bg-light rounded"
			style="max-width: 300px; opacity: 0.9;" action="register.jsp">
			<div class="form-group mb-4">
				<label for="name">Name</label> <input type="text"
					class="form-control form-control-sm" id="name"
					name="name"
					placeholder="Enter your name">
			</div>
			<div class="form-group mb-4">
				<label for="email">Email</label> <input type="email"
					class="form-control form-control-sm" id="email" name="email"
					placeholder="Enter your email">
			</div>
			<div class="form-group mb-4">
				<label for="password">Password</label> <input type="password"
					class="form-control form-control-sm" id="password" name="password"
					placeholder="Enter your password">
			</div>
			<div class="form-group mb-4">
				<label for="phone">Phone</label> <input type="tel"
					class="form-control form-control-sm" id="phone" name="phone"
					placeholder="Enter your phone number">
			</div>
			<button type="submit" class="btn btn-primary btn-block">Register</button>
			<br> <br>
			<h6 style="color: black;">
				Already have an Account?</h6> <a href="index.jsp">Sign up here!</a>
			

		</form>
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>