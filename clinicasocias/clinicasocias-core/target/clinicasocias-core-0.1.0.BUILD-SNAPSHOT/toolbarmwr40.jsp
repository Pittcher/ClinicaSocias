<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<c:set var="baseURL"
	value="${fn:replace(pageContext.request.requestURL, pageContext.request.requestURI, pageContext.request.contextPath)}" />

<!-- Bootstrap core CSS -->
<link href="<c:url value="/css/bootstrap.css" />" rel="stylesheet">


<!-- <link -->
<!-- 	href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.2.2/css/bootstrap-combined.min.css" -->
<!-- 	rel="stylesheet"> -->
<link href="<c:url value="/css/bootstrap.min.css" />" rel="stylesheet">

</head>
<body>
	<div class="navbar-default navbar-static-side" role="navigation">
		<div class="sidebar-collapse" style="width: 200px; padding: 8px 0; height: 600px;">
			<ul class="nav" id="side-menu">
				<li class="alert alert-info" style="font-weight: bold; color: #428bca;border-spacing: 2px;background-color: #E7E7E7">Menu de Herramientas</li>
				<li><a href="#"><i></i>Reportes	<span class="glyphicon glyphicon-list-alt" style="float:right"></span></a>
					<ul class="nav nav-second-level">
						<li><a href="#" onclick="reportePedidos()"><i
								class="glyphicon glyphicon-list-alt"></i> Reporte de Pedidos</a></li>
						<li><a href="#" onclick="reporteProductos()"><i
								class="glyphicon glyphicon-list-alt"></i> Reporte de Productos</a></li>
					</ul></li>
				<li><a href="#" onclick="interfazEntrada()"><i
						class="glyphicon glyphicon-repeat"></i> Interfaz de Entrada</a></li>
			</ul>
		</div>
	</div>
<script src="${baseURL}/js/jquery-1.10.2.js"></script>
<script src="${baseURL}/js/bootstrap.js"></script>
<script src="${baseURL}/js/bootstrap.min.js"></script>
	<script src="${baseURL}/js/jquery.metisMenu.js"></script>
	<script src="${baseURL}/js/sb-admin.js"></script>

</body>
</html>