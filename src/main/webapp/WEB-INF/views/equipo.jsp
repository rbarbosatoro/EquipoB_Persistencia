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
<title>Insert title here</title>
<c:set var="path" value="${pageContext.request.contextPath}"
    scope="request" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript" src='<c:url value="/static/js/imagen.js"></c:url>'></script>
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
<title>Insert title here</title>
</head>

<body style="background-image: url('https://k39.kn3.net/taringa/6/5/2/1/3/1/4/b2kcarolina/503.jpg?8605'); background-size:cover; background-repeat: no-repeat;
    background-position: center center; ">
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
            { "1.jpg", "2.jpg", "Pablo Fariña ", "Vistas"},
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


<div class="row"style="text-align: center;	">
			 
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
    
   
        <footer>
        <div class="row">
            <div class="col-md-12">
            <h5 style="text-align: center"> Aviso de Copyright</h5>
            <h5 style="text-align: center">Copyright © [Año de primera publicación-Año actual, pj: "2010-2013"] [nombre, ej: "Diseños Web Ltd"] </h5>
            </div>
        </div>
        </div>    
        </footer>
</html>