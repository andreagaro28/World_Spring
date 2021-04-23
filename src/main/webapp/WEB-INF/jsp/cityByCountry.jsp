<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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

.block-element {
	position: -webkit-sticky;
	position: sticky;
	top: 0;
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

.list {
	display: flex;
}

.width-list-element {
	width: 20%;
}

.list-left-margin {
	margin-left: 30%
}

.sticky-bar {
	position: -webkit-sticky;
	position: sticky;
	z-index: 2;
}

#navbar {
	top: 0;
}

#stickybar {
	top: 38px;
}
</style>
</head>
<body>
	<nav class="navbar navbar-dark bg-dark sticky-bar" id="navbar">
		<div id="link-pages">
			<a href="/cityPage"><div class="font margin">Serach a city</div></a>
			<a href="/countryPage"><div class="font margin">Serach a
					country</div></a> <a href="/continents"><div class="font margin">Serach
					a continent</div></a>
		</div>
	</nav>

	<div class="sticky-bar" id="stickybar">
		<ul class="list-group">
			<li class="list-group-item list-group-item-primary list">
				<div class="width-list-element list-left-margin">City</div>
				<div class="width-list-element">Population</div>
			</li>
		</ul>
	</div>

	<ul class="list-group">
		<c:forEach items="${cityList}" var="city">
			<li class="list-group-item list-group-item-success list">
				<div class="width-list-element list-left-margin">${city.name}</div>
				<div class="width-list-element">${city.population}</div>
			</li>
		</c:forEach>
	</ul>

</body>
</html>