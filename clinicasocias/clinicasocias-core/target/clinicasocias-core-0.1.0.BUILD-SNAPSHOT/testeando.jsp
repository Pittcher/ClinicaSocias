<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1>Test</h1>
        <input type="text" id="hide" />
        <input type="text" id="message"/>
        <button id="button">test</button>
        <div id="messageDisplayArea"></div>
        
        <button id="botonJ" onclick="cargarJSON()" >JSON</button>
        <button id="botonJ" onclick="cargarJSONUsuario()" >USUARIO</button>
        <button id="botonJ" onclick="cargarJSONResponseUsuario()" >ResponseUSUARIO</button>
        
        
		<table id="divIEeventos" class="table table-striped table-bordered table-hover">
			<thead>
				<tr>
					<th>Fase</th>
					<th>Estado</th>
					<th>Funcion</th>
				</tr>
			</thead>
			<tbody id="testBody">
				<tr><td>hola </td><td>chau</td></tr>
        	</tbody>
		</table>
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
        <script>
        $('#button').on('click', sendMessage);

        function sendMessage() {
            var intxnId = $("#hide").val();
            var message = $("#message").val();
            alert("send  : \n intxnId : " + intxnId + "\nmessage : " + message);
            $.ajax({
                type: "POST",
                cache: false,
                url: "${pageContext.request.contextPath}/rest/test",
                async: true,
                data: "intxnId=" + intxnId + "&message=" + encodeURIComponent(message),
                success: function(response) {

                    if (response !== null && response !== "" && response !== "null") {
                        alert("Name : " + response.name + "\nMessage : " + response.message + "\ntime : " + response.time);
                        $("#messageDisplayArea").append(message);
                    }

                },
                error: function(e) {
                    alert('Error: ' + e);
                },
            });
        }
        
        function cargarJSON(){
        	var html;
//         	var html = $.map(response.d, function (item, i) {
//         		  return "<tr><td>" + item.value1 + "</td><td>" + item.value2 + "</td></tr>";
//         		}).join("");
				console.log("json lolote");
				
// 				$('#testBody tr:last').after('<tr><td>column 1 value</td><td>column 2 value</td></tr>');
				
				
				$.post( "${pageContext.request.contextPath}/rest/test", { intxnId: "titiXX",message:"smsXX" }, function( data ) {
				  console.log( data.name ); // John
				  html = html + "<tr><td>" + data.name + "</td><td>" + data.name + "</td></tr>";
				$("#testBody").append(html);
				}, "json");

//             $.ajax({
//                 type: "POST",
//                 cache: false,
//                 url: "${pageContext.request.contextPath}/rest/test",
//                 async: true,
//                 data: "intxnId=titi &message=mensaje" + encodeURIComponent(message),
//                 success: function(response) {

//                     if (response !== null && response !== "" && response !== "null") {
//                         alert("Name : " + response.name + "\nMessage : " + response.message + "\ntime : " + response.time);
// //                         $("#messageDisplayArea").append(message);
//                         html = html + "<tr><td>" + data.name + "</td><td>" + data.name + "</td></tr>"
//                     }

//                 },
//                 error: function(e) {
//                     alert('Error: ' + e);
//                 },
//             });
				
        }
        
        function cargarJSONUsuario(){
        	var html;
				console.log("json USUARIO");
				
				$.post( "${pageContext.request.contextPath}/rest/testusu", { intxnId: "titiXX",message:"smsXX" }, function( data ) {
				  console.log( data.name ); // John
				  html = html + "<tr><td>" + data.name + "</td><td>" + data.name + "</td></tr>";
				$("#testBody").append(html);
				}, "json");

				
        }
        
        
        function cargarJSONResponseUsuario(){
        	var html;
				console.log("json Response USUARIO");
				
				$.post( "${pageContext.request.contextPath}/rest/testresponseuser", { intxnId: "titiResp",message:"smsResp" }, function( response ) {
                    if (response !== null && response !== "" && response !== "null") {
                    	$.each(response, function(){
	                    	html = html + "<tr><td>" + this.nombre + "</td><td>" + this.nombre + "</td></tr>";
                    	});
                    	$("#testBody").append(html);
                    }
				}, "json").fail(function(){
					alert('Error: ');
				});
				

				
// 	            $.ajax({
// 	                type: "POST",
// 	                cache: false,
// 	                url: "${pageContext.request.contextPath}/rest/testresponseuser",
// 	                async: true,
// 	                data: "intxnId=post1&message=mensaje1",
// 	                success: function(response) {
// // 	                	alert(response);
// 	                    if (response !== null && response !== "" && response !== "null") {
// 	                    	$.each(response, function(){
// 		                    	html = html + "<tr><td>" + this.nombre + "</td><td>" + this.nombre + "</td></tr>";
// 	                    	});
// 	                    	$("#testBody").append(html);
// 	                    }

// 	                },
// 	                error: function(e) {
// 	                    alert('Error: ' + e);
// 	                },
// 	            });
        }        
    </script>
    </body>

</html>