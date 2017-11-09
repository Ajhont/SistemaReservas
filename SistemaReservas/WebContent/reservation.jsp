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

  <link rel="apple-touch-icon" href="apple-touch-icon.png">
  <!-- Place favicon.ico in the root directory -->

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
  <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

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
                <li><a href="reservation.hml">Reserva de horas</a></li>

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
									<select name="especialidad" class="form-control" id="sel1"
										style="width: 70%">
										<%
											ResultSet listaEsp = (ResultSet)request.getAttribute("lEsp");
											while (listaEsp.next()) {
										%>
										<option><%=listaEsp.getString("nombreEspecialidad")%></option>
										<%
											}
										%>
									</select>
								</div>

								<div class="form-group">
									<select name="area" class="form-control" id="sel1"
										style="width: 70%">
										<%
											ResultSet listaArea = (ResultSet)request.getAttribute("lAreas");
											while (listaArea.next()) {
										%>
										<option><%=listaArea.getString("nombreArea")%></option>
										<%
											}
										%>
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
										<label class="radio"> <input type="radio" name="optradio" value="Temuco"> Temuco</label>
									</div>
									<div class="radio">
										<label class="radio"> <input type="radio"name="optradio" value="Padre las casas"> Padre las casas</label>
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
										<input type="text" name="rutP" class="form-control" placeholder="Ej: 12345678-5">
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

  <!-- Copyright -->
  <div class="copyright">
    <div class="container">
      <div class="row">
        <div class="col-sm-4">
          <div class="copy-text">
            <p>All Rights Reserved | Copyright 2016 ï¿½ </p>
          </div>
        </div>

      </div>
    </div>
  </div>





  <script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
  <script>
    window.jQuery || document.write('<script src="js/vendor/jquery-1.12.0.min.js"><\/script>')
  </script>
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
