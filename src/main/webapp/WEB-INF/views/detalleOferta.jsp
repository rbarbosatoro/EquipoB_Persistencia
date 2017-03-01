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

<meta name="_csrf_header" content="${_csrf.headerName}" />
<title>Detalle de la Oferta</title>
</head>
<body>

	<div class="container">
		<div class="row text-center" style="margin-top: 50px">
			<h3>DETALLE DE LA OFERTA</h3>
			<div class="col-md-12 text-center" style="margin-top: 100px">
				<p id="oferttit">$-{oferta.titulo}</p>
				<p id="oferttip">$-{oferta.tipo}</p>
				<p id="ofertdescrip">$-{oferta.descripcion}</p>
				<p id="ofertloc">$-{oferta.localidad}</p>
				<p id="ofertdate">$-{oferta.fecha}</p>
				<p id="ofertrequ">$-{oferta.requesitoscandidato}</p>
				<p id="ofertcateg">$-{oferta.categoriaoferta}</p>
				<p id="ofertnumvac">$-{oferta.numvacantes}</p>
				<p id="ofertsalarmin">$-{oferta.salariomin}</p>
				<p id="ofertsalarmax">$-{oferta.salariomax}</p>
			</div>
		</div>
		
		<div class="col-md-12 text-center">
		<button class="btn btn-warning" type="submit" id="editar-datos-oferta">Editar</button>
		<button class="btn btn-default" type="submit" id="cerrar-oferta">Cerrar</button>
		<button class="btn btn-default" type="submit" id="candidatos-inscritos-oferta">Candidatos inscritos</button>
		</div>


	</div>



<input type="hidden" id="_csrf" name="_csrf" value="${_csrf.token}">


</body>
</html>