<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">

<style>
body {
	text-align: center;
}

.form-width {
	width: 30%;
	margin-left: 35%;
}
.border-radius{border-radius: 30px;}
</style>
</head>
<body>
	<h1>Welcome</h1>
	<div class="form-width">
		<form action="/login" method="POST">
			<div class="form-group">
				<label for="exampleInputEmail1">Insert your name</label> <input
					type="text" class="form-control border-radius" id="exampleInputEmail1"
					name="userName" placeholder="Name...">
			</div>
			<button type="submit" class="btn btn-primary">Confirm</button>
		</form>
	</div>
	<h2>${noName}</h2>

</body>
</html>

