<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>TITULO</title>
<c:set var="path" value="${pageContext.request.contextPath}"
    scope="request" />
    
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<link href="${path}/static/css/index.css" rel="stylesheet"	type="text/css">
	<!-- Custom Fonts -->
<link href="${path}/static/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic"
	rel="stylesheet" type="text/css">
	
	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
	
	
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">
	
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#foto").hide();
		
			$("#btn-quienes").on("click", function(){
		    	$("#foto").show();
			});

		});
	</script>
</head>

<body style="background-image: url('https://k39.kn3.net/taringa/6/5/2/1/3/1/4/b2kcarolina/503.jpg?8605');background-size: cover; background-repeat:no-repeat; background-position: center center; ">
	<%
String[][] creadores = {
            
            { "dani1.jpg", "dani2.jpg", "Daniel Sánchez Martín ", "Base de datos"},
            { "david1.jpg", "david2.jpg", "David Jurado Ortega ", "Controladores"},
            { "jose1.jpg", "jose2.jpg", "José Manuel Cantero Cantero ", "Vistas"},
            { "angel1.jpg", "angel2.jpg", "Ángel Jesús Expósito Caro ", "Controladores"},
            
            { "1.jpg", "2.jpg", "David Roman Carabantes ", "Vistas"},
            { "maca1.jpg", "maca2.jpg", "Macarena Casañas Suárez ", "Controladores"},
            { "daniel1.jpg", "daniel2.jpg", "Daniel Sáez Montes ", "Controladores"},
            { "alfredo1.jpg", "alfredo2.jpg", "Alfredo Fernández García ", "Base de datos"},
            
            { "juanka1.jpg", "juanka2.jpg", "Juan Carlos Medina Martínez ", "Vistas"},
            { "pablo1.jpg", "pablo2.jpg", "Pablo Fariña ", "Vistas"},
            { "alvaro1.jpg", "alvaro2.jpg", "Alvaro Jesús Zapata Jaraíz ", "Base de datos"},
            { "maria1.jpg", "maria2.jpg", "María Isabel Fernández Felipe", "Base de datos"},
            
            { "juancarlos1.jpg", "juancarlos2.jpg", "Juan Carlos Lumbreras Díaz", "Base de datos"},
            { "ruben1.jpg", "ruben2.jpg", "Rubén Barbosa Toro ", "Base de datos"},
            { "joel1.jpg", "joel2.jpg", "Joel Jackson Castaño ", "Controladores"},
            { "vero1.jpg", "vero2.jpg", "Verónica Galván Esperilla", "Vistas"},
            
            { "mana1.jpg", "mana2.jpg", "Manasés Sánchez González ", "Controladores"},
            { "sergio1.jpg", "sergio2.jpg", "Sergio Jesús Caro Arroyo ", "Vistas"},
            { "jesus1.jpg", "jesus2.jpg", "Jesús  ", "Scrum Master"},
            
            
        };
%>
	
	
	
	<br>
	<br>
	<br>
	<br>
	<div class="row">
		<div class="col-md-4"></div>
		<div class="col-md-4 text-center" id="marco">
			<button type="button" align="right" class="btn btn-default"
				data-toggle="modal" data-target="#modal-login">Iniciar
				Sesión</button>
			</td>
			<button type="button" align="left" class="btn btn-default"
				data-toggle="modal" data-target="#modal-registro">Registrarse</button>
			</td>
		</div>
		<div class="col-md-4"></div>
	</div>
	<br>
	<br>
	<br>
  <div class="row text-center">
  	<div class="col-md-1"></div>
    <div class="col-md-10">
      	<form class="form form-horizontal" role="search">
         <div class="form-group">
           <div class="col-md-12">
           		<div class="container">
           			<div class="row col-md-9">
            			<input type="text" class="form-control input-lg" id="search" placeholder="ejem. Programador Madrid">
					</div>
					<div class="row col-md-3">
						<input type="select" class="form-control input-lg" list="provincias">
  						<datalist id="provincias">
    						<option>Selecciona Provincia</option>
    						<option></option>
  						</datalist>
  						</input>
					</div>	
           		</div>
           </div>
         </div>
				<button type="submit" class="btn btn-default">
					<span class="glyphicon glyphicon-search"></span> Buscar Empleo
				</button>
        </form> 
    </div>
   	<div class="col-md-1"></div>
   	<br><br><br><br>
   	<br><br><br><br>
   	<div class="row" id="boton_fotos">
   	<div class="col-md-5"></div>
   	<div class="col-md-2">
   		<button type="button" align="center" id="btn-quienes" class="btn btn-default">Quienes Somos</button>
	</div>
   	<div class="col-md-5"></div>
   	</div>
   	
   
