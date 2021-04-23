<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cities</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">

<style>
body {
	text-align: center;
}

#link-pages {
	display: flex;
	flex-direction: row;
}

.margin {
	margin-right: 20px;
}

.font {
	font-size: 15px;
}

.page-width {
	width: 30%;
	margin-left: 35%;
}

.border-radius {
	border-radius: 30px;
}
form{margin-bottom: 5vh;}
.color-text{color: blue;}
</style>
</head>
<body>
	<nav class="navbar navbar-dark bg-dark">
		<div id="link-pages">
			<a href="/countryPage"><div class="font margin">Serach a country</div></a> <a
				href="/continents"><div class="font margin">Serach a continent</div></a>
		</div>
	</nav>
	<h1>Hi ${userName}</h1>
	<div class="page-width">
		<form action="/city">
			<div class="form-group">
				<label for="exampleInputEmail1">Insert a city</label> <input
					type="text" class="form-control border-radius"
					id="exampleInputEmail1" name="cityName" placeholder="City...">
			</div>
			<button type="submit" class="btn btn-primary">Search</button>
		</form>
	</div>

	<ul class="list-group page-width border-radius">
		<li class="list-group-item">Name: <div class="color-text">${city.name}</div></li>
		<li class="list-group-item">District: <div class="color-text">${city.district}</div></li>
		<li class="list-group-item">Country Code: <div class="color-text">${city.countryCode}</div></li>
		<li class="list-group-item">Population: <div class="color-text">${city.population}</div></li>
	</ul>

	<h1>${noCity}</h1>
</body>
</html>