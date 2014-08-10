<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon" href="../../docs-assets/ico/favicon.png">

<title>Clinica Socias @copyright PalmaBoy</title>
<link href="<c:url value="/css/ladda-themeless.min.css" />" rel="stylesheet">
<!-- Bootstrap core CSS -->
<%-- <link href="<c:url value="/css/bootstrap.css" />" rel="stylesheet"> --%>
<link href="<c:url value="/css/ladda.min.css" />" rel="stylesheet">

<link href="<c:url value="/css/bootstrap.min.css" />" rel="stylesheet">
<%-- <link href="<c:url value="/css/font-awesome.min.css" />" rel="stylesheet"> --%>
<link href="<c:url value="/css/font-awesome.css" />" rel="stylesheet">
<link href="<c:url value="/css/plugins/morris.css" />" rel="stylesheet">
<link href="<c:url value="/css/bootstrap-datetimepicker.min.css" />" rel="stylesheet">
<link href="<c:url value="/css/plugins/jquery.dataTables.min.css" />" rel="stylesheet">
</head>

<body style="height:100%;">

<div>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
					<c:set var="baseURL" value="${fn:replace(pageContext.request.requestURL, pageContext.request.requestURI, pageContext.request.contextPath)}" />
					<div id="barranav"> </div>
<%--         <c:choose> --%>
<%--             <c:when test="${usuarioLogueado!=null}"> --%>
<%--                 <c:set var="approach" value="left" scope="page"></c:set> --%>
<!-- 			<div class="navbar navbar-inverse navbar-fixed-top" role="navigation"> -->
<!-- 			  <div class="navbar-header"> -->
<!-- 				<button type="button" class="navbar-toggle" data-toggle="collapse" > -->
<!-- 				  <span class="sr-only">Toggle navigation</span> -->
<!-- 				  <span class="icon-bar"></span> -->
<!-- 				  <span class="icon-bar"></span> -->
<!-- 				  <span class="icon-bar"></span> -->
<!-- 				</button> -->
<!-- 				<a class="navbar-brand" href="#">HS MW-Admin R40</a> -->
<!-- 			  </div> -->

<!-- 			  <div class="collapse navbar-collapse" > -->

<!-- 				<ul class="nav navbar-nav pull-right"> -->
<!-- 									<li><a href="#" onclick="seguridadToolBar()" ><i class="glyphicon glyphicon-user icon-white"></i> Seguridad</a></li> -->
<!-- 									<li><a href="#" onclick="mwr40ToolBar()" ><i class="glyphicon glyphicon-wrench icon-white"></i> MW-R40</a></li> -->
<!-- 					<li class="dropdown btn"> -->
<!-- 					<button class="btn btn-default dropdown-toggle glyphicon glyphicon-user" data-toggle="dropdown" href="#"> -->
<!-- <!-- 						<i class="icon-user"> </i> --> 
<%-- 						<strong><c:out value="${usuarioLogueado.userName}"/></strong> --%>
<!-- 						<span class="caret"></span> -->
<!-- 					</button> -->
<!-- 					<ul class="dropdown-menu"> -->
<!-- 						<li><a href="#"><i class="icon-wrench"></i> Editar Perfil</a></li> -->
<!-- 						<li class="divider"></li> -->
<%-- 						<li><a href="${baseURL}"  --%>
<%-- <%-- 						<c:set var="usuarioLogueado" scope="session" value="${null}"/>   --%> 
<!-- 						> <i class="icon-share"></i> Desconetarse</a></li> -->
<!-- 					</ul> -->
<!-- 					</li> -->
					
<!-- 				</ul> -->
				
				
<!-- 			  </div> -->
<!-- 			</div> -->
</div>	



						<table class="table" id="table" style="margin-top:40px; height:100%;">
<!-- 							<thead> -->
<!-- 								<tr> -->
<!-- 									<th>Producto</th> -->
<!-- 									<th>Cantidad</th> -->
<!-- 									<th class="text-center">Precio</th> -->
<!-- 									<th class="text-center">Total</th> -->
<!-- 									<th> </th> -->
<!-- 								</tr> -->
<!-- 							</thead> -->
							<tbody>
							<tr>
								<td class="col-md-1">
									<div id="toolbar"  >
<!-- 											<div class="sidebar-nav" > -->
<!-- 									            <div class="well" style="width:200px; padding: 8px 0; height:600px;"> -->
<!-- 									        		<ul class="nav nav-list">  -->
<!-- 									        		  <li class="nav-header">Menu de Herramientas</li>         -->
<!-- 									        		  <li class="active"><a href="agregar"><i class="glyphicon glyphicon-plus"></i>Reporte de Pedidos</a></li> -->
<!-- 									        		  <li><a href="abm"><i class="glyphicon glyphicon-pencil"></i> Reporte de Productos Vendidos</a></li> -->
<!-- 									                  <li><a href="abm"><i class="glyphicon glyphicon-trash"></i> Interfaz de Entrada</a></li> -->
<!-- 									        		</ul> -->
<!-- 									        	</div> -->
<!-- 									        </div> -->
<!-- COMENTO ESTE IMPORT PORQUE AHORA LO ANIMO -->
<%-- 										<c:import url="${baseURL}/toolbarmwr40.jsp" /> --%>
									</div>

				</td>    

								<td class="col-md-10">
								
