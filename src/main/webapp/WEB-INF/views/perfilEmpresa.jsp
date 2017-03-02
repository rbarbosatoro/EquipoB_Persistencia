<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">



<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<script type="text/javascript"
	src="<c:url value="/static/js/miscript.js" />"></script>

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

<meta name="_csrf_header" content="${_csrf.headerName}" />

<title>Perfil de empresa</title>


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

	<div class="container">
		<div class="row text-center" style="margin-top: 50px">
			<div class="col-md-6">

				<!--Botón de registro de ofertas  -->

				<div class="row" style="margin-top: 10px" ; align="left">
					<button class="btn btn-success" type="submit" data-toggle="modal"
						data-target="#annadiroferta">Registrar oferta</button>
				</div>

			</div>
			<!-- Datos de la empresa -->

			<div class="col-md-6 text-center">
				<div class="col-md-6 text-center">
					<img src="${empresa.logo}"
						alt="Ha habido un error en cargar su imagen"
						style="width: 200px; height: 150px;">
				</div>
				<div class="col-md-6 text-center">


					<p id="empnomb">$-{empresa.nombre}</p>
					<p id="empdescrip">$-{empresa.descripcion}</p>
					<p id="empsect">$-{empresa.sector}</p>
					<p id="empmunempl">$-{empresa.num_empleados}
					<p>
					<p id="empmail">$-{empresa.email}</p>
					<p id="empdirec">$-{empresa.direccion}</p>


					<p>
						<button class="btn btn-warning" type="submit"
							id="editar-datos-empresa" data-toggle="modal"
							data-target="#editardatosempresa">Editar</button>
					</p>

				</div>
			</div>
		</div>

		<!-- Modal para editar los datos que se muestran de la empresa -->

		<div class="modal fade" id="editardatosempresa">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-datempres text-center">Editar datos</h4>
					</div>

					<form method="POST" action="<c:url value="***"/>">
						<div class="modal-body">

							<input type="hidden" value="EMPRESA.ID" id="iddatosempresa">

							<div class="row">
								<div class="col-md-12 text-center form-group">
									<input type="text" class="form-control" id="nombre-empresa"
										name="nombre" placeholder="Nombre empresa">
								</div>
							</div>

							<div class="row">
								<div class="col-md-12 text-center form-group">
									<input type="text" class="form-control"
										id="descripcion-empresa" name="descripcion"
										placeholder="Descripción empresa">
								</div>
							</div>

							<div class="row">
								<div class="col-md-12 text-center form-group">
									<input type="text" class="form-control" id="sector-empresa"
										name="sector" placeholder="Sector empresa">
								</div>
							</div>

							<div class="row">
								<div class="col-md-12 text-center form-group">
									<input type="text" class="form-control" id="numero-empleados"
										name="num_empleados" placeholder="Número empleados">
								</div>
							</div>

							<div class="row">
								<div class="col-md-12 text-center form-group">
									<input type="text" class="form-control" id="email-empresa"
										name="email" placeholder="Email empresa">
								</div>
							</div>

							<div class="row">
								<div class="col-md-12 text-center form-group">
									<input type="text" class="form-control" id="direccion-empresa"
										name="direccion" placeholder="Dirección empresa">
								</div>
							</div>

						</div>
					</form>

					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
						<button id="guardar-cambios" class="btn btn-primary">Guardar</button>
					</div>
				</div>
			</div>
		</div>

		<!-- Listado de ofertas -->

		<div class="row" style="margin-top: 150px">
			<h3>OFERTAS DISPONIBLES</h3>
			<table class="table">
				<tbody>
					<c:forEach items="variablecontroller" var="oferta">
						<tr data-id="OFERTA_ID">
							<td>$-{oferta.id}</td>
							<td><a href="<c:url value="DETALLE DE OFERTA" />">$-{oferta.titulo}</a></td>
							<td><button class="borrar-oferta btn btn-danger">Borrar</button></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

		</div>

		<!-- modal registro de oferta de empresa -->


		<div class="modal fade" id="annadiroferta">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-oferta text-center">Añadir Oferta</h4>
					</div>

					<form method="POST" action="<c:url value="***"/>" role="form">
						<div class="modal-body">

							<input type="hidden" id="_csrf" name="_csrf"
								value="${_csrf.token}"> <input type="hidden"
								value="OFERTA.ID" id="idoferta">

							<div class="row">
								<div class="col-md-12 text-center form-group">
									<input type="text" class="form-control" id="titulo-oferta"
										name="titofert" placeholder="Título de oferta">
								</div>
							</div>

							<div class="row">
								<div class="col-md-12 text-center form-group">
									<input type="text" class="form-control" id="tipo-oferta"
										name="tipofert" placeholder="Tipo de oferta">
								</div>
							</div>

							<div class="row">
								<div class="col-md-12 text-center form-group">
									<textarea rows="4" cols="50" id="descripcion-oferta"
										name="descripofert" class="form-control"
										style="text-align: center" placeholder="Descripción-oferta">esto es la descripción de la oferta</textarea>
								</div>
							</div>

							<div class="row">
								<div class="col-md-12 text-center form-group">
									<input type="text" class="form-control" id="localidad"
										name="localidadoferta" placeholder="Localidad">
								</div>
							</div>

							<div class="row">
								<div class="col-md-12 text-center form-group">
									<input type="datetime-local" class="form-control"
										name="bdaytime" id="fecha-oferta" placeholder="Fecha-oferta">
								</div>
							</div>

							<div class="row">
								<div class="col-md-12 text-center form-group">
									<input type="text" name="requisitosofert" class="form-control"
										id="requisitos-candidato"
										placeholder="requisitos del candidato">
								</div>
							</div>

							<div class="row">
								<div class="col-md-12 text-center form-group">
									<input type="text" name="sectorlabofert" class="form-control"
										id="sector-laboral-oferta" placeholder="Sector Laboral">
								</div>
							</div>

							<div class="row">
								<div class="col-md-12 text-center form-group">
									<input type="text" name="categofert" class="form-control"
										id="categoria-oferta" placeholder="Categoría oferta">
								</div>
							</div>

							<div class="row">
								<div class="col-md-12 text-center form-group">
									<input type="text" name="numvacantes" class="form-control"
										id="numero-vacantes" placeholder="Numero de vacantes">
								</div>
							</div>


							<div class="row">
								<div class="col-md-12 text-center form-group">
									<input type="text" name="salariomin" class="form-control"
										id="salario-minimo" placeholder="Salario mínimo">
								</div>
							</div>

							<div class="row">
								<div class="col-md-12 text-center form-group">
									<input type="text" name="salariomax" class="form-control"
										id="salario-maximo" placeholder="Salario máximo">
								</div>
							</div>
						</div>

					</form>

					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
						<button type="submit" class="btn btn-primary">Guardar</button>
					</div>
				</div>



			</div>
		</div>
	</div>
</body>
</html>