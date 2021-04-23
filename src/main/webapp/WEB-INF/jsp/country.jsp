<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Countries</title>
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

input {
	border-radius: 40px;
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

form {
	margin-bottom: 5vh;
}

.list {
	display: flex;
	flex-direction: row;
}

.width-list-element {
	width: 20%;
}

.sticky-bar {
	position: -webkit-sticky;
	position: sticky;
	z-index: 2;
}
#navbar{top: 0;}
#stickybar{top:35px;}
</style>
</head>
<body>
	<nav class="navbar navbar-dark bg-dark sticky-bar" id="navbar">
		<div id="link-pages">
			<a href="/cityPage"><div class="font margin">Serach a city</div></a> <a
				href="/continents"><div class="font margin">Serach a continent</div></a>
		</div>
	</nav>
	<h1>Hi ${userName}</h1>
	<div class="page-width">
		<form action="/country">
			<div class="form-group">
				<label for="exampleInputEmail1">Insert a country</label> <input
					type="text" name="name" class="form-control border-radius"
					id="exampleInputEmail1" aria-describedby="emailHelp"
					placeholder="Country...">
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">Insert continent</label> <input
					type="text" name="continent" class="form-control border-radius"
					id="exampleInputPassword1" placeholder="Continent...">
			</div>
			<button type="submit" class="btn btn-primary">Search</button>
		</form>

	</div>
	<div class="sticky-bar" id="stickybar">
		<ul class="list-group ">
			<li class="list-group-item list-group-item-warning list">
			<div class="width-list-element">Name</div>
			<div class="width-list-element">Continent</div>
			<div class="width-list-element">Surface Area</div>
			<div class="width-list-element">Population</div>
			<div class="width-list-element">Nation Code</div>
			</li>
		</ul>
	</div>

	<ul class="list-group ">
		<c:forEach items="${countryList}" var="element">
			<li class="list-group-item list-group-item-primary list">
				<div class="width-list-element">${element.name}</div>
				<div class="width-list-element">${element.continent}</div>
				<div class="width-list-element">${element.surfaceArea}</div>
				<div class="width-list-element">${element.population}</div>
				<div class="width-list-element">${element.code}</div>
			</li>
		</c:forEach>
	</ul>


	<h2>${noCountry}</h2>

</body>
</html>