<div class="row" style="text-align: center;" id="foto">
			 
	   <%
                for (int i = 0; i < creadores.length; i++) {
            %>
                <div class="col-md-3">
                    <img class="main" src="${path}/static/img/<%=creadores[i][0] %>" width="250px">
                    <img class="alternativa" src="${path}/static/img/<%=creadores[i][1] %>" width="250px">            
                    <h5><%= creadores[i][2] %> </h5>
                    <h5><%= creadores[i][3] %></h5>
                </div>
             <%
                }
            %>
    </div>
    
    
  </div>  
	<div class="modal fade" id="modal-login" tabindex="-1" role="dialog"
		aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<form id="form-login" method="post">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h3 class="modal-title">Iniciar Sesión</h3>
					</div>
					<div class="modal-body">
						<label for="email">E-mail: </label> <input id="email" name="email"
							class="form-control"> <label for="password">Contraseña:
						</label> <input id="password" name="password" class="form-control">

						<input id="id" name="id" type="hidden"> <input id="csrf"
							name="_csrf" type="hidden" value="${_csrf.token}">
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
						<button type="button" class="btn btn-danger boton-loginok">Iniciar
							Sesión</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<div class="modal fade" id="modal-registro" tabindex="-1" role="dialog"
		aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<form id="form-registro" method="post">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h3 class="modal-title">Regístrate</h3>
					</div>
					<div class="modal-body">
						<h5>¿Qué eres?</h5>
						<div class="row">
							<div align="left" class="col-md-6 text-center">
								<button type="button" class="btn btn-default">
									<a href="/***">Candidato   <span
										class="glyphicon glyphicon-user"></span></a>
								</button>
							</div>
							<div align="right" class="col-md-6 text-center">
								<button type="button" class="btn btn-default">
									<a href="***">Empresa   <span class="glyphicon glyphicon-lock"></span></a>
								</button>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>

					</div>
				</form>
			</div>
		</div>
	</div>

 <footer>
        <div class="row">
            <div class="col-md-12">
            <h5 style="text-align: center"> Aviso de Copyright</h5>
            <h5 style="text-align: center">Copyright © [Año de primera publicación-Año actual, pj: "2010-2013"] [nombre, ej: "Diseños Web Ltd"] </h5>
            </div>
        </div>
        </div>    
        </footer>


