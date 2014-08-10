
//declaro 2 funciones para los eventos keyup de los textbox
	//y para cuando cambia la opcion del combobox
	$(document).ready(function() {
		validar();
		$("#dni").keyup(function() {
			validar();
		});
		$("#apellido").keyup(function() {
			validar();
		});
		$("#nombre").keyup(function() {
			validar();
		});
		$("#accion").change(function() {
			validar();
		});

	});
	//realizo una funcion recuperando los datos de pantalla y dependiendo de lo elegido
	//oculto o muestro el boton para porder realizar la accion
	function validar() {
		var dni = $("#dni").val();
		var nombre = $("#nombre").val();
		var apellido = $("#apellido").val();
		var accion = $("#accion").val();
		switch (accion) {
		case '1': {
			if (dni == '' || nombre == '' || apellido == '') {
				$("#boton").hide();
			} else {
				$("#boton").show();
			}
		}
			break;
		case '2': {
			if (dni == '') {
				$("#boton").hide();
			} else {
				$("#boton").show();
			}
		}
			break;
		case '3': {
			if (dni == '' || nombre == '' || apellido == '') {
				$("#boton").hide();
			} else {
				$("#boton").show();
			}
		}
			break;
		case '4': {
			if (dni == '') {
				$("#boton").hide();
			} else {
				$("#boton").show();
			}
		}
			break;
		case '5': {
			$("#boton").show();
		}
			break;
		}
	}