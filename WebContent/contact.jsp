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
<title>Contact Skanetrafiken</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/style.css" rel="stylesheet">

<!-- Some google fonts -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Imbue:wght@100&display=swap"
	rel="stylesheet">
<script src='https://www.google.com/recaptcha/api.js'></script>

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
					<li class="nav-item"><a class="nav-link"
						href="/skanetrafiken/news.jsp">News</a></li>
					<li class="nav-item active"><a class="nav-link"
						href="/skanetrafiken/contact.jsp">Contact</a></li>

				</ul>
			</div>
		</div>
	</nav>
	
	<!-- Page Content -->
	<div class="container">

		<!-- Heading Row -->
		<div class="row align-items-center my-5">

			<div class="col-lg-12">
				<div class="contactPage">
					<div class="jumbotron">
						<h1 class="display-4">Thank you for visiting us!</h1>
						<p class="lead">If you wanna contact us you can either copy our email or click the button.</p>
						<hr class="my-4">
						<p class="lead">pandemic-edition@skanetrafiken.se</p>
						<a class="btn btn-primary btn-lg" href="mailto:pandemic-edition@skanetrafiken.se" role="button">Contact</a>
					</div>
				</div>
	
			</div>
			<!-- /.col-lg-8 -->

		</div>
		<!-- /.col-md-4 -->
	</div>
	
	<!-- /.row -->
	<%@ include file="components/footer.jsp"%>
	<%@ include file="components/javascript.jsp"%>
</body>

<script
	src="https://cdn.jsdelivr.net/npm/js-cookie@rc/dist/js.cookie.min.js"></script>
</html>