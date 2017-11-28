<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html class="no-js" lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Consulta horas por profesional</title>
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
            <div class="panel-heading"><b>Hora Reservada con:</b></div>
            <div class="panel-body">
                <div class="row">
                <%
							ResultSet detalleMedico = (ResultSet) request.getAttribute("detalleMedico");
							detalleMedico.next();
						%>
                
                    <div class="col-sm-3">
                        <img class="img-circle" src="img/silueta.jpg" alt="Sider Big Image">
                    </div>
                    <div class="col-sm-6 ti" style="margin-top: 2%">
							<h4 class="media-heading">
								Dr.
								<%=detalleMedico.getString("nombreMedico")%></h4>
							<p><%=request.getAttribute("especialidad")%>
								/
								<%=request.getAttribute("area")%></p>
							<p><%=request.getAttribute("ciudad")%></p>
							<p></p>

						</div>
                    <div class="col-md-3">
                        <div class="title">
                           <%
									ResultSet detalleHora = (ResultSet) request.getAttribute("detalleHora");
									detalleHora.next();
								%>

								<p>
									El d�a <b><%=detalleHora.getString("fechaHora")%></b>
								</p>
								<p>
									A las <b><%=detalleHora.getString("horaHoras")%></b>
								</p>
                            <p>
                                N�mero de Reserva
                            </p>
                            <%
									ResultSet detalleReserva = (ResultSet) request.getAttribute("detalleReserva");
									detalleReserva.next();
								%>
                            <p>
                                <button class="btn btn-warning"><%=detalleReserva.getString("idReserva")%></button>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row justify-content-md-center">
                <div class="col col-lg-6" align="right">
                    <button type="button" class="btn btn-danger btn-lg">Anular Hora</button>
                </div>
                <div class="col col-lg-6">
                    <button type="button" class="btn btn-secondary btn-lg">Reservar con otro m�dico</button>
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
                    <p>All Rights Reserved | Copyright 2017 � <strong>Fernando Riffo</strong>
                        template by <strong><a href="http://www.pfind.com/goodies/">pFind's
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