<!-- Navigation -->
	<nav class="navbar navbar-default navbar-fixed-top topnav"
		role="navigation">
		<div class="container topnav">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>

				</button>
				<a class="navbar-brand topnav" href="#">Proyecto Final Java Badajoz</a>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#about">About</a></li>
					<li><a href="#services">Services</a></li>
					<li><a href="#contact">Contact</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>


	<!-- Header -->
	<a name="about"></a>
	<div class="intro-header">
		<div class="container">

			<div class="row">
				<div class="col-lg-12">
					<div class="intro-message">
						<h1>Portal de Empleo</h1>
						<h3>Proyecto final Java Badajoz</h3>
						<hr class="intro-divider">
						<ul class="list-inline intro-social-buttons">
							<li>
								<form class="form form-horizontal" role="search">
									<input type="text" placeholder="ejem. Programador Madrid" class="form-control input-lg" id="search" >
									
								</form>
							</li>
						</ul>
						<hr class="intro-divider">
						<ul class="list-inline intro-social-buttons">
							<li><a href="https://twitter.com/SBootstrap"
								class="btn btn-default btn-lg"><i
									class="fa fa-twitter fa-fw"></i> <span class="network-name">Twitter</span></a>
							</li>
							<li><a
								href="https://github.com/IronSummitMedia/startbootstrap"
								class="btn btn-default btn-lg"><i class="fa fa-github fa-fw"></i>
									<span class="network-name">Github</span></a></li>
							<li><a href="#" class="btn btn-default btn-lg"><i
									class="fa fa-linkedin fa-fw"></i> <span class="network-name">Linkedin</span></a>
							</li>
						</ul>
					</div>
				</div>
			</div>

		</div>
		<!-- /.container -->

	</div>
	<!-- /.intro-header -->

	<!-- Page Content -->

	<a name="services"></a>
	<div class="content-section-a">

		<div class="container">
			<div class="row">
				<div class="col-lg-5 col-sm-6">
					<hr class="section-heading-spacer">
					<div class="clearfix"></div>
					<h2 class="section-heading">
						Death to the Stock Photo:<br>Special Thanks
					</h2>
					<p class="lead">
						A special thanks to <a target="_blank"
							href="http://join.deathtothestockphoto.com/">Death to the
							Stock Photo</a> for providing the photographs that you see in this
						template. Visit their website to become a member.
					</p>
				</div>
				<div class="col-lg-5 col-lg-offset-2 col-sm-6">
					<img class="img-responsive" src="img/ipad.png" alt="">
				</div>
			</div>

		</div>
		<!-- /.container -->

	</div>
	<!-- /.content-section-a -->

	<div class="content-section-b">

		<div class="container">

			<div class="row">
				<div class="col-lg-5 col-lg-offset-1 col-sm-push-6  col-sm-6">
					<hr class="section-heading-spacer">
					<div class="clearfix"></div>
					<h2 class="section-heading">
						3D Device Mockups<br>by PSDCovers
					</h2>
					<p class="lead">
						Turn your 2D designs into high quality, 3D product shots in
						seconds using free Photoshop actions by <a target="_blank"
							href="http://www.psdcovers.com/">PSDCovers</a>! Visit their
						website to download some of their awesome, free photoshop actions!
					</p>
				</div>
				<div class="col-lg-5 col-sm-pull-6  col-sm-6">
					<img class="img-responsive" src="img/dog.png" alt="">
				</div>
			</div>

		</div>
		<!-- /.container -->

	</div>
	<!-- /.content-section-b -->
	<div class="content-section-a">

		<div class="container">

			<div class="row">
				<div class="col-lg-5 col-sm-6">
					<hr class="section-heading-spacer">
					<div class="clearfix"></div>
					<h2 class="section-heading">
						Google Web Fonts and<br>Font Awesome Icons
					</h2>
					<p class="lead">
						This template features the 'Lato' font, part of the <a
							target="_blank" href="http://www.google.com/fonts">Google Web
							Font library</a>, as well as <a target="_blank"
							href="http://fontawesome.io">icons from Font Awesome</a>.
					</p>
				</div>
				<div class="col-lg-5 col-lg-offset-2 col-sm-6">
					<img class="img-responsive" src="img/phones.png" alt="">
				</div>
			</div>

		</div>
		<!-- /.container -->

	</div>
	<!-- /.content-section-a -->

	<a name="contact"></a>
	<div class="banner">

		<div class="container">

			<div class="row">
				<div class="col-lg-6">
					<h2>Connect to Start Bootstrap:</h2>
				</div>
				<div class="col-lg-6">
					<ul class="list-inline banner-social-buttons">
						<li><a href="https://twitter.com/SBootstrap"
							class="btn btn-default btn-lg"><i class="fa fa-twitter fa-fw"></i>
								<span class="network-name">Twitter</span></a></li>
						<li><a
							href="https://github.com/IronSummitMedia/startbootstrap"
							class="btn btn-default btn-lg"><i class="fa fa-github fa-fw"></i>
								<span class="network-name">Github</span></a></li>
						<li><a href="#" class="btn btn-default btn-lg"><i
								class="fa fa-linkedin fa-fw"></i> <span class="network-name">Linkedin</span></a>
						</li>
					</ul>
				</div>
			</div>

		</div>
		<!-- /.container -->

	</div>
	<!-- /.banner -->

	<!-- Footer -->
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<ul class="list-inline">
						<li><a href="#">Home</a></li>
						<li class="footer-menu-divider">&sdot;</li>
						<li><a href="#about">About</a></li>
						<li class="footer-menu-divider">&sdot;</li>
						<li><a href="#services">Services</a></li>
						<li class="footer-menu-divider">&sdot;</li>
						<li><a href="#contact">Contact</a></li>
					</ul>
					<p class="copyright text-muted small">Copyright &copy; Your
						Company 2014. All Rights Reserved</p>
				</div>
			</div>
		</div>
	</footer>

	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
		integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
		crossorigin="anonymous"></script>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>



</body>
</html>