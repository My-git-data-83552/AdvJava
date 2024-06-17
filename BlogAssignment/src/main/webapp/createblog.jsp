<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Blog</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>

</head><body style="background-color: teal;">
    <div class="container mt-5">
        <div class="card p-4">
            <h2 class="mb-4">Create Blog Post</h2>
            <form action="submitblog.jsp" method="post">
                <div class="form-group">
                    <label for="title">Title</label>
                    <input type="text" class="form-control" id="title" name="title" required>
                </div>
                <div class="form-group">
                    <label for="contents">Contents</label>
                    <textarea class="form-control" id="contents" name="contents" rows="5" required></textarea>
                </div>
                <div class="form-row d-flex justify-content-between">
                    <div class="form-group col-md-5">
                        <label for="userId">User ID</label>
                        <input type="number" class="form-control" id="userId" name="userId" value="${ lb.user.id }" disabled="disabled">
                    </div>
                    <div class="form-group col-md-5">
                        <label for="categoryId">Category ID</label>
                        <input type="number" class="form-control" id="categoryId" name="categoryId" required>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary mt-3">Submit</button>
            </form>
        </div>
    </div>
    </body>


</html>