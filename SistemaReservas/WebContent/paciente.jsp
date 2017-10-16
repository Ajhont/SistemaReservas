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
		
		<!-- Contact -->
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
						<div class="panel panel-primary">
							<div class="panel-heading"><strong>Estas reservando con:</strong></div>
							<div class="panel-body">
								<div class="col-sm-8">
									<input type="hidden" name="rutMedico" value="11111111">
									<div class="media">
										<div class="col-sm-3">
										<img src="img/img_avatar1.png" class="media-object img-circle"/>
										</div>
										<div class="col-sm-9">
											<h4 class="media-heading">Dr. Enrique Salas Avendaño</h4>
			        						<p>Área Médica: <strong>Medicina General Adulto</strong></p>
											<p>Ubicación: <strong>Temuco</strong></p>
										</div>
									</div>
								</div>
								<div class="col-sm-4">
									<p>El día <strong>27-10-2017</strong></p>
									<p>A las <strong>09:00 hrs</strong></p>
								</div>							
							</div>
						</div>
						<div class="panel panel-primary">
							<div class="panel-heading"><strong>Información del paciente:</strong></div>
							<div class="panel-body">
								<form>
									<div class="col-sm-4 ">
										<div class="form-group">
										  <label for="rut">Rut:</label>
										  <input type="text" class="form-control" id="rut" value="11.152.158-5">
										</div>
										<div class="form-group">
										  <label for="nombre">Nombre:</label>
										  <input type="text" class="form-control" id="nombre" value="Jonathan Alfonso">
										</div>
									</div>
									<div class="col-sm-4">
										<div class="form-group">
											<label for="apat">Apellido Paterno:</label>
											<input type="text" class="form-control" id="apat" value="Toledo">
										</div>
										<div class="form-group">
											<label for="amat">Apellido Materno:</label>
											<input type="text" class="form-control" id="amat" value="Cea">
										</div>
									</div>
									<div class="col-sm-4">
										<div class="form-group">
											<label for="phone">Telefono:</label>
											<input type="text" class="form-control" id="phone" value="954521578">
										</div>
										<div class="form-group">
											<label for="email">Emaill:</label>
											<input type="text" class="form-control" id="emaill" value="jhon@jhon.cl">
										</div>
									</div>
									<div class="col-sm-4 col-sm-offset-4">
										<input type="submit" value="Reservar" class="btn btn-primary btn-block">
									</div>
								</form>
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