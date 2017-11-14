<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<!doctype html>
<html class="no-js" lang="">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title></title>
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
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
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
							Reservas <span>Horas</span>
						</h3>
					</div>
				</div>
			</div>
		</div>

		<div class="contact">
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<h4>Please Contact With Us For Any Kind Of Information</h4>

						<form id="contactform" action="./busquedaController"
							method="POST" class="validateform" name="send-contact">
							<div class="row">
								<div class="col-lg-4 field">
									<table class="table table-bordered">
										<thead>
											<tr class="success">
												<th>1.-Selecciona &Aacute;rea M&eacute;dica</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>
													<div class="form-group">

														<select name="especialidad" class="form-control"
															 style="width: 70%">
															<%
																ResultSet listaEsp = (ResultSet) request.getAttribute("lEsp");
																while (listaEsp.next()) {
															%>
															<option> <%=listaEsp.getString("nombreEspecialidad")%></option>
															<%
																}
															%>
														</select>


														<p></p>
													</div>

													<div class="form-group">
														<select name="area" class="form-control" 
															style="width: 70%">
															<%
																ResultSet listaArea = (ResultSet) request.getAttribute("lAreas");
																while (listaArea.next()) {
															%>
															<option> <%=listaArea.getString("nombreArea")%></option>
															<%
																}
															%>
														</select>


														<p></p>
														<p class="text-center">
															<A HREF="#" TARGET="_new">Buscar por Nombre o
																Apellido</A>
														</p>
													</div>
												</td>
											</tr>



										</tbody>

									</table>

								</div>
								<div class="col-lg-4 field">
									<table class="table table-bordered">
										<thead>
											<tr class="success">
												<th><label>2.-Selecciona Ubicación</label></th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>
													<div class="radio">
														<label><input type="radio" name="optradio"
															value="Temuco">Temuco</label>
													</div>
													<div class="radio">
														<label><input type="radio" name="optradio"
															value="Padre las Casas">Padre las Casas</label>
													</div>

												</td>
											</tr>
										</tbody>


									</table>
								</div>
								<div class="col-lg-4 field">
									<table class="table table-bordered">
										<thead>
											<tr class="success">
												<th>3.-Ingresa datos del paciente</th>
											</tr>
										</thead>

										<tbody>
											<tr>
												<td><label>Rut del paciente</label> <input type="text"
													class="form-control" name="rutP"
													placeholder="RUT sin puntos 12345678-9">
											</tr>
										</tbody>
									</table>


								</div>
								<div class="row">
									<div class="col-xs-4 col-xs-offset-4">
										<button type="submit" class="btn btn-lg btn-primary btn-block">
											Buscar</button>
									</div>
								</div>
								<br>
								<div class="row">
									<div class="col-xs-4 col-xs-offset-4">
										<button type="submit" class="btn btn-lg btn-danger btn-block">
											Modificar o Anular la Reserva</button>
									</div>
								</div>

							</div>
						</form>



					</div>
				</div>
			</div>
		</div>


	</section>
	<!-- Contact -->


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
