
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
<script type="text/javascript" src="<c:url value="/static/js/cv2.js" />"></script>
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



<c:set var="path" value="${pageContext.request.contextPath}"
	scope="request" />

<meta name="_csrf_header" content="${_csrf.headerName}" />
<title>Insert title here</title>


</head>
<body
	style="background-image: url('https://k39.kn3.net/taringa/6/5/2/1/3/1/4/b2kcarolina/503.jpg?8605'); background-size: cover; background-repeat: no-repeat; background-position: center center;">
<body>

	<div class="container">
		<div class="row">
			<div class="col-md-12" style="margin-top: 10px;" align="left">
				<h3>Datos de tu Curriculum</h3>
				<table class="table table-hover" style="margin-top: 20px;"
					align="left">
					<tbody>
						<tr>
							<th>Imagen</th>
							<td>${candidato.imagen}</td>
						</tr>
						<tr>
							<th>Nombre</th>
							<td>${candidato.nmbre}</td>
						</tr>
						<tr>
							<th>Apellidos</th>
							<td>${candidato.apellidos}</td>
						</tr>
						<tr>
							<th>TelÃ©fono</th>
							<td>${candidato.telefono}</td>
						</tr>
					</tbody>
				</table>
			</div>
			<br>
			<div class="col-md-12 text-center">
				<div class="col-md-4 text-center">
					<button class="btn btn-primary" type="submit" data-toggle="modal"
						data-target="#modal-experiencia" href="#modal-experiencia">AÃ±adir
						Experiencia</button>
				</div>
				<div class="col-md-4 text-center">
					<button class="btn btn-primary" type="submit" data-toggle="modal"
						data-target="#modal-formacion" href="#modal-formacion">AÃ±adir
						Formacion</button>
				</div>
				<div class="col-md-4 text-center">
					<div class="col-md-12">
						<button class="btn btn-primary" type="submit" data-toggle="modal"
							data-target="#modal-idioma" href="#modal-idioma">AÃ±adir
							Idioma</button>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- Modales -->
	<div class="container">

		<!-- Modal idioma -->
		<div class="row">
			<div class="modal fade" id="modal-idioma">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							<h4 class="modal-title">AÃ±adir idioma</h4>
						</div>
						<form method="POST" role="form" action="<c:url value=''/>">

							<div class="modal-body">
								<div class="form-group">
									<label for="Nombre">Idioma</label> <input type="text"
										class="form-control" id="idioma" name="idioma"
										placeholder="TÃ­tulo del idioma">
								</div>
								<div class="form-group">
									<label for="autor">Nivel</label> <select name="nivel"
										id="nivel" class="form-control">
										<c:forEach items="${idiomas}" var="idioma">

											<option value="${idioma.id}">${idioma.nivel}</option>

										</c:forEach>

									</select> <input type="hidden" id="_csrf" name="_csrf"
										value="${_csrf.token}">
								</div>
							</div>

							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal">Cerrar</button>
								<button type="submit" class="btn btn-primary">Guardar</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>

		<!-- Modal EXPERIENCIA -->
		<div class="row">
			<div class="modal fade" id="modal-experiencia">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							<h4 class="modal-title text-center">AÃ±adir Experiencia</h4>
						</div>
						<form method="post" role="form"
							action="<c:url value='/experiencia' /> ">
							<div class="modal-body">
								<div class="form-group">
									<label for="">Empresa</label> <input name="Empresa" type="text"
										class="form-control" id="exempresa" placeholder="Empresa">
								</div>
								<div class="form-group">
									<label for="">Puesto</label> <input name="Puesto" type="text"
										class="form-control" id="expuesto" placeholder="Puesto">
								</div>
								<div class="form-group">
									<label for="">Fecha de inicio</label> <input name="Fechainicio"
										type="date" class="form-control" id="exinicio"
										placeholder="00/00/0000">
								</div>
								<div class="form-group">
									<label for="">Fecha de finalizaciÃ³n</label> <input
										name="Fechafinalizacion" type="date" class="form-control"
										id="exfinalizacion" placeholder="00/00/0000">
								</div>
								<div class="form-group">
									<label for="">DescripciÃ³n</label> <input name="Descripcion"
										type="text" class="form-control" id="exdescripcion"
										placeholder="DescripciÃ³n">
								</div>
							</div>
						</form>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Cerrar</button>
							<button type="submit" class="btn btn-primary">AÃ±adir</button>
						</div>

					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="modal fade" id="modal-formacion">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							<h4 class="modal-title text-center">AÃ±adir FormaciÃ³n</h4>
						</div>
						<form method="POST" role="form"
							action="<c:url value='/formacion' />">
							<div class="modal-body">
								<div class="form-group">
									<label for="">Titulo</label> <input name="Titulo" type="titulo"
										class="form-control" id="fortitulo" placeholder="TÃ­tulo">
								</div>
								<div class="form-group">
									<label for="">Especialidad</label> <input name="Especialidad"
										type="especialidad" class="form-control" id="forespecialidad"
										placeholder="Especialidad">
								</div>
								<div class="form-group">
									<label for="">Fecha de inicio</label> <input
										name="Fechainicio1" type="fechainicio" class="form-control"
										id="forinicio" placeholder="00/00/0000">
								</div>
								<div class="form-group">
									<label for="">Fecha de finalizaciÃ³n</label> <input
										name="Fechafinalizacion2" type="text" class="form-control"
										id="forfina" placeholder="00/00/0000">

								</div>
								<div class="form-group">
									<label for="">Centro</label> <input name="Centro" type="text"
										class="form-control" id="forcentro" placeholder="Centro">

								</div>

							</div>
						</form>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Cerrar</button>
							<button type="submit" class="btn btn-primary" id="">AÃ±adir</button>
						</div>
						<input type="hidden" id="_csrf" name="_csrf"
							value="${_csrf.token}">

					</div>
				</div>
			</div>


		</div>


	</div>
	<br>
	<!-- Tablas -->
	<div class="container">
		<!-- Tabla experiencia -->
		<div class="row">
			<div class="col-md-12">
				<table
					class="table table-hover table-condensed table-striped table-bordered">
					<thead colspan="7">
						<th class="text-center" colspan="7" id="toogleExperiencia"><h4>Experiencia</h4></th>
					</thead>
					<tr class="text-center">
						<td style="width: 10%">Fecha de inicio</td>
						<td style="width: 10%">Fecha de finalizaciÃ³n</td>
						<td style="width: 10%">Empresa</td>
						<td style="width: 10%">Puesto</td>
						<td style="width: 10%">DescripciÃ³n</td>
						<td style="width: 10%"><button id="editarexperiencia"
								type="submit" class="editar-experiencia btn btn-success"
								data-toggle="modal" data-target="#modal-experiencia">Editar</button></td>

						<td style="width: 10%"><button
								class="borrar-experiencia btn btn-danger" data-toggle="modal"
								data-target="#modal-experiencia">Borrar</button></td>

					</tr>

					<tbody>
						<c:forEach items="${experiencia}" var="ex">
							<tr data-id="${cv.id}">
								<td id="idexperiencia">${ex.id}</td>
								<td id="fechainicioexperiencia">${ex.fecha_inic}</td>
								<td id="fechafinaexperiencia">${ex.fecha_fin}></td>
								<td id="nombreempresaexperiencia">${ex.nomempresa}</td>
								<td id="puestoexperiencia">${ex.puesto}</td>
								<td id="descripcionexperiencia">${ex.descripcion}</td>
								<td style="width: 10%"><button id="editarexperiencia"
										type="submit" class="btn btn-success" data-toggle="modal"
										data-target="#modal-experiencia">Editar</button></td>

								<td style="width: 10%"><button
										class="borrar-experiencia btn btn-danger" data-toggle="modal"
										data-target="#modal-experiencia">Borrar</button></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
		<!-- Tabal formacion -->
		<div class="row">
			<div class="col-md-12">
				<br>
				<table
					class="table table-hover table-condensed table-striped table-bordered">
					<thead colspan="7">
						<th class="text-center" colspan="7" id="toogleFormacion"><h4>FormaciÃ³n</h4></th>
					</thead>
					<tr class="text-center">
						<td style="width: 10%">Fecha de inicio</td>
						<td style="width: 10%">Fecha de finalizaciÃ³n</td>
						<td style="width: 10%">TÃ­tulo</td>
						<td style="width: 10%">Especialidad</td>
						<td style="width: 10%">Centro</td>
						<td style="width: 10%"><button id="editarformacion"
								type="submit" class="btn btn-success" data-toggle="modal"
								data-target="#modal-formacion">Editar</button></td>

						<td style="width: 10%"><button
								class="borrar-formacion btn btn-danger" data-toggle="modal"
								data-target="#modal-formacion">Borrar</button></td>
					</tr>
				</table>
				<table>
					<tbody>
						<c:forEach items="${formacion}" var="for">
							<tr data-id="${for.id}">
								<td id="idformacion">${for.id}</td>
								<td id="fechainicioformacion">${for.fecha_inic}</td>
								<td id="fechafinaformacion">${for.fecha_fin}></td>
								<td id="tituloformacion">${for.titulo}</td>
								<td id="especializacionformacion">${for.especializacion}</td>
								<td id="centroformacion">${for.centro}</td>
								<td style="width: 10%"><button id="editarformacion"
										type="submit" class="btn btn-warning" data-toggle="modal"
										data-target="#modal-formacion">Editar</button></td>

								<td style="width: 10%"><button
										class="borrar-formacion btn btn-danger" data-toggle="modal"
										data-target="#modal-formacion">Borrar</button></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
		<!-- Tabla idiomas -->
		<div class="row">
			<div class="col-md-12">
				<br>
				<table
					class="table table-hover table-condensed table-striped table-bordered">
					<thead colspan="4">
						<th class="text-center" colspan="4" id="toogleIdioma"><h4>Idiomas</h4></th>
					</thead>
					<tr class="text-center">
						<td style="width: 10%">Idioma</td>
						<td style="width: 10%">Nivel</td>
						<td style="width: 10%"><button id="editaridioma"
								type="submit" class="btn btn-success" data-toggle="modal"
								data-target="#modal-idioma">Editar</button></td>

						<td style="width: 10%"><button
								class="borrar-idioma btn btn-danger" data-toggle="modal"
								data-target="#modal-idioma">Borrar</button></td>
					</tr>

					<tbody>
						<c:forEach items="${idiomas}" var="idi">
							<tr data-id="${idi.id}">
								<td id="ididiomas">${idi.id}</td>
								<td id="idinombre">${idi.nombre}</td>
								<td id="idinivel">${idi.Idioma_CV}></td>


							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
<<<<<<< HEAD
	<div class="col-md-12 text-center">
		<div class="col-md-6 text-center">
			<button class="btn btn-primary" type="submit"">Crear
				Curriculum</button>
		</div>
		<div class="col-md-6 text-center">
			<button class="btn btn-primary" type="submit">Actualizar</button>
=======

<input type="hidden" id="_csrf" name="_csrf" value="${_csrf.token}">

>>>>>>> seguridad
</body>
</html>