<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>News Skanetrafiken</title>

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
		<a href="/skanetrafiken/index.jsp">
			<img class="icon"
				src="pics/skanetrafikenicon.png"></a>
			<a class="navbar-brand headline" href="/skanetrafiken/index.jsp">Pandemic-edition</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto headline">
					<li class="nav-item"><a class="nav-link"
						href="/skanetrafiken/index.jsp">Home <span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item active"><a class="nav-link"
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
					src="pics/insidetrain.png"
					alt="">
			</div>
			<!-- /.col-lg-8 -->
			<div class="col-lg-5">
				<h1 class="font-weight-light">Recommendation on mouth
					protection</h1>
				<p>
					<strong>Right now, the Swedish Public Health Agency
						recommends that you use mouth guards when traveling by public
						transport during rush hour.</strong> Rush hour is weekdays 7-9 and 16-18.
					The General Council covers people born in 2004 and earlier, ie
					people of upper secondary school age and older.
				</p>
				<p>
					<strong>Did you forget your mouthguard? </strong> Skånetrafiken
					will not provide mouth protection on board buses and trains. Should
					you ever have forgotten your mouth guard, it is possible to pick
					one up at Skånetrafiken's customer center upon presentation of a
					valid ticket. You will find our customer centers in Malmö, Lund,
					Helsingborg or Kristianstad.
				</p>
			</div>
		</div>
		<!-- /.col-md-4 -->
	</div>
	<div class="newsFeed">
		<div class="alert alert-info" role="alert">
			<h4 class="alert-heading">Travel to Denmark - what applies?</h4>
			<hr>
			<p>Right now, travelers need to show a negative test for
				covid-19.</p>
		</div>
		<div class="alert alert-success" role="alert">
			<h4 class="alert-heading">Do you need to travel?</h4>
			<hr>
			<p>Some times are more stressful than others. You make a big
				difference if you can choose a departure ten minutes earlier or
				later.</p>
		</div>
		<div class="alert alert-warning" role="alert">
			<h4 class="alert-heading">Where can it be crowded right now?</h4>
			<hr>
			<p>For example, by waiting for the next bus or train if it is
				full or avoiding rush hour. Maybe you can cycle or walk? So we can
				leave room for those who can not have flexible working hours or who
				have to get to school.</p>
		</div>
	</div>
	<!-- /.row -->
	<!-- /.container -->
	<%@ include file="components/footer.jsp"%>
	<%@ include file="components/javascript.jsp"%>
</body>

<script
	src="https://cdn.jsdelivr.net/npm/js-cookie@rc/dist/js.cookie.min.js"></script>
</html>