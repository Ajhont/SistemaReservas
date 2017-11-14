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
		<div class="container ">
		
		<% ResultSet listaMedicos = (ResultSet)request.getAttribute("listadoMedicos");
							if(listaMedicos.next()){
								listaMedicos.beforeFirst();
								while(listaMedicos.next())
								{
		%>
						<form method="post" action="./resultController">
							<div class="row">
								<div class="panel">
									<div class="panel-body">
									<input type="hidden" name="rutMedico" value="<%= listaMedicos.getString("rutMedico")%>">
									<input type="hidden" name="especialidad" value="<%= request.getAttribute("especialidad") %>">
									<input type="hidden" name="area" value="<%= request.getAttribute("area") %>">
									<input type="hidden" name="ciudad" value="<%= request.getAttribute("ciudad") %>">
									<input type="hidden" name="rutPaciente" value="<%= request.getAttribute("rutPaciente")%>"> 
									
									<div class="media">
										<div class="col-sm-2">
										<img src="https://a1-images.myspacecdn.com/images03/31/e689247f52604611ae2ccd9a1d4fd8a2/600x600.jpg" class="media-object img-circle"/>
											
										</div>
										<div class="col-sm-7">
											<h4 class="media-heading">Dr. <%= listaMedicos.getString("nombreMedico") %></h4>
											<p><%= listaMedicos.getString("nombreEspecialidad") %> - <%= listaMedicos.getString("nombreArea") %></p>
											<p><%= listaMedicos.getString("nombreCiudad") %></p>
										</div>
										<div class="col-sm-3">
										<input type="submit" value="Seleccionar" class="btn btn-primary btn-block">
										</div>
									</div>
									</div>
								</div>
							</div>
						</form>
						<%
						}
						%>
						<%
						
							}else{
						%>
						<div class="container">
						<div class="row">
						<div class="col-md-3 col-ms-offset-4">
							<p class="text-danger"><strong>NO EXISTEN RESULTADOS DE LA BUSQUEDA U_U</strong></p>
						</div>
						</div>
						</div>
						<%
							}
						%>
		
		
	
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