<!-- 										<div class="col-sm-10 col-md-10 col-md-offset-1"  style="margin-top:40px;" > -->
										<div id="div1" style="height: 400px; width: 1000px;" ><h2> </h2> </div>

									
									
								</td>							
							</tr>
							</tbody>
						</table>

<!-- <button>Get External Content</button> -->
<!-- <div>		 -->
<!-- 	<footer> -->
<!-- 		<p>	HS MW-Admin R40 &copy;opyright Hasar Sistemas S.R.L</p> -->
<!-- 	</footer> -->
<!-- </div> -->
<div id="footer" class="navbar-inverse pull-right"style="margin: 0;width:100%">
      <div class="container footer">
        <p class="text-muted">HS MW-Admin R40 &copy;opyright Hasar Sistemas S.R.L.</p>
      </div>
</div>

<script src="${baseURL}/js/spin.min.js"></script>
<script src="${baseURL}/js/ladda.min.js"></script>
	
	
<%-- <script src="${baseURL}/js/jquery-1.10.2.js"></script> --%>
<script src="${baseURL}/js/jquery.min.js"></script>
<%-- <script src="${baseURL}/js/bootstrap.js"></script> --%>
<script src="${baseURL}/js/bootstrap.min.js"></script>

	
	<script src="${baseURL}/js/ladda.jquery.min.js"></script>
	
	<script src="${baseURL}/js/buttonprogress.js"></script>  

	<script src="${baseURL}/js/jquery.metisMenu.js"></script>
	<script src="${baseURL}/js/sb-admin.js"></script>
	<script src="${baseURL}/js/bootbox.min.js"></script>        

    <script src="${baseURL}/js/plugins/raphael-min.js"></script>
    <script src="${baseURL}/js/plugins/morris.min.js"></script>
    <script src="${baseURL}/js/moment.min.js"></script>
    <script src="${baseURL}/js/bootstrap-datetimepicker.min.js"></script>
    <script src="${baseURL}/js/plugins/jquery.dataTables.min.js"></script>   
    
<script>
// $(document).ready(function(){
//   $("button").click(function(){
//     $("#div1").load("${baseURL}/test.txt",function(responseTxt,statusTxt,xhr){
//       if(statusTxt=="success")
//         alert("External content loaded successfully!");
//       if(statusTxt=="error")
//         alert("Error: "+xhr.status+": "+xhr.statusText);
//     });
//   });
// });
function reportePedidos(){
// 	$workspace = "reporteOrdenes.jsp";
	myFunction("reporteOrdenes.jsp");
}

function reporteProductos(){
	myFunction("reporteProductos.jsp");	
}

function interfazEntrada(){
	myFunction("interfazEntrada.jsp");	
}

function adminUsuario(){
	myFunction("adminUsuario.jsp");	
}
function adminRol(){
	myFunction("adminRol.jsp");	
}
function startR40(){
	myFunction("startmain.jsp");	
}

function myFunction(site)
{
//     $("#div1").load("${baseURL}/"+ site,function(responseTxt,statusTxt,xhr){
//         if(statusTxt=="success")
//           log("External content loaded successfully!");
//         if(statusTxt=="error")
//           log("Error: "+xhr.status+": "+xhr.statusText);
//       });
    
    $('#div1').fadeOut('slow', function(){
        $('#div1').load("${baseURL}/"+ site, function(){
            $('#div1').fadeIn('slow');
        });
    });
}

function seguridadToolBar()
{
//     $("#toolbar").load("${baseURL}/toolbarseg.jsp",function(responseTxt,statusTxt,xhr){
//         if(statusTxt=="success")
//           log("External content loaded successfully!");
//         if(statusTxt=="error")
//           log("Error: "+xhr.status+": "+xhr.statusText);
//       });
    $('#toolbar').fadeOut('slow', function(){
        $('#toolbar').load("${baseURL}/toolbarseg.jsp", function(){
            $('#toolbar').fadeIn('slow');
        });
    });
}


function mwr40ToolBar()
{
//     $("#toolbar").load("${baseURL}/toolbarmwr40.jsp",function(responseTxt,statusTxt,xhr){
//         if(statusTxt=="success")
//           log("External content loaded successfully!");
//         if(statusTxt=="error")
//           log("Error: "+xhr.status+": "+xhr.statusText);
//       });
    $('#toolbar').fadeOut('slow', function(){
        $('#toolbar').load("${baseURL}/toolbarmwr40.jsp", function(){
            $('#toolbar').fadeIn('slow');
        });
    });
}


$(window).bind("load", function() {
// 	mwr40ToolBar();
    $('#barranav').fadeOut('slow', function(){
        $('#barranav').load("${baseURL}/barranav.jsp", function(){
            $('#barranav').fadeIn('slow');
    	});
    
	});  
    
    $('#toolbar').fadeOut('slow', function(){
        $('#toolbar').load("${baseURL}/toolbarmwr40.jsp", function(){
            $('#toolbar').animate({
      	      height:'toggle'
//       	      ,duration:'900'
    	    },2000);
    	});
    
	});
    
//     myFunction("startmwr40.jsp");
    $('#div1').fadeOut('slow', function(){
        $('#div1').load("${baseURL}/startmain.jsp", function(){
            $('#div1').animate({
      	      height:'toggle'
//       	      ,duration:'900'
    	    },2000);
    	});
    
	});
 
});
</script>	



</body>
</html>