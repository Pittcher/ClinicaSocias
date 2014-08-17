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

<title>Clinica Socias @copyright PalmaBoy</title>

<link href="<c:url value="/css/bootstrap.css" />" rel="stylesheet">
<link href="<c:url value="/css/login.css" />" rel="stylesheet">

</head>

<body>
	<!-- 	<!-- 	<h1>Modulo de Server de IntelliRoute Admin</h1> -->

	<div id="fullscreen_bg" class="fullscreen_bg" />
	<c:set var="baseURL"
		value="${fn:replace(pageContext.request.requestURL, pageContext.request.requestURI, pageContext.request.contextPath)}" />


	<div id=login class="container">
		<div class="row">
			<div class="col-sm-6 col-md-4 col-md-offset-4">
				<div class="account-wall">
					<img class="profile-img" src="${baseURL}/img/logo.png?sz=120"
						alt="">
					<%-- 						<h1>Welcome message : <c:out value="${baseURL}"></c:out></h1> --%>
					<form class="form-signin"
						action="${baseURL}/rest/seguridad/usuario/loguear" method="post">
						<input type="text" name="user" class="form-control"
							placeholder="Usuario" required autofocus> <input
							type="password" name="password" class="form-control"
							placeholder="Password" required>
						<button class="btn btn-lg btn-primary btn-block" type="submit">
							Entrar</button>
						<label class="checkbox pull-left"> <input type="checkbox"
							value="remember-me"> Recordar Usuario
						</label> <a href="#" class="pull-right need-help">Ayuda? </a><span
							class="clearfix"></span> <a>${mensajeLogin} </a>
					</form>
				</div>
			</div>
		</div>
	</div>


</body>
<!-- ESTO LO DEJE ACA PARA QUE APARESCA CON MAS ONDA EL LOGIN -->
<script type="text/javascript">
	$(window).bind("load", function() {
		alert("hola:D");
	});
</script>

</html>
