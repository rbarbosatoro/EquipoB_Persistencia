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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript"
	src="<c:url value="/static/js/datosperfilcandidato.js" />"></script>
<title>Perfil Candidato</title>

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
</head>
<body style="background-image: url('https://k39.kn3.net/taringa/6/5/2/1/3/1/4/b2kcarolina/503.jpg?8605'); background-size:cover; background-repeat: no-repeat;
    background-position: center center; ">

	<h1>Bienvenido NOMBRE_CANDIDATO</h1>


	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<table id="datoscandidato" class="table table-hover" style="background: white">
					<tbody>
						<tr>
							<td style="text-align: right">Nombre:</td>
							<td id="cnombre" style="text-align: left">NOMBRE_CANDIDATO</td>
						</tr>
						<tr>
							<td style="text-align: right">Apellidos:</td>
							<td id="capellidos" style="text-align: left">APELLIDO_CANDIDATO</td>
						</tr>
						<tr>
							<td style="text-align: right">NIF:</td>
							<td id="cnif" style="text-align: left">NIF_CANDIDATO</td>
						</tr>
						<tr>
							<td style="text-align: right">Fecha Nacimiento:</td>
							<td id="cfechanac"style="text-align: left">FECHANAC_CANDIDATO</td>
						</tr>
						<tr>
							<td style="text-align: right">Dirección:</td>
							<td id="cdireccion" style="text-align: left">DIRECCION_CANDIDATO</td>
						</tr>
						<tr>
							<td style="text-align: right">Teléfono Fijo:</td>
							<td id="cfijo" style="text-align: left">FIJO_CANDIDATO</td>
						</tr>
						<tr>
							<td style="text-align: right">Móvil:</td>
							<td id="cmovil"style="text-align: left">MOVIL_CANDIDATO</td>
						</tr>
						<tr>
							<td style="text-align: right">Móvil Secundario:</td>
							<td id="cmovil2"style="text-align: left">MOVIL2_CANDIDATO</td>
						</tr>
					</tbody>
				</table>
				<div class="row" style="height: 100px;">
					<div class="col-md-12">
						<p></p>
						<a class="btn btn-primary" id="btn-dperfil" data-toggle="modal" href='#modal-candidato'>Editar Datos Perfil</a>
						<p></p>
					</div>
				</div>
			</div>
			<div class="col-md-6 col-md-offset-2">
				<h3>Encuentra el trabajo que buscas</h3>
				<form class="form-inline">
					<div class="form-group">

						<input type="text" class="form-control" id="buscar"
							placeholder="Buscar...">
					</div>
					<div class="form-group">

						<select class="form-control" id="provincias">
							<option>NOMBRE_PROVINCIA_1</option>
							<option>NOMBRE_PROVINCIA_2</option>
							<option>NOMBRE_PROVINCIA_3</option>
						</select>
					</div>
					<button type="submit" class="btn btn-default">BUSCAR</button>

					<p></p>
					<!--  -->
		
	<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
	  <h3>Listado de Cartas:</h3>
	  
		  <div class="panel panel-default" id="idcarta ${carta.id} ">
		    <div class="panel-heading" role="tab" id="headingOne">
		      	<h4 class="panel-title">
		      	<input type="hidden" value="${carta.id}">
		        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
		          TITULO
		        </a>
		        <button type="button" class="btn btn-danger btn-xs pull-right boton-borrar-modal-carta" data-toggle="modal" data-target="#modal-borrar">Borrar</button>	
		        <button type="button" class="btn btn-primary btn-xs btn-editar-carta pull-right" >Editar</button>
				
		      </h4>
		    </div>
		    <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
		      <div class="panel-body">
		        DESCRIPCION
		      </div>
		    </div>
		  </div>
		  <c:forEach items="${cartas}" var="carta"><!-- RECORDATORIO: SUBIR -->
	  </c:forEach>
	  
	</div>
	
	<p></p>
		<a class="btn btn-primary" data-toggle="modal" href='#modal-carta'>Añadir Carta Presentación</a>
	<p></p>
	<!-- Introducimos el listado de CV -->	
	<h3>Listado de CV:</h3>

						<table
							class="table table-hover table-condensed table-striped table-bordered" style="background: white";>
							<thead>
								<tr>
									<td style="width: 10%">#</td>
									<td style="width: 50%">Titulo</td>
									<td style="width: 10%">Editar</td>
									<td style="width: 10%">Borrar</td>
								</tr>
							</thead>
							<tbody>

									<tr data-id="${cv.id}">
										<td>${cv.id}</td>
										<td>${cv.titulo}</td>
										<td><a class="btn btn-primary" href="EDITARCV_CONTROLLER/${cv.id}" >Editar</a></td>
										<td> <button type="button" class="btn btn-danger pull-right boton-borrar-modal-cv" data-toggle="modal" data-target="#modal-borrar-cv">Borrar</button></td>
										
									</tr>
								<c:forEach items="${cv}" var="cv"> <!-- RECORDATORIO: SUBIR -->
								</c:forEach>
							</tbody>
							<tfoot>
								<tr>
									<td colspan="5">Curriculums Registrados: <span
										id="cantidad-cv">${cvs.size()}</span></td>
								</tr>
								
							</tfoot>
						</table>
						<div id="anadircvs">
									<a class="btn btn-primary" data-toggle="modal" href='REGISTRARCV_CONTROLLER'>Añadir CV</a>
						</div>
			</div>
		</div>
		
		
		
		
		


	</div>
	<!-- del container -->




	<!-- Modal de carta -->
	<div class="modal fade" id="modal-carta">
		<div class="modal-dialog">
			<div class="modal-content">
				<form method="POST" action="<c:url value="/cartas" />" role="form">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title">Editar Carta</h4>
					</div>
					<div class="modal-body">
						<legend>Carta</legend>

						<div class="form-group">
							<label for="Titulo">Titulo Carta:</label> <input type="text"
								class="form-control" id="cartatitulo-candidato" name="titulo"
								placeholder="">
							<label>Descripción:</label>
							<textarea type="text" class="form-control" id="descripcioncarta-candidato"
								name="descripcioncarta" placeholder="" rows=10 cols=50></textarea>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<button type="submit" class="btn btn-primary">Guardar</button>
					</div>
					
					<input type="hidden" id="_csrf" name="_csrf" value="${_csrf.token}">
					
				</form>
			</div>
		</div>
	</div>
	<!-- fin Modal de carta -->

