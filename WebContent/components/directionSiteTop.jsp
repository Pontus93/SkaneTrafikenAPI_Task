<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Home Skanetrafiken</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/style.css" rel="stylesheet">

<!-- Some google fonts -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Imbue:wght@100&display=swap"
	rel="stylesheet">

<!-- FavIcon -->
<link rel="apple-touch-icon" sizes="180x180" href="favicon/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32" href="favicon/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="favicon/favicon-16x16.png">
<link rel="manifest" href="favicon/site.webmanifest">
</head>
<body>
	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-danger fixed-top">
		<div class="container">
			<img class="icon"
				src="pics/skanetrafikenicon.png">
			<a class="navbar-brand headline" href="/skanetrafiken/index.jsp">Pandemic-edition</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto headline">
					<li class="nav-item active"><a class="nav-link"
						href="/skanetrafiken/index.jsp">Home <span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="/skanetrafiken/news.jsp">News</a></li>
					<li class="nav-item"><a class="nav-link"
						href="/skanetrafiken/contact.jsp">Contact</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- Page Content -->
	<div class="container">
		<!-- Heading Row -->
		<div class="row align-items-center my-5">
			<div class="col-lg-7">
				<img class="img-fluid rounded mb-4 mb-lg-0"
					src="pics/train.png"
					alt="">

			</div>
			<!-- /.col-lg-8 -->
			<div class="col-lg-5">
				<h1 class="font-weight-light">Find the fastest way to escape
					the Swedes</h1>
				<p>
					Have the Swedes gone mad after the corona vaccine? don't worry this
					application will give you the <strong>closest</strong> station so
					you can leave the country <strong>directly.</strong>
				</p>

				<form action="<%=request.getContextPath()%>/" method="get">
					<select name="xLatitude" class="d-none">
						<option id="lat">yes</option>
					</select> <select name="yLongitude" class="d-none">
						<option id="long"></option>
					</select> <input class="btn-lg btn-success" type="submit"
						name="buttonGetAway" value="Continue">
				</form>
			</div>
			<!-- /.col-md-4 <a class="btn btn-success" type="submit" name="buttonWay">Continue</a> -->
		</div>
		<!-- /.row -->
		<!-- Call to Action Well -->
		<div class="card text-white bg-secondary my-5 py-4 text-center">
			<div class="card-body">
				<p class="text-white m-0 lead">