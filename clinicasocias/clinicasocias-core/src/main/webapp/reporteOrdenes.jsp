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
<%-- <link href="<c:url value="/css/bootstrap.css" />" rel="stylesheet"> --%>
<%-- <link href="<c:url value="/css/ladda.min.css" />" rel="stylesheet"> --%>
<link href="<c:url value="/css/bootstrap-datetimepicker.min.css" />" rel="stylesheet">
<link href="<c:url value="/css/plugins/jquery.dataTables.min.css" />" rel="stylesheet">

<style>
.table-striped tbody tr:nth-child(odd) td {
  background-color: green;
}

.table-striped tbody tr.highlight td { 
    background-color: red;
}
</style>
</head>
<body>

<!-- 	<div id="div1"><h2> Reporte de Ordenes </h2> -->
<!-- 					<button class="btn btn-danger" onclick="exportarPDF()" data-color="blue" -->
<!-- 						data-style="expand-right"> -->
<!-- 						<span class="ladda-label">Ejecutar</span> -->
<!-- 					</button> -->
<!-- 					<button class="btn btn-danger" onclick="pdf()" data-color="blue" -->
<!-- 						data-style="expand-right"> -->
<!-- 						<span class="ladda-label">PDF</span> -->
<!-- 					</button>		 -->
<!-- 		<div id="target"><h2> JSON </h2></div> -->
		
		<div id="filtros" class="col-lg-8" style="margin-top:20px;"> <!--visibility: hidden-->
			<div class="panel panel-default">
	        	<div class="panel-heading">
	            	<i class="fa fa-bar-chart-o fa-fw"></i> Reporte de Ordenes - Filtros
	                	</div>
				<div class="panel-body">
					<div class="row">
						<div class="col-lg-4">
							<span >Desde </span>
			                <div class='input-group date' id='fechaDesde' data-date-format="DD/MM/YYYY">
			                    <input type='text' class="form-control" />
			                    <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span>
			                    </span>
			                </div>
							<span >Hasta </span>
			                <div class='input-group date' id='fechaHasta' data-date-format="DD/MM/YYYY">
			                    <input type='text' class="form-control" />
			                    <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span>
			                    </span>
			                </div>
			             </div>
			             <div class="col-lg-4">
<!-- 		                	<div class="table-responsive" style="margin-top:20px;"> -->
								<table id="table_id" class="display table table-striped table-bordered table-hover" cellspacing="0" width="100%" >
								    <thead>
								        <tr>
								            <th class="sorting_desc">Ruta</th>
								        </tr>
								    </thead>
<!-- 								    <tbody id="bodyRutas"> -->
<!-- 								        <tr> -->
<!-- 								            <td>DN</td> -->
<!-- 								        </tr> -->
<!-- 								        <tr> -->
<!-- 								            <td>DM</td> -->
<!-- 								        </tr> -->
<!-- 								        <tr> -->
<!-- 								            <td>N1</td> -->
<!-- 								        </tr> -->
<!-- 								        <tr> -->
<!-- 								            <td>N2</td> -->
<!-- 								        </tr> -->
<!-- 								        <tr> -->
<!-- 								            <td>Z1</td> -->
<!-- 								        </tr> -->
<!-- 								    </tbody> -->
								</table>
<!-- 							</div> -->
							<button class="btn btn-danger" onclick="exportarPDF()" data-color="blue"
								data-style="expand-right">
								<span class="ladda-label">Ejecutar</span>
							</button>
						</div>
				</div>
			</div>
		</div>