<!-- Modal Candidato -->


	<div class="modal fade" id="modal-candidato">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title">Editar candidato</h4>
				</div>
				<div class="modal-body">
					<form method="POST" action="<c:url value="/candidatos" />"
						role="form">
						


						<div class="form-group">
							<label for="Nombre">Nombre</label> <input type="text"
								class="form-control" id="nombre-candidato" name="nombre"
								placeholder="Input field">
						</div>

						<div class="form-group">
							<label for="Apellidos">Apellidos</label> <input type="text"
								class="form-control" id="apellidos-candidato" name="apellidos"
								placeholder="Input field">
						</div>
						<div class="form-group">
							<label for="Nif">NIF</label> <input type="text"
								class="form-control" id="nif-candidato" name="nif"
								placeholder="Input field">
						</div>
						<div class="form-group">
							<label for="FechaNacimiento">Fecha Nacimiento</label> <input
								type="text" class="form-control" id="fechanac-candidato"
								name="fechanacimiento" placeholder="Input field">
						</div>
						<div class="form-group">
							<label for="Direccion">Dirección</label> <input type="text"
								class="form-control" id="direccion-candidato" name="direccion"
								placeholder="Input field">
						</div>
						<div class="form-group">
							<label for="Fijo">Telefono fijo</label> <input type="text"
								class="form-control" id="fijo-candidato" name="fijo"
								placeholder="Input field">
						</div>
						<div class="form-group">
							<label for="Movil">Móvil</label> <input type="text"
								class="form-control" id="movil-candidato" name="movil"
								placeholder="Input field">
						</div>
						<div class="form-group">
							<label for="Movil2">Móvil Secundario</label> <input type="text"
								class="form-control" id="movil2-candidato" name="movil2"
								placeholder="Input field">
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
							<button type="submit" class="btn btn-primary">Guardar</button>
						</div>
						
						<input type="hidden" id="_csrf" name="_csrf" value="${_csrf.token}">
						
					</form>
				</div>
			</div>
		</div>
	</div>


<!-- fin Modal Candidato -->
<!-- Borrar Carta -->
	<div class="modal fade" id="modal-borrar">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title">¿Estas seguro?</h4>
				</div>
				<div class="modal-body">
					¿Estas seguro?¿Quieres Borrarlo? 
					<input type="hidden" id="idmodalcarta" value="">
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">No</button>
					<button type="button" class="btn btn-danger btn-borrar-carta"
						data-dismiss="modal">Si</button>
				</div>
			</div>
		</div>
	</div>
<!-- Borrar CV -->
<div class="modal fade" id="modal-borrar-cv">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title">¿Estas seguro?</h4>
				</div>
				<div class="modal-body">
					¿Estas seguro?¿Quieres Borrarlo? 
					<input type="hidden" id="idmodalcv" value="">
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">No</button>
					<button type="button" class="btn btn-danger btn-borrar-cv"
						data-dismiss="modal">Si</button>
				</div>
			</div>
		</div>
	</div>



</body>
</html>