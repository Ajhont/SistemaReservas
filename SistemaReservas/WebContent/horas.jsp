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

		<div class="panel panel-primary">
			<div class="panel-heading ">Seleccion por Profesional</div>
			<div class="panel-body row">
			<% 
				ResultSet detalleMedico = (ResultSet)request.getAttribute("detalleMedico");
				detalleMedico.next();
			%>
			<input type="hidden" name="rutMedico" value="<%= detalleMedico.getString("rutMedico") %>">
			<input type="hidden" name="especialidad" value="<%= request.getAttribute("especialidad") %>">
			<input type="hidden" name="area" value="<%= request.getAttribute("area")%>">
			<input type="hidden" name="ciudad" value="<%= request.getAttribute("ciudad")%>">
			<input type="hidden" name="rutPaciente" value="<%= request.getAttribute("rutPaciente")%>">
			 
			 <div class="clearfix visible-xs-block"></div>

				<div class="col-md-3">
					<img src="https://i.ytimg.com/vi/esOcn5y86mM/hqdefault.jpg"
						class="img-circle" width="200" height="200">
				</div>
				<div class="col-md-6">
					<h3 class="media-heading">Dr. <%= detalleMedico.getString("nombreMedico") %></h3>
					<p><%= request.getAttribute("especialidad") %>/<%= request.getAttribute("area") %></p>
					<p><%= request.getAttribute("ciudad") %></p>
					
					<br />
					<p>Medicina General Adulto</p>
					<p>Temuco</p>
				</div>

				
				<div class="col-md-2"->
					<div id="datepicker" data-date=""></div>
					<input type="hidden" id="my_hidden_input">

				</div>
				<div >
					<table class="table">
						<thead>
							<tr>
							<th class ="hidden" ></th>
								<th class="col-sm-4">Hora</th>
								<th class="col-sm-5">Estado</th>
								<th class="col-sm-3"><%=request.getAttribute("fecha") %></th>
								<th>
							</tr>
						</thead>
						<tbody>
						<% ResultSet listaHoras = (ResultSet)request.getAttribute("listaHoras");
						if(listaHoras.next()){
							listaHoras.beforeFirst();
							while(listaHoras.next()){
								if(listaHoras.getBoolean("estadoHoras")){
							
						
						
						%>
							<tr>
								<th class="hidden"><%= listaHoras.getString("idHoras") %></th>
								<td class="success"><%= listaHoras.getString("horaHoras") %></td>
								<td class="success"> DISPONIBLE </td>
								<td class="success">
									<button class="btn btn-primary">Reservar</button>
								</td>
							</tr>
						<% }else { %>
							<tr>
								<th class="hidden"><%= listaHoras.getString("idHoras") %></th>
								<td class="danger"><%= listaHoras.getString("horaHoras") %></td>
								<td class="danger"> NO DISPONIBLE  U_U</td>
								<td class="danger">
									<button class="btn btn-primary " disabled>Reservar</button>
								</td>
							</tr>
							<%	}
						}
						}else{
							
							%>
							<tr>
								<td class="danger" colspan="4">NO EXISTEN HORA PARA LA FECHA SELECCIONADA >:V </td>
							</tr>
							<%} %>
						</tbody>
					</table>
					<div class="col-sm-4">
					
						<div class="datePicker"></div>
					</div>
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
			
			format : "dd/mm/yyyy",
			todayHighlight: true,
		}). on('changeDate', function(e) {
			
			var dia = e.date.getDate();
			var mes = e.date.getMonth()+1;
			var anio = e.date.getFullYear();
			var fecha = anio + "-"+ mes + "-"+ dia;
			
			var rutMedico = $("input[name='rutMedico']").val();
			var especialidad = $("input[name='especialidad']").val();
			var area = $("input[name='area']").val();
			var  ciudad = $("input[name='ciudad']").val();
			var rutPaciente = $("input[name='rutPaciente']").val();
			
			location.href="./resultController?fecha="+fecha+"&rutMedico="+rutMedico+
					"&especialidad="+especialidad+"&area="+area+"&ciudad="+ciudad+
					"&rutPaciente="+rutPaciente;
			
		})
		$("button").click(function(){
			var idHora = $(this).closest("tr").find("th").html();
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