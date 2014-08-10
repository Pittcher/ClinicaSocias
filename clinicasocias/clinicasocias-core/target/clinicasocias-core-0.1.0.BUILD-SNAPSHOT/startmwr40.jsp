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
<link href="<c:url value="/css/plugins/morris.css" />" rel="stylesheet">

</head>

<body>
	<!-- 	<!-- 	<h1>Modulo de Server de IntelliRoute Admin</h1> -->

<!-- 	<div id="fullscreen_bg" class="fullscreen_bg" /> -->
	<c:set var="baseURL"
		value="${fn:replace(pageContext.request.requestURL, pageContext.request.requestURI, pageContext.request.contextPath)}" />

			<div id="startdash" class="col-lg-6" style="margin-top:20px;">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Novedades
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="alert alert-success alert-dismissable">
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                                Ha finalizado correctamente la ultima interfaz de Entrada. <a href="#" class="alert-link">Interfaz de Entrada</a>.
                            </div>
                            <div class="alert alert-info alert-dismissable">
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                                Se han sincronizado 526 hasta el momento. <a href="#" onClick="donutData()" class="alert-link">Interfaz de Salida</a>.
                            </div>
                            <div class="alert alert-warning alert-dismissable">
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                                Se han producido errores NO criticos en la Interfaz de Entrada. <a href="#" class="alert-link">Errores No Criticos</a>.
                            </div>
                            <div class="alert alert-danger alert-dismissable">
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                                Se han producido errores criticos en la Interfaz de Entrada. <a href="#" class="alert-link">ERRORES CRITICOS</a>.
                            </div>
                        </div>
                        <!-- .panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                    <div id="donut" class="col-lg-4" style="margin-top:20px;display:none;"> <!--visibility: hidden-->
						<div class="panel panel-default">
	                        <div class="panel-heading">
	                            <i class="fa fa-bar-chart-o fa-fw"></i> Estado de las Rutas
	                        </div>
                        <div class="panel-body">
                            <div id="morris-donut-chart"></div>
                        </div>
	                    </div>
                    </div>
              
<script type="text/javascript">
var g_isDonutVisible='false';

function donutData(){
// 	alert("test1");
// 	$('#donut').fadeOut('slow');
// 	document.getElementById('donut').style.visibility='visible';
	$('#donut').fadeIn('slow');
	if(g_isDonutVisible=='false'){
		$(function() {
		    Morris.Donut({
		        element: 'morris-donut-chart',
		        data: [{
		            label: "Sincronizadas",
		            value: 12
		        }, {
		            label: "Fin de Dia",
		            value: 30
		        }, {
		            label: "Con Ventas",
		            value: 20
		        }]
		    });
		    g_isDonutVisible='true';
		});
	}
}

	
</script>                    
</body>
</html>