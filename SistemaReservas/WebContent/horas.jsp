<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html class="no-js" lang="es">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title></title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

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
<link rel="stylesheet" href="css/bootstrap-datepicker.css">
<script src="js/vendor/modernizr-2.8.3.min.js"></script>
</head>
<body>
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
	<!-- Content -->
	<section id="contact-us">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div class="title">
						<h3>
							Reservas <span>Horas Médicas</span>
						</h3>
						<br />
					</div>
				</div>
			</div>
			<div class="panel panel-primary">
				<div class="panel-heading">Selección por Profesional</div>
				<div class="panel-body">
					<div class="row">
						<div class="col-sm-8">
							<%
								ResultSet detalleMedico = (ResultSet) request.getAttribute("detalleMedico");
								detalleMedico.next();
							%>


							<input type="hidden" name="rutMedico"
								value="<%=detalleMedico.getString("rutMedico")%>"> <input
								type="hidden" name="especialidasd"
								value="<%=request.getAttribute("especialidad")%>"> <input
								type="hidden" name="area"
								value="<%=request.getAttribute("area")%>"> <input
								type="hidden" name="ciudad"
								value="<%=request.getAttribute("ciudad")%>"> <input
								type="hidden" name="rutPaciente"
								value="<%=request.getAttribute("rutPaciente")%>">


							<div class="media">
								<div class="col-sm-2">
									<img class="media-object img-circle"
										src="img/perfil-doctor.jpg">
								</div>
								<div class="col-sm-7">
									<h4 class="media-heading">
										Dr.<%=detalleMedico.getString("nombreMedico")%></h4>
									<p><%=request.getAttribute("especialidad")%>-<%=request.getAttribute("area")%></p>
									<p><%=request.getAttribute("ciudad")%></p>
									<p></p>
								</div>
							</div>
							<table class="table">
								<thead>
									<tr>
										<th class="hidden"></th>
										<th class="col-sm-4">Hora</th>
										<th class="col-sm-5">Estado</th>
										<th class="col-sm-3"><%=request.getAttribute("fecha")%></th>
									</tr>
								</thead>
								<tbody>
									<%
										ResultSet listaHoras = (ResultSet) request.getAttribute("listaHoras");
										if (listaHoras.next()) {
											listaHoras.beforeFirst();
											while (listaHoras.next()) {
												if (listaHoras.getBoolean("estadoHoras")) {
									%>
									<tr>
										<th class="hidden"><%=listaHoras.getString("idHoras")%></th>
										<th class="success"><%=listaHoras.getString("horaHoras")%></th>
										<th class="success">Disponible</th>
										<th class="success"><button type="button"
												class="btn btn-primary btn-xs">Reservar</button></th>
									</tr>
									<%
										} else {
									%>
									<tr>
										<th class="hidden"><%=listaHoras.getString("idHoras")%></th>
										<th class="danger"><%=listaHoras.getString("horaHoras")%></th>
										<th class="danger">No Disponible</th>
										<th class="danger"><button type="button" disabled
												class="btn btn-primary btn-xs">Reservar</button></th>
									</tr>
									<%
										}
											}
										} else {
									%>
									<tr>
										<td class="danger" colspan="4">No existen Horas para la
											fecha Seleccionada</td>
									</tr>
									<%
										}
									%>
								</tbody>
							</table>
						</div>
						<div class="col-md-2"->
							<div id="datepicker" data-date=""></div>
							<input type="hidden" id="my_hidden_input">

						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End Content -->
	<!-- footer -->
	<!-- Copyright -->
	<div class="copyright">
		<div class="container">
			<div class="row">
				<div class="col-sm-4">
					<div class="copy-text">
						<p>
							All Rights Reserved | Copyright 2016 © <strong></strong> template
							by <strong><a href="http://www.pfind.com/goodies/">pFind's
									Goodies</a></strong>
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
	<script src="js/bootstrap-datepicker.js"></script>
	<script src="js/bootstrap-datepicker.es.min.js"></script>

	<script type="text/javascript">
		$('#datepicker').datepicker({
			format : "dd/mm/yyyy",
			todayHighlight : true,
		}).on(
				'changeDate',
				function(e) {

					var dia = e.date.getDate();
					var mes = e.date.getMonth() + 1;
					var anio = e.date.getFullYear();
					var fecha = anio + "-" + mes + "-" + dia;

					var rutMedico = $("input[name='rutMedico']").val();
					var especialidad = $("input[name='especialidad']").val();
					var area = $("input[name='area']").val();
					var ciudad = $("input[name='ciudad']").val();
					var rutPaciente = $("input[name='rutPaciente']").val();

					location.href = "./listaController?fecha=" + fecha
							+ "&rutMedico=" + rutMedico + "&especialidad="
							+ especialidad + "&area=" + area + "&ciudad="
							+ ciudad + "&rutPaciente=" + rutPaciente;

				})
		$("button").click(function() {
			var idHora = $(this).closest("tr").find("th").html();
		});
	</script>
	<script src="js/custom.js"></script>


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