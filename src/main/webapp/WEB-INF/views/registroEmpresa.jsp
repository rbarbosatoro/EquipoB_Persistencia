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
<script src="${path}/static/js/jugador.js"></script>

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
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registro Empresa</title>
<meta name="_csrf_header" content="${_csrf.headerName}" />
</head>
<body
	style="background: url(' https://k39.kn3.net/taringa/6/5/2/1/3/1/4/b2kcarolina/503.jpg?8605'); background-size: cover; background-repeat: no-repeat; background-position: center center;">


	<div style="text-align: center;">

		<input type="button" value="ofertas" name="ofertas"
			class="btn btn-default btn-lg"
			onclick="self.location.href = '/csd/federacion'" /> <input
			type="button" value="candidatos" name=""
			class="btn btn-default btn-lg"
			onclick="self.location.href = '/csd/equipos'" />

	</div>


	<form action="EmpresaControlador" method="post">
		<div class="row">
			<div class="col-md-4  "></div>
			<div class="col-md-4" style="text-align: center">
				<div class="row">
					<div class="form-group has-feedback has-feedback-rigt">
						<br> <br> <img alt=""
							src="http://scientiaricerca.com/images/Editor-icon.png"
							style="height: 150px;"><br> <br>
					</div>
				</div>
				<div class="row">
					<div class="form-group has-feedback has-feedback-left">
						<label for="code">nombre</label> <input type="text"
							placeholder="nombre" id="nombre" class="form-control"> <i
							class="form-control-feedback glyphicon glyphicon-user "></i>
					</div>
				</div>
				<div class="row">
					<div class="form-group has-feedback has-feedback-left">
						<label for="code">direccion </label> <input type="text"
							placeholder="direccion" id="direccion" class="form-control">
						<i class="form-control-feedback glyphicon glyphicon-home"></i>
					</div>
				</div>

				<div class="row">
					<div class="form-group has-feedback has-feedback-left">
						<label for="code">empleados </label> <input type="text"
							placeholder="empleados" id="empleados" class="form-control">
						<i class="form-control-feedback glyphicon glyphicon-lock"></i>
					</div>
				</div>
				<div class="row">
					<div class="form-group has-feedback has-feedback-left">
						<label for="code">logo</label> <input type="text"
							placeholder="logo" id="logo" class="form-control"> <i
							class="form-control-feedback glyphicon glyphicon-camera	"></i>
					</div>
				</div>
				<div class="row">
					<div class="form-group has-feedback has-feedback-left">
						<label for="code">sector</label> <input type="text"
							placeholder="sector" id="sector" class="form-control"> <i
							class="form-control-feedback glyphicon glyphicon-screenshot"></i>
					</div>
				</div>
				<div class="row">
					<div class="form-group has-feedback has-feedback-left">
						<label for="code">descripcion</label> <input type="text"
							placeholder="descripcion" id="descripcion" class="form-control">
						<i class="form-control-feedback glyphicon glyphicon-question-sign"></i>
					</div>
				</div>
				<div class="row">
					<div class="form-group has-feedback has-feedback-left">
						<label for="code">cif</label> <input type="text" placeholder="cif"
							id="cif" class="form-control"> <i
							class="form-control-feedback glyphicon glyphicon-credit-card"></i>
					</div>
				</div>

			</div>
		</div>
		<input type="hidden" id="_csrf" name="_csrf" value="${_csrf.token}">
	</form>

	<div style="text-align: center">
		<button type="button" id="btn-Registrar"
			class="btn btn-default btn-lg active">REGISTRO DE EMPRESA</button>
	</div>
</body>
</html>