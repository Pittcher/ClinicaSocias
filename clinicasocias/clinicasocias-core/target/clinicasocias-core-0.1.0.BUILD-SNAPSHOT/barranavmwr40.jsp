<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1" --%>
<%-- 	pageEncoding="ISO-8859-1"%> --%>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> --%>
<%-- <%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> --%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">

<title>HS MW-Admin R40 @copyright Hasar Sistemas S.R.L</title>

<link href="<c:url value="/css/bootstrap.css" />" rel="stylesheet">
<link href="<c:url value="/css/login.css" />" rel="stylesheet">

</head>

<body>
	<!-- 	<!-- 	<h1>Modulo de Server de IntelliRoute Admin</h1> -->

<!-- 	<div id="fullscreen_bg" class="fullscreen_bg" /> -->
	<c:set var="baseURL"
		value="${fn:replace(pageContext.request.requestURL, pageContext.request.requestURI, pageContext.request.contextPath)}" />


			<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
			  <div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" >
				  <span class="sr-only">Toggle navigation</span>
				  <span class="icon-bar"></span>
				  <span class="icon-bar"></span>
				  <span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#" onclick="startR40()">HS MW-Admin R40</a>
			  </div>

			  <div class="collapse navbar-collapse" >

				<ul class="nav navbar-nav pull-right">
									<li><a href="#" onclick="seguridadToolBar()" ><i class="glyphicon glyphicon-user icon-white"></i> Seguridad</a></li>
									<li><a href="#" onclick="mwr40ToolBar()" ><i class="glyphicon glyphicon-wrench icon-white"></i> MW-R40</a></li>
					<li class="dropdown btn">
					<button class="btn btn-default dropdown-toggle glyphicon glyphicon-user" data-toggle="dropdown" href="#">
<!-- 						<i class="icon-user"> </i> -->
						<strong style="font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;"><c:out value="${usuarioLogueado.userName}"/></strong>
						<span class="caret"></span>
					</button>
					<ul class="dropdown-menu">
						<li><a href="#"><i class="icon-wrench glyphicon glyphicon-pencil"></i> Editar Perfil</a></li>
						<li class="divider"></li>
<%-- 						<li><a href="${baseURL}"  --%>
							<li><a href="#" onclick="desconectarse()" 
<%-- 						<c:set var="usuarioLogueado" scope="session" value="${null}"/>   --%>
						> <i class="icon-share glyphicon glyphicon-off"></i> Desconetarse</a></li>
					</ul>
					</li>
					
				</ul>
				
				
			  </div>
			</div>
<script type="text/javascript">
	function desconectarse(){
		bootbox.confirm("Desea salir de la aplicacion?", function(result) {
			if(result==true){
				window.location.replace("${baseURL}");
			}
		}); 
	}
</script>			
</body>
</html>