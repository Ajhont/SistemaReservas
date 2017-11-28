<!DOCTYPE html>
<html class="no-js" lang="es">
<%@ page import="java.sql.ResultSet"%>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Resultado por especialidad</title>
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
<!-- Header Start -->
<header id="home">

    <!-- Main Menu Start -->
    <div class="main-menu">
        <div class="navbar-wrapper">
            <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse"
                                data-target=".navbar-collapse">
                            <span class="sr-only">Toggle Navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a href="#" class="navbar-brand"><img src="img/logo.png" alt="Logo"/></a>
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
        <div class="panel panel-primary">
            <div class="panel-heading"><b>Estas reservando con:</b></div>
            <div class="panel-body">
<!--           <div class="row"> -->
                <div class="col-sm-8">
                <% 
               		 ResultSet detalleMedico = (ResultSet)request.getAttribute("detalleMedico");
					 detalleMedico.next();
                %>
                	
                	<input type="hidden" name="rutMedico" value="<%= detalleMedico.getString("rutMedico") %>">
                    <input type="hidden" name="especialidad" value="<%= request.getAttribute("especialidad")%>">
                    <input type="hidden" name="area" value="<%= request.getAttribute("area") %>">
                    <input type="hidden" name="ciudad" value="<%= request.getAttribute("ciudad")%>">
                	<div class= "media">
                    <div class="col-sm-3">
                        <img class="img-circle" src="http://1.bp.blogspot.com/-hefBHcDHL38/UrAqPy61XWI/AAAAAAAAFSo/h3xu6BjMKiM/s1600/calavera_by_deiby_ybied-d4zdmee.gif" alt="Dr. Juan Riquelme">
                    </div>
                    <div class="col-sm-6 ti" style="margin-top: 2%">
                    
                    <h4 class="media-heading">Dr. <%= detalleMedico.getString("nombreMedico") %></h4>	
                    <p>Area Medica: <Strong><%= request.getAttribute("especialidad")%> / <%=request.getAttribute("area") %></strong>
                    <p>Ubicación: <Strong><%= request.getAttribute("ciudad")%></strong></p>    
                  </div>
                 </div>
<!--                </div>    -->
<!--                         <p><b>Dr.Juan Esteban Riquelme</b></p> -->
<!--                         <p><Strong>Medicina General Adulto</p></Strong> -->
<!--                         <p><Strong>Temuco</p></Strong> -->
<!--                     </div> -->
                <% 
               		 ResultSet detalleHora = (ResultSet)request.getAttribute("detalleHora");
					 detalleHora.next();
                %>
                    <div class="col-sm-3">
                    	<input type="hidden" name= "idHora" value="<%=detalleHora.getString("idHoras")%>">
                        <div class="title">
                            <p>El día <Strong><%=detalleHora.getString("fechaHora")%></Strong></p>
                            <p>A Las <Strong><%=detalleHora.getString("horaHoras")%>hrs</Strong></p>
                        </div>
                    </div>
                </div>
        <div class="panel panel-primary">
            <div class="panel-heading"><b>Información del paciente</b></div>
            <div class="panel-body">
            	 <% 
               		 ResultSet paciente = (ResultSet)request.getAttribute("paciente");
					 boolean pac = paciente.next();
                %> 
                <div class="form-group row">
                    <div class="col-sm-4">
                        <label for="rut">Rut:</label>
                        <input class="form-control" type="date" value="<%= request.getAttribute("rutPaciente")%>">
                    </div>
                    <div class="col-sm-4">
                        <p><b>Nombre:</b></p>
                        <input class="form-control" type="date" value="<%= (pac)? paciente.getString ("nombrePaciente"): "" %>">
                    </div>
                    <div class="col-sm-4">
                        <p><b>Apellido Paterno:</b></p>
                        <input class="form-control" type="date" value="<%= (pac)? paciente.getString ("aPaternoPaciente"): "" %>">
                    </div>
                    <div class="col-sm-4">
                        <p><b>Telefono:</b></p>
                        <input class="form-control" type="date" value="<%= (pac)? paciente.getString ("telefono"): "" %>">
                    </div>
                    <div class="col-sm-4">
                        <p><b>Apellido Materno:</b></p>
                        <input class="form-control" type="date" value="<%= (pac)? paciente.getString ("aMaternoPaciente"): "" %>">

                    </div>
                    <div class="col-sm-4">
                        <p><b>Email:</b></p>
                        <input class="form-control" type="date" value="<%= (pac)? paciente.getString ("email"): "" %>">
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-offset-5">
                        <button type="submit" class="btn btn-primary ">
                            Reservar
                        </button>
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
                    <p>All Rights Reserved | Copyright 2016 © <strong><a href="http://www.pfind.com/goodies/bizium/">The
                        Bizium</a></strong> template by <strong><a href="http://www.pfind.com/goodies/">pFind's
                        Goodies</a></strong></p>
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


<script type="text/javascript">
    $(document).ready(function () {
        $('a[href^="#"]').on('click', function (e) {
            e.preventDefault();

            var target = this.hash;
            var $target = $(target);

            $('html, body').stop().animate({
                'scrollTop': $target.offset().top
            }, 900, 'swing');
        });
    });
</script>

<script src="js/custom.js"></script>
<!-- Google Analytics: change UA-XXXXX-X to be your site's ID. -->
<script>
    (function (b, o, i, l, e, r) {
        b.GoogleAnalyticsObject = l;
        b[l] || (b[l] = function () {
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