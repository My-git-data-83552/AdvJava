<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Create New Category</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
body {
	background-color: #f8f9fa; /* Light background color */
	padding-top: 20px;
}

.container {
	max-width: 600px;
	margin-top: 50px;
}

.form-group {
	margin-bottom: 20px;
}

.btn-submit {
	width: 100%;
}
</style>
</head>
<body>
	<div class="container">
		<h2 class="mb-4">Create New Category</h2>
		<form action="createcategory.jsp" method="post">
			<div class="form-group">
				<label for="title">Title</label> <input type="text"
					class="form-control" id="title" name="title" required>
			</div>
			<div class="form-group">
				<label for="description">Description</label>
				<textarea class="form-control" id="description" name="description"
					rows="3" required></textarea>
			</div>
			<button type="submit" class="btn btn-info btn-submit">Create
				Category</button>
		</form>
	</div>
</html>
