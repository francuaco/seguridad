<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Dirección de Inteligencia</title>
	<?php $xajax->printJavascript("../"); ?>
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
	
	<link rel="stylesheet" href="plugins/jvectormap/jquery-jvectormap-1.2.2.css">
	<script src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
	<link rel="stylesheet" href="../dist/css/AdminLTE.min.css">
	<link rel="stylesheet" href="../dist/css/skins/_all-skins.min.css">
	<link rel="stylesheet" href="../plugins/ammap/ammap.css" type="text/css">
	<link rel="stylesheet" href="../plugins/datepicker/datepicker3.css">
	<link rel="stylesheet" href="../plugins/timepicker/bootstrap-timepicker.min.css">
	<link rel="stylesheet" href="../plugins/datatables/dataTables.bootstrap.css">
	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
	<script>
			//Limpia el form 	
			function limpiar(){
				$('#form_proyecto')[0].reset();
			}
			//funcion que muestra el modal
			function mostrar(){
				$('#formulario').modal('show');
			}
			//funcion que pinta el mapa
			function initialize() {
				var formulario = $("#formulario");
				var mapProp = {
					center:new google.maps.LatLng(14.5831173,-90.4651911),
					zoom:10,
					mapTypeId:google.maps.MapTypeId.ROADMAP
				};
				var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);
					google.maps.event.addListener(map, 'click', function(event) {
					var coordenadas = event.latLng;
					var lat = coordenadas.lat();
					document.getElementById('pro_latitud').value = lat;
					var lng = coordenadas.lng();
					document.getElementById('pro_longitud').value = lng;
					placeMarker(event.latLng);
				});
				var marker;
				//FUNCION QUE PINTA EL MARCADOR
				function placeMarker(location) {
					//muestra el modal
					$('#formulario').modal('show');
					if ( marker ) {
						marker.setPosition(location);
					} else {
						marker = new google.maps.Marker({ position: location, map: map });
					}
				}
			}
			google.maps.event.addDomListener(window, 'load', initialize);              
	</script>
</head>
	