<script src="${baseURL}/js/bootstrap-datetimepicker.min.js"></script>
<script src="${baseURL}/js/plugins/jquery.dataTables.min.js"></script>       	
<script type="text/javascript">
var g_ruta='';


    function send() {
        var person = {
//         		 '2013-07-04','2013-07-04','h12','','hasar'
//             fechaDesde: '2013-07-04',
//             fechaHasat:'2013-07-04',
//             rutas:'h12'
	valor1:'holav1',
	valor2:'holav2'
        };

        $('#target').html('sending..');

        $.ajax({
            url: '${baseURL}/rest/mwr40/reporteDePedidos/filtrar/cabecera',
//             contentType: 'application/json',
            type: 'post',
            dataType: 'json',
//             data: "{\"valor\":\"hmkcode\",\"id\":2}",
			data: JSON.stringify({ id: 21, valor: "Sydney" }),
            contentType: 'application/json',
            mimeType: 'application/json',            
            success: function (data) {
                $('#target').html(data.codigoRuta);
            },
//              data: person
error:function(data,status,er) { 
        alert("error: "+data+" status: "+status+" er:"+er);
    }
        });
    }
    
	// probando cosas
	function pdf(){
		 window.open("${baseURL}/rest/reporte/exportar?filtro=2014-07-14::2014-07-14::[DN%20%20%20%20%20]::hasar&tipo=pdf&bean=reporteDePedidosBean&metodolista=reportePedidos&reporte=CabeceraOrdenes&nombrearchivo");
	};	

	function exportarPDF(){
		var fechaDesde = moment( $('#fechaDesde').data("DateTimePicker").getDate()).format("YYYY-MM-DD");
		var fechaHasta = moment( $('#fechaHasta').data("DateTimePicker").getDate()).format("YYYY-MM-DD");
		 window.open("${baseURL}/rest/reporte/exportar?filtro=" + fechaDesde + "::" +fechaHasta + "::[" + g_ruta + "]::hasar&tipo=pdf&bean=reporteDePedidosBean&metodolista=reportePedidos&reporte=CabeceraOrdenes&nombrearchivo");
	};

    $(function () {
        $('#fechaDesde').datetimepicker({pickTime: false});
        $('#fechaHasta').datetimepicker({pickTime: false});
    });
    
    function cargarBodyRutas(){
    	var html;
    	console.log("Disparo cargarBodyRutas");

    	$.post("${baseURL}/rest/mwr40/rutas/filtrar",function(response){
     if (response !== null && response !== "" && response !== "null") {
     	  var properties = '';
     	  for (property in response) {
     	    properties += '\n' + property;
     	  }
     	console.log('Properties of object:' + properties);
//      	var rutas=[];
// 	 	$.each(response.response.data, function(){
// 	 		rutas[rutas.length]= this.codigoRuta;
// 		});
	 	
// 	  	  $('#table_id').dataTable( {
// 	           	"scrollY":        "110px",
// 	            "scrollCollapse": true,
// 	            "paging":         false,
// 	  	        "data": rutas //,//[{"codigoRuta":"A1     ","estado":"T","active":"T"},{"codigoRuta":"A2     ","estado":"T","active":"T"}], //[['Trident','Internet Explorer 4.0','Win 95+','4  ','X '],['Trident','Internet Explorer 4.0','Win 95+','4  ','X ']], //response.response.data,
// 	  	        //"columns":[{ "title": "lolote" }]
// 	  	    } ); 

	  	  $('#table_id').dataTable( {
	           	"scrollY":        "110px",
	            "scrollCollapse": true,
	            "paging":         false,
	  	        "data":response.response.data,
	  	        "columns":[{ "data": "codigoRuta" }]
	  	    } ); 

//      	$.each(response.response.data, function(){
//          	html = html + "<tr><td>" + this.codigoRuta + "</td></td>";
//      	});
//      	$("#bodyRutas").append(html);
     }
	},"json").fail(function(){ 
		alert("Error");});
	
    	
//     	$.post("${baseURL}/rest/mwr40/rutas/filtrar",function(response){
//             if (response !== null && response !== "" && response !== "null") {
//             	  var properties = '';
//             	  for (property in response) {
//             	    properties += '\n' + property;
//             	  }
//             	console.log('Properties of object:' + properties);
            	  
//             	$.each(response.response.data, function(){
//                 	html = html + "<tr><td>" + this.codigoRuta + "</td></td>";
//             	});
//             	$("#bodyRutas").append(html);
//             }
// 		},"json").fail(function(){ 
// 			alert("Error");});
    }
    
    $(document).ready(function() {
//         $('#table_id').dataTable( {
//             "scrollY":        "110px",
//             "scrollCollapse": true,
//             "paging":         false
//         } );
        cargarBodyRutas();
    } );
    
//     $('#table_id').on('click', 'tbody tr', function(event) {
// //         $(this).addClass('highlight').siblings().removeClass('highlight');
// 		alert($(this).closest("tr")   // Finds the closest row <tr> 
//                 .find(".nr")     // Gets a descendent with class="nr"
//                 .text());
//     });
    
    $('#table_id').find('tr').click( function(){
    	  var row = $(this).find('td:first').text();
    	  g_ruta = row;
//     	  alert('You clicked ' + row);
//     	  alert(moment("10/12/2010", "YYYY-MM-DD"));
//     	  alert(moment("10/12/2010", "DD-MM-YYYY").format("YYYY-MM-DD"));
//     	  alert($('#fechaDesde').data("DateTimePicker").getDate());

			//Como tomar la fecha
//     	  alert(moment( $('#fechaDesde').data("DateTimePicker").getDate()).format("YYYY-MM-DD"));
    	});
</script>	


</body>
</html>	