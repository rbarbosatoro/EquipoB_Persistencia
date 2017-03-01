
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

		$("#btn-quienes").on("click", function() {
			$("#foto").toggle();
		});
		
		$('.alternativa').hide();

		$('.main').on("mouseenter", function() {
			console.log('aaaaa');
			$(this).hide();
			$(this).next().show();
		});

		$('.alternativa').on("mouseleave", function() {
			console.log('bbbbb');
			$(this).hide();
			$(this).prev().show();
		});

	});
</script>
</head>
<body
	style="background-image: url('https://k39.kn3.net/taringa/6/5/2/1/3/1/4/b2kcarolina/503.jpg?8605'); background-size: cover; background-repeat: no-repeat; background-position: center center;">
	<br>
	<br>
	<br>
	<br>
	<div class="row">
		<div class="col-md-4"></div>
		<div class="col-md-4 text-center" id="marco">
			<button type="button" align="right" class="btn btn-default"
				data-toggle="modal" data-target="#modal-login">Iniciar
				Sesi�n</button>
			</td>
			<button type="button" align="left" class="btn btn-default"
				data-toggle="modal" data-target="#modal-registro">Registrarste</button>
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
								<input type="text" class="form-control input-lg" id="search"
									placeholder="ejem. Programador Madrid">
							</div>
							<div class="row col-md-3">
								<input type="select" class="form-control input-lg"
									list="provincias">
								<datalist id="provincias">
								<option>Selecciona Provincia</option>
								<option>AQUI IRIAN LAS PROVINCIAS DE LA BD</option>
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
		<br>
		<br>
		<br>
		<br> <br>
		<br>
		<br>
		<br>
		<div class="row" id="boton_fotos">
			<div class="col-md-5"></div>
			<div class="col-md-2">
				<button type="button" align="center" id="btn-quienes"
					class="btn btn-default">Quienes Somos</button>
			</div>
			<div class="col-md-5"></div>
		</div>

		<div id="foto">
			<%
				String[][] creadores = {

						{ "dani1.jpg", "dani2.jpg", "Daniel S�nchez Mart�n ", "Base de datos" },
						{ "david1.jpg", "david2.jpg", "David Jurado Ortega ", "Controladores" },
						{ "jose1.jpg", "jose2.jpg", "Jos� Manuel Cantero Cantero ", "Vistas" },
						{ "angel1.jpg", "angel2.jpg", "�ngel Jes�s Exp�sito Caro ", "Controladores" },

						{ "davi1.jpg", "davi2.jpg", "David Roman Carabantes ", "Vistas" },
						{ "maca1.jpg", "maca2.jpg", "Macarena Casa�as Su�rez ", "Controladores" },
						{ "daniel1.jpg", "daniel2.jpg", "Daniel S�ez Montes ", "Controladores" },
						{ "alfredo1.jpg", "alfredo2.jpg", "Alfredo Fern�ndez Garc�a ", "Base de datos" },

						{ "juanka1.jpg", "juanka2.jpg", "Juan Carlos Medina Mart�nez ", "Vistas" },
						{ "pablo1.jpg", "pablo2.jpg", "Pablo Fari�a ", "Vistas" },
						{ "alvaro1.jpg", "alvaro2.jpg", "Alvaro Jes�s Zapata Jara�z ", "Base de datos" },
						{ "maria1.jpg", "maria2.jpg", "Mar�a Isabel Fern�ndez Felipe", "Base de datos" },

						{ "juancarlos1.jpg", "juancarlos2.jpg", "Juan Carlos Lumbreras D�az", "Base de datos" },
						{ "ruben1.jpg", "ruben2.jpg", "Rub�n Barbosa Toro ", "Base de datos" },
						{ "joel1.jpg", "joel2.jpg", "Joel Jackson Casta�o ", "Controladores" },
						{ "vero1.jpg", "vero2.jpg", "Ver�nica Galv�n Esperilla", "Vistas" },

						{ "mana1.jpg", "mana2.jpg", "Manas�s S�nchez Gonz�lez ", "Controladores" },
						{ "sergio1.jpg", "sergio2.jpg", "Sergio Jes�s Caro Arroyo ", "Vistas" },
						{ "jesus1.jpg", "jesus2.jpg", "Jes�s  ", "Scrum Master" },

				};
			%>
			<div>

				<div class="row" style="text-align: center;">

					<img alt=""
						src="http://www.riter-com.ru/wp-content/uploads/2014/11/business128.svg"
						style="height: 150px;"><br> <br>
				</div>
			</div>

			<h2 style="text-align: center">Nuestro equipo:</h2>
			
			<div class="row">

				<div style="text-align: center" class="col-md-12">
					<%
						for (int i = 0; i < creadores.length; i++) {
					%>
					<div class="col-md-3">
						<img class="main" src="${path}/static/img/<%=creadores[i][0] %>"
							width="250px"> <img class="alternativa"
							src="${path}/static/img/<%=creadores[i][1] %>" width="250px">
						<h5><%=creadores[i][2]%>
						</h5>
						<h5><%=creadores[i][3]%></h5>
					</div>
					<%
						}
					%>
				</div>
			</div>
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
						<h3 class="modal-title">Iniciar Sesi�n</h3>
					</div>
					<div class="modal-body">
						<label for="email">E-mail: </label> <input id="email" name="email"
							class="form-control"> <label for="password">Contrase�a:
						</label> <input id="password" name="password" class="form-control">

						<input id="id" name="id" type="hidden"> <input id="csrf"
							name="_csrf" type="hidden" value="${_csrf.token}">
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
						<button type="button" class="btn btn-danger boton-loginok">Iniciar
							Sesi�n</button>
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
						<h3 class="modal-title">Reg�strate</h3>
					</div>
					<div class="modal-body">
						<h5>�Qu� eres?</h5>
						<div class="row">
							<div align="left" class="col-md-6 text-center">
								<a href='<c:url value="/candidato" />'>
									<button type="button" class="btn btn-default">
										Candidato <span class="glyphicon glyphicon-user"></span>
									</button>
								</a>
							</div>
							<div align="right" class="col-md-6 text-center">
								<button type="button" class="btn btn-default">
									<a href="/src/main/webapp/WEB-INF/Views/resgistroEmpresa.jsp">Empresa
										<span class="glyphicon glyphicon-lock"></span>
									</a>
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



</body>
</html>