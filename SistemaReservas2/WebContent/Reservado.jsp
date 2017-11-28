<%@page import="java.sql.ResultSet"%>
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




		<form method="POST" action="">

			<div class="panel panel-primary">
				<div class="panel-heading">
					<strong>Estas reservando con:</strong>
				</div>
				<div class="panel-body">
				<div class="col-sm-8">
					<%
						ResultSet detalleMedico = (ResultSet) request.getAttribute("detalleMedico");
						detalleMedico.next();
					%>
					
					<input type="hidden" name="rutMedico"
						value="<%=detalleMedico.getString("rutMedico")%>"> <input
						type="hidden" name="especialidad"
						value="<%=request.getAttribute("especialidad")%>"> <input
						type="hidden" name="area"
						value="<%=request.getAttribute("area")%>"> <input
						type="hidden" name="ciudad"
						value="<%=request.getAttribute("ciudad")%>">

					<div class="media">
						<div class="col-sm-3">
							<img src="https://i.ytimg.com/vi/esOcn5y86mM/hqdefault.jpg"
								class="img-circle" width="200" height="200">
						</div>

						<div class="col-sm-9">
							<h4 class="media-heading">
								Dr.
								<%=detalleMedico.getString("nombreMedico")%></h4>
							<p>
								Área Medica: <strong><%=request.getAttribute("especialidad")%>
									/ <%=request.getAttribute("area")%></strong>
							</p>
							<p>
								Ubicacion: <strong> <%=request.getAttribute("ciudad")%></strong>
							</p>

						</div>

					</div>



					<%
						ResultSet detalleHora = (ResultSet) request.getAttribute("detalleHora");
						detalleHora.next();
					%>

					<div class="col-sm-4">
						<input type="hidden" name="idHora"
							value="<%=detalleHora.getString("idHoras")%>">
						<p>
							El dia <strong><%=detalleHora.getString("fechaHora")%></strong>
						</p>
						<p>
							A las <strong> <%=detalleHora.getString("horaHoras")%>
								hrs
							</strong>
						</p>
					</div>
</div>
				</div>
			</div>


			<div class="panel panel-primary">
				<div class="panel-heading">
					<strong>Informacion del paciente</strong>
				</div>

				<div class="panel-body">
					<%
						ResultSet paciente = (ResultSet) request.getAttribute("paciente");
						boolean pac = paciente.next();
					%>




					<div class="col-md-4">
						<label>Rut del paciente</label> <input type="text"
							class="form-control" name="rut" id="rut"
							value="<%=request.getAttribute("rutPaciente")%>">
					</div>

					<div class="col-md-4">
						<label>Apellido Paterno</label> <input type="text"
							class="form-control" name="apellidoPaterno"
							placeholder="Apellido"
							value="<%=request.getAttribute("rutPaciente")%>">
					</div>

					<div class="col-md-4">
						<label>Telefono</label> <input type="text" class="form-control"
							name="telefono" placeholder="Telefono"
							value="">
					</div>


					<div class="col-md-4">
						<label>Nombre</label> <input type="text" class="form-control"
							name="Name" placeholder="Nombre"
							value="">
					</div>

					<div class="col-md-4">
						<label>Apellido Materno</label> <input type="text"
							class="form-control" name="apellidoMaterno"
							placeholder="Apellido Materno"
							value="">
					</div>

					<div class="col-md-4">
						<label>Email</label> <input type="text" class="form-control"
							name="email" placeholder="Email"
							value="">
					</div>



					<div class="col-lg-12 margintop10 field">
						<div class="col-lg-4"></div>
						<div class="col-lg-4">
							<br />
							<button type="submit" class="btn btn-primary btn-block">Reservar:</button>

						</div>

					</div>

				</div>
			</div>

		</form>
	</div>
	<div class="clearfix visible-xs-block"></div>



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