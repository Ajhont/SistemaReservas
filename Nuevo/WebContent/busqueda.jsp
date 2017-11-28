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
				
				<form method="POST" action="./busquedaController" >
					<div class="row">
						<div class="col-sm-4">						
							<div class="panel panel-primary">
						 		<div class="panel-heading">Seleccione Área Médica</div>
								<div class="panel-body">
									<table>
										<tr>															
											<td>
												<div class="form-group">																	  
												  <select name="especialidad" class="form-control" id="sel1" style="width: 70%">
													  <%  
													  ResultSet listaEsp = (ResultSet)request.getAttribute("lEsp");
													  
													  while(listaEsp.next()){
													  %>
													    
													    <option><%= listaEsp.getString("nombreEspecialidad") %></option>
													  <%
													  	}
													  %>
												  </select>
												</div>
											</td>											
										</tr>
										<tr>
											<td>
												<div class="form-group">							  
												  <select name="area" class="form-control " id="sel1" style="width: 70%">
												     <%  
												  ResultSet listaArea = (ResultSet)request.getAttribute("lAreas");
												  
												  while(listaArea.next()){
												  %>
												    
												    <option><%= listaArea.getString("nombreArea") %></option>
												  <%
												  	}
												  %>						    
												  </select>
												</div>
											</td>
											
										</tr>
										<tr>
											<td>
												<button type="button" class="btn btn-link">Buscar por nombre de especialista</button>
											</td>
											
										</tr>
									</table>
								
								</div>
							</div>
							
						</div>					
						<div class="col-sm-4">
							<div class="panel panel-primary">
					 			<div class="panel-heading">Seleccione Ubicación</div>
								<div class="panel-body">
									<table>
										<tr>
											<td>
												<div class="radio">
												  <label><input type="radio" name="optradio" value="Temuco" >Temuco</label>
												</div>
												<div class="radio">
												  <label><input type="radio" name="optradio" value="Padre las casas">Padre las casas</label>
												</div>
											</td>
											
										</tr>
										<tr></tr>
															
									</table>
								</div>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="panel panel-primary">
					 			<div class="panel-heading">Ingrese Datos del paciente</div>
								<div class="panel-body">
									<table>									
										<tr>
											<td>
												<div class="form-group">
												    <label style="font-weight: normal">Rut del paciente:</label>
												    <input type="text" name="rutP" class="form-control" placeholder="Ej: 12345678-5">
												  </div>
											</td>
											
										</tr>					
									</table>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-4 col-sm-offset-4">
							<input type="submit" value="Buscar" class="btn btn-primary btn-block">
						</div>
					</div>
				</form>
				<div class="row">
					<div class= "col-sm-4 col-sm-offset-4">
						<input type="button" value="Modificar o anular reserva" class="btn btn-secondary btn-block">
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
								<p>All Rights Reserved | Copyright 2016 ©</p>
							</div>
						</div>
					</div>
				</div>
			</div>
        <script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script type="text/javascript">
	        $(document).ready(function() {
	           
	        });
        </script>
    </body>
</html>