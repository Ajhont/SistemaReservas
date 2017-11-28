<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet" %>
<!doctype html>
<html class="no-js" lang="">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title></title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

		<!-- Font -->
		<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,700,600italic,700italic,800,800italic' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
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
		<!-- Header Start -->
		<header id="home">
			
			<!-- Main Menu Start -->
			<div class="main-menu">
				<div class="navbar-wrapper">
					<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
						<div class="container">
							<div class="navbar-header">
								<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
									<span class="sr-only">Toggle Navigation</span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
								</button>
								
								<a href="#" class="navbar-brand"><img src="img/logo.png" alt="Logo" /></a>							
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
		
		<section id="contact-us">
			<div class="container">
				<div class="row">
						<div class="col-sm-12">
							<div class="title">
								<h3>Reservas <span>Horas Médicas</span></h3><br/>
							</div>
						</div>
				</div>
				
				<div class="row">
					<div class="col-sm-8 col-sm-offset-2">
						<form method="POST" action="./confirmacionController" >
						<div class="panel panel-primary">
							<div class="panel-heading"><strong>Estas reservando con:</strong></div>
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
									<div class="media">
										<div class="col-sm-3">
										<img src="img/img_avatar1.png" class="media-object img-circle"/>
										</div>
										<div class="col-sm-9">
											<h4 class="media-heading">Dr. <%= detalleMedico.getString("nombreMedico") %></h4>
			        						<p>Área Médica: <strong><%= request.getAttribute("especialidad") %> / <%= request.getAttribute("area") %></strong></p>
											<p>Ubicación: <strong><%= request.getAttribute("ciudad") %></strong></p>
										</div>
									</div>
								</div>
								<%  
							  		ResultSet detalleHora = (ResultSet)request.getAttribute("detalleHora");									
									detalleHora.next();									  	
							  	%>
								<div class="col-sm-4">
									<input type="hidden" name="idHora" value="<%= detalleHora.getString("idHoras") %>">	
									<p>El día <strong><%= detalleHora.getString("fechaHora") %></strong></p>
									<p>A las <strong><%= detalleHora.getString("horaHoras") %> hrs</strong></p>
								</div>							
							</div>
						</div>
						<div class="panel panel-primary">
							<div class="panel-heading"><strong>Información del paciente:</strong></div>
							<div class="panel-body">
							<%	
								ResultSet paciente = (ResultSet)request.getAttribute("paciente");
								boolean pac = paciente.next();
							%>
								<div class="col-sm-4 ">
									<div class="form-group">
									  <label for="rut">Rut:</label>
									  <input type="text" name="rutP" class="form-control" id="rut" value="<%= request.getAttribute("rutPaciente") %>">
									</div>
									<div class="form-group">
									  <label for="nombre">Nombre:</label>
									  <input type="text" name="nombreP" class="form-control" id="nombre" value="<%= (pac) ? paciente.getString("nombrePaciente") : "" %>">
									</div>
								</div>
								<div class="col-sm-4">
									<div class="form-group">
										<label for="apat">Apellido Paterno:</label>
										<input type="text" name="aPaternoP" class="form-control" id="apat" value="<%= (pac) ? paciente.getString("aPaternoPaciente") : "" %>">
									</div>
									<div class="form-group">
										<label for="amat">Apellido Materno:</label>
										<input type="text" name="aMaternoP" class="form-control" id="amat" value="<%= (pac) ? paciente.getString("aMaternoPaciente") : "" %>">
									</div>
								</div>
								<div class="col-sm-4">										
									<div class="form-group">
										<label for="email">Emaill:</label>
										<input type="text" name="emailP" class="form-control" id="emaill" value="<%= (pac) ? paciente.getString("email") : "" %>">
									</div>
								</div>
								<div class="col-sm-4 col-sm-offset-4">
									<input type="submit" value="Reservar" class="btn btn-primary btn-block">
								</div>
								
							</div>
						</div>
						</form>
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
								<p>All Rights Reserved | Copyright 2016 © <strong><a href="http://www.pfind.com/goodies/bizium/">The Bizium</a></strong> template by <strong><a href="http://www.pfind.com/goodies/">pFind's Goodies</a></strong></p>
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
        <script src="js/jquery.mousewheel-3.0.6.pack.js"></script>
        <script src="js/paralax.js"></script>
        <script src="js/jquery.smooth-scroll.js"></script>
        <script src="js/jquery.sticky.js"></script>
        <script src="js/wow.min.js"></script>
        <script src="js/main.js"></script>
        
    </body>
</html>