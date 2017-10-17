<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


<link rel="stylesheet" href="css/normalize.css">
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/responsive.css">
<link rel="stylesheet" href="css/bootstrap-datepicker.css">
<link rel="stylesheet" href="css/bootstrap-datepicker.min.css">

</head>

<body>
	<!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

	<!-- Header Start -->
	<header id="home"> <!-- Main Menu Start -->
	<div class="main-menu">
		<div class="navbar-wrapper">
			<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target=".navbar-collapse">
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
	<!-- Main Menu End --> </header>
	<!-- Header End -->

	<!-- Contact -->
	<section id="contact-us">
	<div class="container ">

		<div class="panel panel-primary">
			<div class="panel-heading ">Seleccion por Profesional</div>
			<div class="panel-body row">
			 <div class="clearfix visible-xs-block"></div>

				<div class="col-md-3">
					<img src="https://i.ytimg.com/vi/esOcn5y86mM/hqdefault.jpg"
						class="img-circle" width="200" height="200">
				</div>
				<div class="col-md-6">
					<h3>Dr. Goku</h3>
					<br />
					<p>Medicina General Adulto</p>
					<p>Temuco</p>
				</div>

				
				<div class="col-md-2"->
					<div id="datepicker" data-date="12/08/2017"></div>
					<input type="hidden" id="my_hidden_input">

				</div>
				<div class="col-md-6">
					<table class="table">
						<thead>
							<tr>
								<th>Hora</th>
								<th>Estado</th>
							</tr>
						</thead>
						<tbody>
							<tr class="success">
								<td>09:00</td>
								<td>Disponible</td>
								<td>
									<button class="btn btn-primary">Reservar</button>
								</td>
							</tr>
							<tr class="danger">
								<td>09:15</td>
								<td>Reservada</td>
								<td>
									<button class="btn btn-primary">Reservar</button>
								</td>
							</tr>
							<tr class="success">
								<td>09:30</td>
								<td>Disponible</td>
								<td>
									<button class="btn btn-primary">Reservar</button>
								</td>
							</tr>
						</tbody>
					</table>
				</div>


			</div>

		</div>

	</div>





	</div>

	</section>
	<!-- Contact -->

	<!-- Copyright -->


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
	<script src="js/bootstrap-datepicker.js"></script>
	<script src="js/bootstrap-datepicker.es.min.js"></script>


	<script type="text/javascript">
		$('#datepicker').datepicker({
			language : "es"
		});

		$('#datepicker').on(
				'changeDate',
				function() {

					$('#my_hidden_input').val(
							$('#datepicker').datepicker('getFormattedDate')

					);
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