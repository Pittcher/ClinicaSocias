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

<%-- <link href="<c:url value="/css/ladda-themeless.min.css" />" --%>
<!-- 	rel="stylesheet"> -->
<!-- Bootstrap core CSS -->
<link href="<c:url value="/css/bootstrap.css" />" rel="stylesheet">
<link href="<c:url value="/css/ladda.min.css" />" rel="stylesheet">


</head>
<body>
				<table id="divIEeventos" class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th>Fase</th>
							<th>Estado</th>
							<th>Funcion</th>
							<th>Mensaje</th>
							<th>Fecha</th>
							<th>Hora</th>
						</tr>
					</thead>
					<tbody>

					<c:forEach items="${eventos}" var="interfazdeentradadto">
						<tr>
							<td>${interfazdeentradadto.fase}</td>
							<td>${interfazdeentradadto.tipoEvento}</td>
							<td>${interfazdeentradadto.funcion}</td>
							<td>${interfazdeentradadto.mensaje}</td>
							<td>${interfazdeentradadto.fechaEvento}</td>
							<td>${interfazdeentradadto.horaEvento}</td>
<!-- 							<td><span class="label label-success">Active</span></td> -->
						</tr>					
					</c:forEach>					
					
<!-- 						<tr> -->
<!-- 							<td>eventofase</td> -->
<!-- 							<td>eventotipoEvento</td> -->
<!-- 							<td>eventofuncion</td> -->
<!-- 							<td>eventomensaje</td> -->
<!-- 							<td>eventofechaEvento</td> -->
<!-- 							<td>eventohoraEvento</td> -->
<!-- 						</tr> -->

					</tbody>
				</table>

	<script src="${baseURL}/js/spin.min.js"></script>
	<script src="${baseURL}/js/ladda.min.js"></script>

<!-- 	<script type="text/javascript" -->
<!-- 		src="http://cdnjs.cloudflare.com/ajax/libs/jquery/1.8.3/jquery.min.js"> -->
		
<!-- 	</script> -->

<!-- 	<script type="text/javascript" -->
<!-- 		src="http://code.jquery.com/jquery-1.10.2.min.js"> -->
<!-- 	</script> -->

<!-- 	<script type="text/javascript" -->
<!-- 		src="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.2.2/js/bootstrap.min.js"> -->
		
<!-- 	</script> -->

	<script src="${baseURL}/js/ladda.jquery.min.js"></script>
<%-- 	<script src="${baseURL}/js/buttonprogress.js"></script> --%>
	
	
	
</body>
</html>