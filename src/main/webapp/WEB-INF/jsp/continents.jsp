<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Continents</title>
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
	flex-direction: row;
}

.width-list-element {
	width: 20%;
}
.username{margin-bottom: 5vh;}
</style>
</head>
<body>
	<nav class="navbar navbar-dark bg-dark">
		<div id="link-pages"> 
			<a href="/cityPage"><div class="font margin">Serach a city</div></a> <a
				href="/countryPage"><div class="font margin">Serach a country</div></a>
		</div>
	</nav>
	<h1>Hi ${userName}</h1>


	<ul class="list-group ">
		<c:forEach items="${continentsList}" var="continent">
			<li class="list-group-item list-group-item-warning"><a
				href="/countryByContinent?continentName=${continent}">
					<h2>${continent}</h2>
			</a></li>
		</c:forEach>
	</ul>
</body>
</html>