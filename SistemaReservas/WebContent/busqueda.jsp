<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html class="no-js" lang="es">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Busqueda por especialidad</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="apple-touch-icon" href="apple-touch-icon.png">
<!-- Place favicon.ico in the root directory -->

<!-- Font -->
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,700,600italic,700italic,800,800italic'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700'
	rel='stylesheet' type='text/css'>
<!-- Font -->

<link rel="stylesheet" href="css/normalize.css">
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/animate.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/responsive.css">
<script src="js/vendor/modernizr-2.8.3.min.js"></script>


</head>
<body>
	<!--[if lt IE 8]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade
    your browser</a> to improve your experience.</p>
<![endif]-->

	<!-- Header Start -->
	<header id="home">

		<!-- Main Menu Start -->
		<div class="main-menu">
			<div class="navbar-wrapper">
				<div class="navbar navbar-inverse navbar-fixed-top"
					role="navigation">
					<div class="container">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle"
								data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle Navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>

							<a href="#" class="navbar-brand"><img src="img/logo.png"
								alt="Logo" /></a>
						</div>

						<div class="navbar-collapse collapse">
							<ul class="nav navbar-nav navbar-right">
								<li><a href="index.html">Principal</a></li>
								<li><a href="about.html">Nosotros</a></li>
								<li><a href="service.html">Nuestros Servicios</a></li>
								<li><a href="reservation.html">Reserva de horas</a></li>

							</ul>
						</div>

					</div>
				</div>
			</div>
		</div>
		<!-- Main Menu End -->

	</header>
	<!-- Header End -->

	<!-- Contact -->
	<section id="contact-us">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div class="title">
						<h3>
							Reservas <span>Horas Médicas</span>
						</h3>
					</div>
				</div>
			</div>
		</div>


		<div class="container">

			<form method="get" action="./busquedaController">
				<div class="row">

					<div class="col-lg-4">

						<div class="panel panel-primary">
							<div class="panel-heading">Selecciona Área Médica</div>
							<div class="panel-body">
								<div class="form-group">
									<select class="form-control">
										<option>Medicina General</option>
										<option>Obtetricia</option>
									</select>
								</div>

								<div class="form-group">
									<select class="form-control">
										<option>Adulto</option>
										<option>Niño</option>
									</select>
								</div>

								<a href="#">Buscar por nombre de especialista</a>
							</div>
						</div>

					</div>

					<div class="col-lg-4">
						<div class="panel panel-primary">
							<div class="panel-heading">Selecciona Ubicación</div>
							<div class="panel-body">
								<div class="form-group">

									<div class="radio">
										<label class="radio"> <input type="radio"
											name="ubicacion" id="temuco" value="option1"> Temuco
										</label>
									</div>
									<div class="radio">
										<label class="radio"> <input type="radio"
											name="ubicacion" id="plc" value="option2"> Padre las
											casas
										</label>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="col-lg-4">
						<div class="panel panel-primary">
							<div class="panel-heading">Ingresa datos del paciente</div>
							<div class="panel-body">
								<div class="form-group">
									<div class="form-group">
										<label for="rutPaciente">RUT del paciente</label> 
										<input type="email" class="form-control" id="rutPanciente"
											placeholder="Ej: 12345678-5">
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-xs-4 col-xs-offset-4">
						<button type="submit" class="btn btn-lg btn-info btn-block">
							Buscar</button>
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-xs-4 col-xs-offset-4">
						<button type="submit" class="btn btn-lg btn-primary btn-block">
							Modificar o anular reserva de hora</button>
					</div>
				</div>
			</form>

		</div>


	</section>
	<!-- Contact -->
	<!-- footer -->
	<!-- Copyright -->
	<div class="copyright">
		<div class="container">
			<div class="row">
				<div class="col-sm-4">
					<div class="copy-text">
						<p>
							All Rights Reserved | Copyright 2016 © <strong><a
								href="http://www.pfind.com/goodies/bizium/">The Bizium</a></strong>
							template by <strong><a
								href="http://www.pfind.com/goodies/">pFind's Goodies</a></strong>
						</p>
					</div>
				</div>
				<div class="col-sm-5">
					<div class="footer-menu pull-right">
						<ul>
							<li><a href="index.html">Principal</a></li>
							<li><a href="about.html">Nosotros</a></li>
							<li><a href="service.html">Servicios</a></li>
							<li><a href="reservation.html">Reserva de horas</a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="social">
						<ul>
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
							<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- footer -->


	<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="js/vendor/jquery-1.12.0.min.js"><\/script>')
	</script>
	<script src="js/plugins.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.mousewheel-3.0.6.pack.js"></script>
	<script src="js/paralax.js"></script>
	<script src="js/jquery.smooth-scroll.js"></script>
	<script src="js/jquery.sticky.js"></script>
	<script src="js/wow.min.js"></script>
	<script src="js/main.js"></script>


	<script type="text/javascript">
		$(document).ready(function() {
			$('a[href^="#"]').on('click', function(e) {
				e.preventDefault();

				var target = this.hash;
				var $target = $(target);

				$('html, body').stop().animate({
					'scrollTop' : $target.offset().top
				}, 900, 'swing');
			});
		});
	</script>

	<script src="js/custom.js"></script>
	<!-- Google Analytics: change UA-XXXXX-X to be your site's ID. -->
	<script>
		(function(b, o, i, l, e, r) {
			b.GoogleAnalyticsObject = l;
			b[l] || (b[l] = function() {
				(b[l].q = b[l].q || []).push(arguments)
			});
			b[l].l = +new Date;
			e = o.createElement(i);
			r = o.getElementsByTagName(i)[0];
			e.src = 'https://www.google-analytics.com/analytics.js';
			r.parentNode.insertBefore(e, r)
		}(window, document, 'script', 'ga'));
		ga('create', 'UA-XXXXX-X', 'auto');
		ga('send', 'pageview');
	</script>
</body>
</html>
