<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html class="no-js" lang="">
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
								<li><a href="busqueda.jsp">Reserva de horas</a></li>

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
							Reservas <span>Horas M�dicas</span>
						</h3>
						<br />
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-sm-8 col-sm-offset-2">
					<div class="panel panel-primary">
						<div class="panel-heading">Selecci�n por Profesional</div>
						<div class="panel-body">
							<div class="col-sm-8">

								<%
									ResultSet detalleMedico = (ResultSet)request.getAttribute("detalleMedico");
									detalleMedico.next();
								%>

								<input type="hidden" name="rutMedico" value="<%= detalleMedico.getString("rutMedico") %>">
								<input type="hidden" name="especialidad" value="<%= request.getAttribute("especialidad") %>">
								<input type="hidden" name="area" value="<%= request.getAttribute("area") %>">
								<input type="hidden" name="ciudad" value="<%= request.getAttribute("ciudad") %>">
								<input type="hidden" name="rutPaciente" value="<%= request.getAttribute("rutPaciente") %>">
								<div class="media">
									<div class="col-sm-3">
										<img src="img/img_avatar1.png" class="media-object img-circle" />
									</div>
									<div class="col-sm-9">
										<h4 class="media-heading">
											Dr.
											<%= detalleMedico.getString("nombreMedico")%></h4>
										<p><%= request.getAttribute("especialidad")%>
											/
											<%= request.getAttribute("area")%></p>
										<p><%= request.getAttribute("ciudad")%></p>
									</div>
								</div>
								<form method="POST" action="">
									<table class="table">
										<thead>
											<tr>
												<th class="hidden"></th>
												<th class="col-sm-4">Hora</th>
												<th class="col-sm-5">Estado</th>
												<th class="col-sm-3"><%= request.getAttribute("fechaActual") %></th>
											</tr>
										</thead>
										<tbody>

											<%
										    ResultSet listaHoras = (ResultSet)request.getAttribute("listaHoras");
										    
										    	if(listaHoras.next()){
										    		listaHoras.beforeFirst();
										    		while(listaHoras.next()){
										    			if(listaHoras.getBoolean("estadoHoras")){
										    			%>

											<tr>
												<th class="hidden"><%= listaHoras.getString("idHoras") %></th>
												<td class="success"><%= listaHoras.getString("horaHoras") %></td>
												<td class="success">Disponible</td>
												<td class="success"><button type="button"
														class="btn btn-primary btn-xs">Reservar</button></td>
											</tr>

											<% } else { %>
											<tr>
												<th class="hidden"><%= listaHoras.getString("idHoras") %></th>
												<td class="danger"><%= listaHoras.getString("horaHoras") %></td>
												<td class="danger">No Disponible</td>
												<td class="danger"><button type="button"
														class="btn btn-primary disabled btn-xs">Reservar</button></td>
											</tr>

											<%
										      	}
										    		}
										    	} else {
										      	%>

											<tr>
												<td class="danger" colspan="4">No existen horas para la
													fecha seleccionada.</td>
											</tr>
											<% } %>

										</tbody>
									</table>
								</form>
							</div>
							<div class="col-sm-4">
								<div class="datePicker"></div>
							</div>

						</div>

					</div>
				</div>
			</div>

		</div>
	</section>


	<!-- Copyright -->
	<div class="copyright">
		<div class="container">
			<div class="row">
				<div class="col-sm-4">
					<div class="copy-text">
						<p>
							All Rights Reserved | Copyright 2016 � <strong><a
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
	<script>window.jQuery || document.write('<script src="js/vendor/jquery-1.12.0.min.js"><\/script>')</script>
	<script src="js/plugins.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/bootstrap-datepicker.min.js"></script>
	<script src="js/jquery.mousewheel-3.0.6.pack.js"></script>
	<script src="js/paralax.js"></script>
	<script src="js/jquery.smooth-scroll.js"></script>
	<script src="js/jquery.sticky.js"></script>
	<script src="js/wow.min.js"></script>
	<script src="js/main.js"></script>


	<script type="text/javascript">
			$(document).ready(function(){
				
				$('.datePicker').datepicker({
					format: "dd/mm/yyyy",
				    todayHighlight: true,
				}).on('changeDate', function(e){
					var dia = e.date.getDate();
					var mes = e.date.getMonth()+1;
					var annio = e.date.getFullYear();
					var fecha = annio + "-" + mes + "-" + dia;
					
					var rutMedico = $("input[name='rutMedico']").val();
					var especialidad = $("input[name='especialidad']").val();
					var area = $("input[name='area']").val();
					var ciudad = $("input[name='ciudad']").val();
					var rutPaciente = $("input[name='rutPaciente']").val();
					
					location.href = "./resultController?fecha=" + fecha + "&rutMedico=" + rutMedico + 
							"&especialidad=" + especialidad + "&area=" + area + "&ciudad=" + ciudad + "rutPaciente=" + rutPaciente;
				})
				
				$("button").click(function(){
					var idHora = $(this).closest("tr").find("th").html();
				})
			});
		</script>
</body>
</html>

