<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>Welcome to Handong CCC club!</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
/* Remove the navbar's default margin-bottom and rounded borders */
.navbar {
	margin-bottom: 0;
	border-radius: 0;
}

/* Set height of the grid so .sidenav can be 100% (adjust as needed) */
.row.content {
	height: 450px
}

/* Set gray background colhttps://www.w3schools.com/bootstrap/tryit.asp?filename=trybs_temp_webpage&stacked=h#or and 100% height */
.sidenav {
	padding-top: 20pxhttps://www.w3schools.com/bootstrap/tryit.asp?filename=trybs_temp_webpage&stacked=h#;
	background-color: #f1f1f1;
	height: 100%;
}

/* Set black background color, white text and some padding */
footer {
	background-color: #555;
	color: white;
	padding: 15px;
}

/* On small screens, set height to 'auto' for sidenav and grid */
@media screen and (max-width: 767px) {
	.sidenav {
		height: auto;
		padding: 15px;
	}
	.row.content {
		height: auto;
	}
}
</style>
</head>
<body>

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Logo</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="../ourapp">Home</a></li>
					<li><a href="viewboard">게시판</a></li>
					<li><a href="reser">예약</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container-fluid text-center">
		<div class="row content">
			<div class="col-sm-2 sidenav">
				<p>
					<a href="http://nh.kccc.org/index.html" font-size="10px">한국 CCC
						대표 홈페이지</a>
				</p>
				<p>
					<a href="https://instagram.com/handong_ccc?igshid=45thhrubitid">인스타그램</a>
				</p>
				
			</div>
			<div class="col-sm-8 text-left">
				<h1>Add New Post</h1>
				<form:form method="post" action="save">
					<table>
						<tr>
							<td>Category :</td>
							<td><form:input path="category" /></td>
						</tr>
						<tr>
							<td>Title :</td>
							<td><form:input path="title" /></td>
						</tr>
						<tr>
							<td>Writer :</td>
							<td><form:input path="writer" /></td>
						</tr>
						<tr>
							<td>Content :</td>
							<td><form:input path="content" /></td>
						</tr>
						<tr>
							<td></td>
							<td><input type="submit" value="Save" /></td>
						</tr>
					</table>
				</form:form>

				<hr>
			</div>
			<div class="col-sm-2 sidenav">
				<div>
					<img src="./img/ccc2.jpg" width="150">
				</div>
				<div>
					<img src="./img/ccc1.jpg" width="150">
				</div>
				<div>
					<img src="./img/ccc3.jpg" width="150">
				</div>
			</div>
		</div>
	</div>

	<footer class="container-fluid text-center">
		<p>Handong CCC Club</p>
	</footer>

</body>
</html>
