<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<script type="text/javascript"
	src="<c:url value="/static/js/miscript.js" />"></script>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>

<link href="<c:url value="/static/css/style.css" />" rel="stylesheet">

<c:set var="path" value="${pageContext.request.contextPath}"
	scope="request" />

<!--  <meta name="_csrf_header" content="${_csrf.headerName}" />-->

<title>Detalle de la Oferta</title>
</head>

<body
	style="background-image: url('https://k39.kn3.net/taringa/6/5/2/1/3/1/4/b2kcarolina/503.jpg?8605'); background-size: cover; background-repeat: no-repeat; background-position: center center;">

	<!-- Barra de Menú -->

	<nav class="navbar navbar-default">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">JustJob</a>
			</div>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#">Home</a></li>
				<li><a href="/empresa/detalle/${oferta. empresa.id}">Empresa</a></li>
				<li><a href="/candidato/${candidato. id}">Candidato</a></li>
				<li><a href="#">Ofertas</a></li>
			</ul>
		</div>
	</nav>


	<div class="container text-center">

		<!-- Barra de Menú -->

		<nav class="navbar navbar-default">
			<div class="container">
				<div class="navbar-header">
					<a class="navbar-brand" href="#">JustJob</a>
				</div>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#">Home</a></li>
					<li><a href="/empresa/detalle/${oferta. empresa.id}">Empresa</a></li>
					<li><a href="/candidato/${candidato. id}">Candidato</a></li>
					<li><a href="#">Ofertas</a></li>
				</ul>
			</div>
		</nav>

		<!-- Datos de la oferta -->

		<div class="container text-center">

			<div class="row" style="margin-top: 50px">
				<h3>DETALLE DE LA OFERTA</h3>

			</div>
			<div class="row text-center" style="margin-top: 100px">
				<div class="col-md-12">
					<h3>Título de la oferta</h3>
					<p id="d-oferttit">$-{oferta.titulo}</p>
				</div>
			</div>

			<div class="row text-center" style="margin-top: 30px">
				<div class="col-md-12">
					<h3>Tipo de la oferta</h3>
					<p id="d-oferttip">$-{oferta.tipo}</p>
				</div>
			</div>

			<div class="row text-center" style="margin-top: 30px">
				<div class="col-md-12">
					<h3>Descripción de la oferta</h3>
					<p id="d-ofertdescrip">$-{oferta. descripcion}</p>
				</div>
			</div>

			<div class="row text-center" style="margin-top: 30px">
				<div class="col-md-12">
					<h3>Localidad de la oferta</h3>
					<p id="d-ofertloc">$-{oferta.localidad}</p>
				</div>
			</div>

			<div class="row text-center" style="margin-top: 30px">
				<div class="col-md-12">
					<h3>Fecha de inicio de la oferta</h3>
					<p id="d-ofertdate">$-{oferta. fecha}</p>
				</div>
			</div>

			<div class="row text-center" style="margin-top: 30px">
				<div class="col-md-12">
					<h3>Requisitos del candidato</h3>
					<p id="d-ofertrequ">$-{oferta. requesitoscandidato}</p>
				</div>
			</div>

			<div class="row text-center" style="margin-top: 30px">
				<div class="col-md-12">
					<h3>Sector Laboral</h3>
					<p id="d-sectlaboral">$-{oferta. sectorlaboral}</p>
				</div>
			</div>

			<div class="row text-center" style="margin-top: 30px">
				<div class="col-md-12">
					<h3>Categoría de la oferta</h3>
					<p id="d-ofertcateg">$-{oferta. categoriaoferta}</p>
				</div>
			</div>

			<div class="row text-center" style="margin-top: 30px">
				<div class="col-md-12">
					<h3>Número de vacantes</h3>
					<p id="d-ofertnumvac">$-{oferta. numvacantes}</p>
				</div>
			</div>

			<div class="row text-center" style="margin-top: 30px">
				<div class="col-md-12">
					<h3>Salario mínimo</h3>
					<p id="d-ofertsalarmin">$-{oferta. salariomin}</p>
				</div>
			</div>

			<div class="row text-center" style="margin-top: 30px">
				<div class="col-md-12">
					<h3>Salario máximo</h3>
					<p id="d-ofertsalarmax">$-{oferta. salariomax}</p>
				</div>
			</div>
		</div>



		<div class="row text-center" style="margin-top: 50px">
			<div class="col-md-12">

				<button class="btn btn-warning" type="submit" role="empresa"
					id="edit-data-ofert" data-toggle="modal"
					data-target="#editar-oferta">Editar</button>

				<button class="btn btn-default" type="submit" role="empresa"
					id="cerrar-oferta">Cerrar</button>

				<button class="btn btn-default" href=""
					id="candidatos-inscritos-oferta" role="empresa">Candidatos
					inscritos</button>

				<button class="btn btn-default" href="" role="candidato"
					id="candidatos-inscritos-oferta">Inscribirse</button>
			</div>
		</div>


		<!-- Modal del botón editar-oferta -->

		<div class="modal fade" id="editar-oferta">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-oferta text-center">Editar Oferta</h4>
					</div>


					<div class="modal-body">
						<form method="post" action="<c:url value="***"/>" role="form">
							<input type="hidden" id="_csrf" name="_csrf"
								value="${_csrf.token}"> <input type="hidden"
								value="OFERTA.ID" id="didoferta">

							<div class="row">
								<div class="col-md-12 text-center form-group">
									<input type="text" class="form-control" id="mtitulo-oferta"
										name="titofert" placeholder="Título de oferta">
								</div>
							</div>


							<div class="row">
								<div class="col-md-12 text-center form-group">
									<input type="text" class="form-control" id="mtipo-oferta"
										name="tipofert" placeholder="Tipo de oferta">
								</div>
							</div>

							<div class="row">
								<div class="col-md-12 text-center form-group">
									<textarea rows="4" cols="50" id="mdescripcion-oferta"
										name="descripofert" class="form-control"
										style="text-align: center" placeholder="Descripción-oferta">esto es la descripción de la oferta</textarea>
								</div>
							</div>

							<div class="row">
								<div class="col-md-12 text-center form-group">
									<input type="text" class="form-control" id="mlocalidad"
										name="localidadoferta" placeholder="Localidad">
								</div>
							</div>


							<div class="row">
								<div class="col-md-12 text-center form-group">
									<input type="datetime-local" class="form-control"
										name="bdaytime" id="mfecha-oferta" placeholder="Fecha-oferta">
								</div>
							</div>

							<div class="row">
								<div class="col-md-12 text-center form-group">
									<input type="text" name="requisitosofert" class="form-control"
										id="mrequisitos-candidato"
										placeholder="requisitos del candidato">
								</div>
							</div>

							<div class="row">
								<div class="col-md-12 text-center form-group">
									<input type="text" name="sectorlabofert" class="form-control"
										id="msector-laboral-oferta" placeholder="Sector Laboral">
								</div>
							</div>

							<div class="row">
								<div class="col-md-12 text-center form-group">
									<input type="text" name="categofert" class="form-control"
										id="mcategoria-oferta" placeholder="Categoría oferta">
								</div>
							</div>

							<div class="row">
								<div class="col-md-12 text-center form-group">
									<input type="text" name="numvacantes" class="form-control"
										id="mnumero-vacantes" placeholder="Numero de vacantes">
								</div>
							</div>


							<div class="row">
								<div class="col-md-12 text-center form-group">
									<input type="text" name="salariomin" class="form-control"
										id="msalario-minimo" placeholder="Salario mínimo">
								</div>
							</div>

							<div class="row">
								<div class="col-md-12 text-center form-group">
									<input type="text" name="salariomax" class="form-control"
										id="msalario-maximo" placeholder="Salario máximo">
								</div>
							</div>
						</form>
					</div>



					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
						<button id="guardar-cambios-oferta" class="btn btn-primary">Guardar</button>
					</div>
				</div>



			</div>
		</div>
	</div>
</body>
</html>