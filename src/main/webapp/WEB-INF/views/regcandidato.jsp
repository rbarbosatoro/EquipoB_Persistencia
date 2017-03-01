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
<title>Insert title here</title>
<c:set var="path" value="${pageContext.request.contextPath}"
	scope="request" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript"
	src='<c:url value="/static/js/imagen.js"></c:url>'></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
<meta name="_csrf_header" content="${_csrf.headerName}" />
<title>Insert title here</title>
</head>
<body
	style="background-image: url('https://k39.kn3.net/taringa/6/5/2/1/3/1/4/b2kcarolina/503.jpg?8605'); background-size: cover; background-repeat: no-repeat; background-position: center center;">

	<form action="candidato" method="post">
		<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-4">
				<div class="row">
					<div style="text-align: center" class=" form-group col-md-12">
						<img alt=""
							src="http://miserere.pl/sites/all/themes/mizell.cdn.starterkit/user.png"
							width="150px">
					</div>
				</div>
				<div class="row">
					<div class=" form-group has-feedback has-feedback-left">
						<label class="col-md-6 control-label">E-mail</label> <input
							type="email" name="email" class="form-control col-md-10"
							id="email" placeholder="e-mail"> <i
							class="form-control-feedback glyphicon glyphicon-envelope"></i>
					</div>
				</div>
				<br>

				<div class="row">
					<div class="form-group has-feedback has-feedback-left">
						<label class="col-md-6 control-label">Password</label> <input
							type="password" name="password" class="form-control col-md-10"
							id="password" placeholder="password"> <i
							class="form-control-feedback glyphicon glyphicon-lock"></i>
					</div>
				</div>
				<br>
				<div class="row">
					<div class="form-group has-feedback has-feedback-left">
						<label class="col-md-6 control-label">Nombre</label> <input
							type="nombre" name="nombre" class="form-control col-md-10"
							id="nombre" placeholder="nombre"> <i
							class="form-control-feedback glyphicon glyphicon-user"></i>
					</div>
				</div>
				<br>
				<div class="row">
					<div class="form-group has-feedback has-feedback-left">
						<label class="col-md-6 control-label">Apellidos</label> <input
							type="apellidos" name="apellidos" class="form-control col-md-10"
							id="apellidos" placeholder="apellidos"> <i
							class="form-control-feedback glyphicon glyphicon-user"></i>
					</div>
				</div>
				<br>
				<div class="row">
					<div class="form-group has-feedback has-feedback-left">
						<label class="col-md-6 control-label">Fecha de nacimiento</label>
						<input type="fecha_nac" name="fecha_nac"
							class="form-control col-md-10" id="fecha_nac"
							placeholder="fecha nacimiento"> <i
							class="form-control-feedback glyphicon glyphicon-calendar"></i>
					</div>
				</div>
				<br>
				<div class="row">
					<div class="form-group has-feedback has-feedback-left">
						<label class="col-md-6 control-label">Genero</label> <select
							name="genero" class="form-control col-md-10" id="genero"
							placeholder="genero">
							<option>selecciona genero..</option>
							<option>Masculino</option>
							<option>Femenino</option>
						</select> <i class="form-control-feedback fa fa-venus-mars"></i>
					</div>
				</div>
				<br>
				<div class="row">
					<div class="form-group has-feedback has-feedback-left">
						<label class="col-md-6 control-label">Imagen</label> <input
							type="imagen" name="imagen" class="form-control col-md-10"
							id="imagen" placeholder="imagen"> <i
							class="form-control-feedback glyphicon glyphicon-picture"></i>
					</div>
				</div>
				<br>
				<div class="row">
					<div class="form-group has-feedback has-feedback-left">
						<label class="col-md-6 control-label">Nif</label> <input
							type="NIF" name="NIF" class="form-control col-md-10" id="NIF"
							placeholder="NIF"> <i
							class="form-control-feedback glyphicon glyphicon-credit-card"></i>
					</div>
				</div>
				<br>
				<div class="row">
					<div class="form-group has-feedback has-feedback-left">
						<label class="col-md-6 control-label">Movil</label> <input
							type="movil" name="movil" class="form-control col-md-10"
							id="movil" placeholder="Movil"> <i
							class="form-control-feedback glyphicon glyphicon-phone"></i>
					</div>
				</div>
				<br>
				<div class="row">
					<div class="form-group has-feedback has-feedback-left">
						<label class="col-md-6 control-label">Movil 2</label> <input
							type="movil2" name="movil2" class="form-control col-md-10"
							id="movil2" placeholder="Movil 2"> <i
							class="form-control-feedback glyphicon glyphicon-phone"></i>
					</div>
				</div>
				<br>
				<div class="row">
					<div class="form-group has-feedback has-feedback-left">
						<label class="col-md-6 control-label">Fijo</label> <input
							type="fijo" name="fijo" class="form-control col-md-10" id="fijo"
							placeholder="Fijo"> <i
							class="form-control-feedback glyphicon glyphicon-phone-alt"></i>
					</div>
				</div>
				<br>
				<div class="row">
					<div class="form-group has-feedback has-feedback-left">
						<label class="col-md-6 control-label">Direccion</label> <input
							type="direccion" name="direccion" class="form-control col-md-10"
							id="direccion" placeholder="Direccion"> <i
							class="form-control-feedback glyphicon glyphicon-home"></i>
					</div>
				</div>
				<br>
				<div class="row">
					<div class="form-group has-feedback has-feedback-left">
						<label class="col-md-6 control-label">Provincia</label> <input
							type="provincia" name="provincia" class="form-control col-md-10"
							id="provincia" placeholder="Provincia"> <i
							class="form-control-feedback glyphicon glyphicon-globe"></i>
					</div>
				</div>
				<br>

				<div style="text-align: center">
					<button type="button" id="btn-login"
						class="btn btn-primary btn-lg active">REGISTRARSE</button>
				</div>
			</div>
		</div>
		<input type="hidden" id="_csrf" name="_csrf" value="${_csrf.token}">
	</form>
	<br>
	<br>



	<footer>
		<div class="row">
			<div class="col-md-12">
				<h5 style="text-align: center">Aviso de Copyright</h5>

				<h5 style="text-align: center">Copyright © [Año de primera
					publicación-Año actual, pj: "2010-2013"] [nombre, ej: "Diseños Web
					Ltd"]</h5>
			</div>
		</div>
		</div>
	</footer>


</body>
</html>