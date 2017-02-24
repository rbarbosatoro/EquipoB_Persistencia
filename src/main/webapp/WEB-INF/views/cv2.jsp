<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
<body>
<body
	style="background-image: url('https://k39.kn3.net/taringa/6/5/2/1/3/1/4/b2kcarolina/503.jpg?8605'); background-size: cover; background-repeat: no-repeat; background-position: center center;">

	<div class="container">
		<div class="row">
			<div class="col-md-12" style="margin-top: 10px;" align="left">
				<h3>Datos de tu Curriculum</h3>
				<table class="table table-hover" style="margin-top: 50px;"
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
							<th>Teléfono</th>
							<td>${candidato.telefono}</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="col-md-12 text-center">
				<div class="col-md-4 text-center">
					<button class="btn btn-default" type="submit" data-toggle="modal"
						data-target="#modal-experiencia" href="#modal-experiencia">Añadir
						Experiencia</button>
				</div>
				<div class="col-md-4 text-center">
					<button class="btn btn-default" type="submit" data-toggle="modal"
						data-target="#modal-formacion" href="#modal-formacion">Añadir
						Formacion</button>
				</div>
				<div class="col-md-4 text-center">
					<div class="col-md-12">
						<button class="btn btn-default" type="submit" data-toggle="modal"
							data-target="#modal-idioma" href="#modal-idioma">Añadir
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
							<h4 class="modal-title">Añadir idioma</h4>
						</div>
						<form method="POST" role="form" action="<c:url value=''/>">

							<div class="modal-body">
								<div class="form-group">
									<label for="Nombre">Idioma</label> <input type="text"
										class="form-control" id="idioma" name="idioma"
										placeholder="Título del idioma">
								</div>
								<div class="form-group">
									<label for="autor">Nivel</label> <select name="nivel"
										id="nivel" class="form-control">
										<!--<c:forEach items="${idiomas}" var="idioma">

									<option value="${idioma.id}">${idioma.nivel}</option>

								</c:forEach>-->

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
							<h4 class="modal-title text-center">Añadir Experiencia</h4>
						</div>
						<form method="post" role="form" action="<c:url value='/experiencia' /> ">
							<div class="modal-body">
								<div class="form-group">
									<label for="">Empresa</label> <input name="Empresa"
										type="empresa" class="form-control" id="exempresa"
										placeholder="Empresa">
								</div>
								<div class="form-group">
									<label for="">Puesto</label> <input name="Puesto" type="puesto"
										class="form-control" id="expuesto" placeholder="Puesto">
								</div>
								<div class="form-group">
									<label for="">Fecha de inicio</label> <input name="Fechainicio"
										type="date" class="form-control" id="exinicio"
										placeholder="00/00/0000">
								</div>
								<div class="form-group">
									<label for="">Fecha de finalización</label> <input
										name="Fechafinalizacion" type="date" class="form-control"
										id="exfinalizacion" placeholder="00/00/0000">
								</div>
								<div class="form-group">
									<label for="">Descripción</label> <input
										name="Descripcion" type="text" class="form-control"
										id="exdescripcion" placeholder="Descripción">
								</div>
							</div>
						</form>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Cerrar</button>
							<button type="submit" class="btn btn-primary">Añadir</button>
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
							<h4 class="modal-title text-center">Añadir Formación</h4>
						</div>
						<form method="POST" role="form" action="<c:url value='/login' />">
							<div class="modal-body">
								<div class="form-group">
									<label for="">Titulo</label> <input name="Titulo" type="titulo"
										class="form-control" id="" placeholder="Título">
								</div>
								<div class="form-group">
									<label for="">Especialidad</label> <input name="Especialidad"
										type="especialidad" class="form-control" id=""
										placeholder="Especialidad">
								</div>
								<div class="form-group">
									<label for="">Fecha de inicio</label> <input
										name="Fechainicio1" type="fechainicio" class="form-control"
										id="Fechainicio1" placeholder="00/00/0000">
								</div>
								<div class="form-group">
									<label for="">Fecha de finalización</label> <input
										name="Fechafinalizacion2" type="text" class="form-control"
										id="Fechafinalizacion2" placeholder="00/00/0000">

								</div>
								<div class="form-group">
									<label for="">Centro</label> <input name="Centro" type="text"
										class="form-control" id="Centro" placeholder="Centro">

								</div>

							</div>
						</form>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Cerrar</button>
							<button type="submit" class="btn btn-primary" id="">Añadir</button>
						</div>
						<input type="hidden" id="_csrf" name="_csrf"
							value="${_csrf.token}">

					</div>
				</div>
			</div>


		</div>


	</div>
	<!-- Tablas -->
	<div class="container">
		<!-- Tabla experiencia -->
		<div class="row">
			<div class="col-md-12">
				<br>
				<table
					class="table table-hover table-condensed table-striped table-bordered">
					<thead colspan="7">
						<th class="text-center" colspan="7" id="toogleExperiencia"><h4>Experiencia</h4></th>
					</thead>
					<tr class="text-center">
						<td style="width: 10%">Fecha de inicio</td>
						<td style="width: 10%">Fecha de finalización</td>
						<td style="width: 10%">Empresa</td>
						<td style="width: 10%">Puesto</td>
						<td style="width: 10%">Descripción</td>
						
						<td style="width: 10%"><button  id="editarexperiencia" type="submit" class="btn btn-warning" data-toggle="modal" data-target="#modal-experiencia" >Editar</button></td>

						<td style="width: 10%"><button
								class="borrar-oferta btn btn-danger" data-toggle="modal" data-target="#modal-experiencia">Borrar</button></td>
					</tr>
					
				</table>
				<tbody>
			<c:forEach items= "${curriculum}" var="cv">
				<tr data-id="${cv.id}">
					<td>${cv.id}</td>
					<td>${cv.fecha_inic}</td>
					<td>${cv.fecha_fin}></td>
					<td>${cv.nomempresa}</td>
					<td>${cv.puesto}</td>
					<td>${cv.descripcion}</td>
				
				</tr>
			</c:forEach>
		</tbody>
			</div>
		</div>
		<!-- Tabal formacion -->
		<div class="row">
			<div class="col-md-12">
				<br>
				<table
					class="table table-hover table-condensed table-striped table-bordered">
					<thead colspan="7">
						<th class="text-center" colspan="7" id="toogleFormacion"><h4>Formación</h4></th>
					</thead>
					<tr class="text-center">
						<td style="width: 10%">Fecha de inicio</td>
						<td style="width: 10%">Fecha de finalización</td>
						<td style="width: 10%">Título</td>
						<td style="width: 10%">Especialidad</td>
						<td style="width: 10%">Centro</td>
						<td style="width: 10%"><button id="" type="submit" class="btn btn-warning" data-toggle="modal" data-target="#modal-formacion" >Editar</button></td>

						<td style="width: 10%"><button
								class="borrar-oferta btn btn-danger" data-toggle="modal" data-target="#modal-formacion">Borrar</button></td>
					</tr>
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
						<td style="width: 10%"><button type="submit" class="btn btn-warning" data-toggle="modal" data-target="#modal-idioma" >Editar</button></td>

						<td style="width: 10%"><button
								class="borrar-oferta btn btn-danger" data-toggle="modal" data-target="#modal-idioma">Borrar</button></td>
					</tr>
				</table>
			</div>
		</div>
	</div>


</body>
</html>