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

<link href="<c:url value="/css/ladda-themeless.min.css" />"
	rel="stylesheet">
<!-- Bootstrap core CSS -->

<link href="<c:url value="/css/ladda.min.css" />" rel="stylesheet">



</head>
<body>

	<div id="div1">
<!-- 		<h2>Interfaz De Entrada</h2> -->
	</div>
	<!-- 	<button type="submit" class="ladda-button" data-style="zoom-out" -->
	<!-- 		name="submit"> -->
	<!-- 		<span class="ladda-label">Ejecutar</span> <span class="ladda-spinner"></span> -->
	<!-- 	</button> -->
		<div class="panel panel-default"style="margin-top:20px;">
        	<div class="panel-heading">
            	<i class="glyphicon glyphicon-play"></i> Interfaz de Entrada</div>
            <!-- /.panel-heading -->
             <div class="panel-body">
				<section class="progress-demo">
					<button class="btn btn-danger ladda-button" onclick="eventos()" data-color="blue"
						data-style="expand-right">
						<span class="ladda-label">Ejecutar</span> <span class="ladda-spinner"></span>
						<div class="ladda-progress" style="width: 113px;"></div>
					</button>
				</section>
             </div>
             <!-- /.panel-body -->
		</div>	

		<div class="panel panel-default"style="margin-top:20px;">
        	<div class="panel-heading">
            	<i class="fa fa-bar-chart-o fa-fw"></i> Eventos</div>
            <!-- /.panel-heading -->
             <div class="panel-body">	
				
					<div class="row"style="margin-left:0.1px;">
					
						<div class="table-responsive" style="overflow: auto; height: 370px; width: 980px;">
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
						</div>
					</div>
             </div>
             <!-- /.panel-body -->
		</div>	
		
	<script src="${baseURL}/js/spin.min.js"></script>
	<script src="${baseURL}/js/ladda.min.js"></script>
<%-- 	<script src="${baseURL}/js/bootbox.min.js"></script> --%>


	<script src="${baseURL}/js/ladda.jquery.min.js"></script>
<%-- 	<script src="${baseURL}/js/buttonprogress.js"></script> --%>
	
	<script type="text/javascript">
	function getEventos(){
		$.post("${baseURL}/rest/mwr40/interfazDeEntrada/geteventos",function()
		{
		        $('#divIEeventos').load("${baseURL}/IEeventos.jsp");
		});
		
	};

	var timer;
	var g_isEnEjecucion;


	
	function eventos(){
		g_isEnEjecucion='true';
		$.post("${baseURL}/rest/mwr40/interfazDeEntrada/ejecutar",function(){
			g_isEnEjecucion='false';
		});
		
	      timer = setInterval(function() {
				$.post("${baseURL}/rest/mwr40/interfazDeEntrada/isenejecucion",function(isEnEjecucion)
						{
//  							var isEnEjecucion = "${isEnEjecucion}";
// 							alert("jS>" + isEnEjecucion + "< - Controller:" + "${isEnEjecucion}" );
// 							g_isEnEjecucion=isEnEjecucion;
							if (isEnEjecucion=='true'&& g_isEnEjecucion== 'true') {
							    getEventos();
							}else{
//  								alert("Interfaz completada con exito.");
								g_isEnEjecucion = isEnEjecucion;
								bootbox.alert("Interfaz completada con exito.");
								clearInterval(timer);
							}
						});
      },2000);

	};	

	Ladda.bind( '.progress-demo button', {
		callback: function( instance ) {
			var progress = 0;
			var interval = setInterval( function() {
				progress = Math.min( progress + Math.random() * 0.1, 1 );
				instance.setProgress( progress );

				if( progress === 1 ) {
					progress = 0;
				}
				if(g_isEnEjecucion=='false'){
					instance.setProgress( 1);
					instance.stop();
					clearInterval( interval );					
				}
			}, 200 );
		}
	} );
	Ladda.bind( '.button-demo button', { timeout: 2000 } );

	</script>
</body>
</html>