<?php 
	include_once('funciones_xajax.php');
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>Dirección de Inteligencia</title>
		<?php $xajax->printJavascript(""); ?>
		<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
		<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
		<link rel="stylesheet" href="plugins/jvectormap/jquery-jvectormap-1.2.2.css">
		<script src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
		<link rel="stylesheet" href="dist/css/AdminLTE.min.css">
		<link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
		<link rel="stylesheet" href="plugins/ammap/ammap.css" type="text/css">
		 <link rel="stylesheet" href="plugins/datepicker/datepicker3.css">
		 <link rel="stylesheet" href="plugins/timepicker/bootstrap-timepicker.min.css">
		
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
				center:new google.maps.LatLng(14.5806743,-90.5167123),
				zoom:7,
				mapTypeId:google.maps.MapTypeId.ROADMAP
			  };
			  var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);
			  //funcion que obtiene las coordenadas
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
					marker = new google.maps.Marker({
					  position: location,
					  map: map
					});
				  }
				}
			}
			google.maps.event.addDomListener(window, 'load', initialize);              
		</script>
	</head>
	<body class="hold-transition skin-blue sidebar-mini">
		<div class="wrapper">
			<header class="main-header">
				<a href="inicio.php" class="logo">
					<span class="logo-mini"><b>D</b>I</span>
					<span class="logo-lg"><b>D.I. |</b> E.M.D.N.</span>
				</a>
				<nav class="navbar navbar-static-top">
					<a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
						<span class="sr-only">Toggle navigation</span>
					</a>
					<div class="navbar-custom-menu">
						<ul class="nav navbar-nav">
							<li class="dropdown user user-menu">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">
									<img src="dist/per/di.jpg" class="user-image" alt="User Image">
									<span class="hidden-xs">NOMBRE DEL USUARIO</span>
								</a>
								<ul class="dropdown-menu">
									<!-- User image -->
									<li class="user-header">
										<img src="dist/per/di.jpg" class="img-circle" alt="User Image">
										<p>EMPLEO
											<small>Otra Información Personal</small>
										</p>
									</li>
									<li class="user-footer">
										<div align = "center">
											<a href="#" class="btn btn-default btn-flat">CERRAR SESIÓN</a>
										</div>
									</li>
								</ul>
							</li>
							<!--li><a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a></li-->
						</ul>
					</div>
				</nav>
			</header>
			<aside class="main-sidebar">
				<section class="sidebar">
					<div class="user-panel">
						<div class="pull-left image"><img src="dist/per/di.jpg" class="img-circle" alt="User Image"></div>
						<div class="pull-left info">
							<p>NOMBRE DEL USUARIO</p>
							<a href="#"><i class="fa fa-circle text-success"></i> Online</a>
						</div>
					</div>
					<ul class="sidebar-menu">
						<li class="header">MENU PRINCIPAL</li>
						<li class="treeview">
							<a href="#"><span>HECHOS DELICTIVOS</span> <i class="fa fa-angle-left pull-right"></i></a>
							<ul class="treeview-menu">
								<li><a href="Fdelict.php"><i class="fa fa-circle-o"></i> Nuevo Hecho</a></li>
								<li><a href="Rdelict.php"><i class="fa fa-circle-o"></i> Reportes</a></li>
								<li><a href="Edelict.php"><i class="fa fa-circle-o"></i> Estadísticas</a></li>
							</ul>
						</li>        
						<li class="treeview">
							<a href="#"><span>GRUPOS ARMADOS</span> <i class="fa fa-angle-left pull-right"></i></a>
							<ul class="treeview-menu">
								<li><a href="Fgruarm.php"><i class="fa fa-circle-o"></i> Nuevo Grupo Armado</a></li>
								<li><a href="Rgruarm.php"><i class="fa fa-circle-o"></i> Reportes</a></li>
								<li><a href="Egruarm.php"><i class="fa fa-circle-o"></i> Estadísticas</a></li>
							</ul>
						</li>		
						<li class="treeview active">
							<a href="#"><span>TRAFICO DE ILEGALES</span> <i class="fa fa-angle-left pull-right"></i></a>
							<ul class="treeview-menu">
								<li class = "active"><a href="Fdeport.php"><i class="fa fa-circle-o"></i> DEPORTACIONES</a></li>
								<li><a href="Rdeport.php"><i class="fa fa-circle-o"></i> Reportes</a></li>
								<li><a href="Edeport.php"><i class="fa fa-circle-o"></i> Estadísticas</a></li>
							</ul>
						</li>		
						<li class="treeview">
							<a href="#"><span>MARAS</span> <i class="fa fa-angle-left pull-right"></i></a>
							<ul class="treeview-menu">
								<li><a href="Fmaras.php"><i class="fa fa-circle-o"></i> Nuevo Grupo Armado</a></li>
								<li><a href="Rmaras.php"><i class="fa fa-circle-o"></i> Reportes</a></li>
								<li><a href="Emaras.php"><i class="fa fa-circle-o"></i> Estadísticas</a></li>
							</ul>
						</li>
						<li><a href="#"><i class="fa fa-book"></i> <span>ESTADISTICAS GENERALES</span></a></li>
						<li class="header">CONFIGURACION</li>
						<li><a href="Fadmin.php"><i class="fa fa-circle-o text-aqua"></i> <span>ADMINISTRADOR</span></a></li>
						<li><a href="Fmantenimientos.php"><i class="fa fa-circle-o text-yellow"></i> <span>ACTUALIZACIONES</span></a></li>
						<li><a href="Logout.php"><i class="fa fa-circle-o text-red"></i> <span>CERRAR SESIÓN</span></a></li>
					</ul>
				</section>
			</aside>
			<div class="content-wrapper">
				<section class="content-header"><h1>DEPORTACIONES</h1></section>
				<section class="content">
					<div class="row">
						<div class="box box-default">
							<div class="box-header with-border">
								<div class="box-tools pull-right">
									<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
									<button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-remove"></i></button>
								</div>
							</div>
							<div class="box-body">
								<div class="row">
									<div class="col-md-3" align = "center">
										<div class="form-group">
											<label>FECHA</label>
											<div class="input-group date">
												<div class="input-group-addon"><i class="fa fa-calendar"></i></div>
												<input type="text" readonly class="form-control pull-right" id="fecha">
											</div>
										</div>
									</div>
									<div class="col-md-3"  align = "center">
										<div class="form-group">
											<label>HECHO</label>
											<?php echo combo_hechos(); ?>
										</div>
									</div>									
									<div class="col-md-3"  align = "center">
										<div class="form-group">
											<label>COMISARIA</label>
											<?php echo combo_comisarias(); ?>
										</div>
									</div>									
									<div class="col-md-2"  align = "center">
									  <div class="bootstrap-timepicker">
										<div class="form-group">
										  <label>HORA:</label>
										  <div class="input-group">
											<input type="text" id = "timepicker" readonly class="form-control timepicker">
											<div class="input-group-addon">
											  <i class="fa fa-clock-o"></i>
											</div>
										  </div>
										  <!-- /.input group -->
										</div>
										<!-- /.form group -->
									  </div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-3" align = "center">
										<div class="form-group">
										  <label>DIRECCIÓN</label>
										  <input type="text" id = "dir" name = "dir" class="form-control" placeholder="Ingrese la Dirección ...">
										</div>
									</div>
									<div class="col-md-2"  align = "center">
										<div class="form-group">
											<label>DEPARTAMENTO</label>
											<?php echo combo_depto(); ?>
										</div>
									</div>										
									<div class="col-md-2"  align = "center">
										<div class="form-group">
											<label>MUNICIPIO</label>
											<div id = "cmun">
												<select name="mun" id="mun" class="form-control select2" style="width: 100%;"></select>
											</div>
										</div>
									</div>									
									<div class="col-md-2"  align = "center">
										<div class="form-group">
											<label>ZONA</label>
											<div id = "zona"></div>
										</div>
									</div>										
									<div class="col-md-2"  align = "center">
										<div class="form-group">
											<label>ALDEA-CACERÍO</label>
											<div id = "aldea"></div>
										</div>
									</div>	
								</div>
								<div class="row">
									<div class="col-md-3" align = "center">
										<div class="form-group">
										  <label>FACTOR DE VIOLENCIA</label>
										  <?php echo combo_factor_violencia(); ?>
										</div>
									</div>									
									<div class="col-md-3" align = "center">
										<div class="form-group">
											<label>FORMA DE COMETER EL HECHO</label>
											<?php echo combo_forma_hecho(); ?>
										</div>
									</div>									
									<div class="col-md-5" align = "center">
										<div class="form-group">
										  <label>DESCRIPCIÓN DEL HECHO / OBSERVACIONES</label>
										  <textarea class="form-control" rows="3" id = "obs" name = "obs" placeholder="Descripción del hecho ..."></textarea>
										</div>
									</div>
								</div>
							</div>
							<hr style="color: #0056b2;" />
							<div class="row">
								<div class="col-md-10">
								  <!-- Custom Tabs (Pulled to the right) -->
								  <div class="nav-tabs-custom">
									<ul class="nav nav-tabs pull-right">
									  <li><a onclick = "initialize()" href="#map" data-toggle="tab">PUNTO EN EL MAPA</a></li>
									  <li><a href="#vehiculos" data-toggle="tab">VEHÍCULOS</a></li>
									  <li><a href="#armamento" data-toggle="tab">ARMAMENTO</a></li>
									  <li><a href="#victima" data-toggle="tab">VÍCTIMAS</a></li>
									  <li class="active"><a href="#detenido" data-toggle="tab">DETENIDOS</a></li>
									  <li class="pull-left header"><i class="fa fa-th"></i>INFORMACIÓN ADICIONAL</li>
									</ul>
									<div class="tab-content">
									  <div class="tab-pane" id="map">
										<div id="googleMap" style="width: 100%; height: 500px; margin: auto;"></div>
									  </div>
									  <div class="tab-pane" id="vehiculos">VEHICULOS VEHICULOS VEHICULOS</div>
									  <div class="tab-pane" id="armamento">ARMAMENTO ARMAMENTO ARMAMENTO</div>
									  <div class="tab-pane" id="victima">VICTIMA VICTIMA VICTIMA  </div>									  
									  <div class="tab-pane active" id="detenido"> DETENIDO DETENIDO DETENIDO</div>
									</div>
								  </div>
								</div>
							</div>
							<div class="box-footer"> AGREGAR ALGUNA OBSERVACION </div>
						</div>
					</div>
				</section>
			</div>
  			<footer class="main-footer">
				<div class="pull-right hidden-xs"><b>Version</b> 2.3.3</div>
				<strong>Copyright &copy; 2016 Derechos Reservados
			</footer>
			<div class="control-sidebar-bg"></div>
		</div>
		<script src="plugins/jQuery/jQuery-2.2.0.min.js"></script>
		<script src="bootstrap/js/bootstrap.min.js"></script>
		<script src="plugins/fastclick/fastclick.js"></script>
		<script src="dist/js/app.min.js"></script>>
		<script src="plugins/sparkline/jquery.sparkline.min.js"></script>
		<script src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
		<script src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
		<script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>
		<script src="plugins/chartjs/Chart.min.js"></script>
		<script src="dist/js/pages/dashboard2.js"></script>
		<script src="plugins/datepicker/bootstrap-datepicker.js"></script>
		<script src="plugins/timepicker/bootstrap-timepicker.min.js"></script>
		<script src="dist/js/demo.js"></script>
        <script src="plugins/ammap/ammap.js" type="text/javascript"></script>
		<script src="plugins/ammap/guatemalaHigh.js" type="text/javascript"></script>
        <script src="plugins/ammap/light.js" type="text/javascript"></script>
		<script>
		    $('#fecha').datepicker({
				autoclose: true,
				language: 'es',
			});
		    $(".timepicker").timepicker({
				showInputs: false
			});
			AmCharts.theme = AmCharts.themes.light;
			// add all your code to this method, as this will ensure that page is loaded
			AmCharts.ready(function() {
				// create AmMap object
				var map = new AmCharts.AmMap();
				// set path to images
				/* create data provider object
				 mapVar tells the map name of the variable of the map data. You have to
				 view source of the map file you included in order to find the name of the
				 variable - it's the very first line after commented lines.
				 getAreasFromMap indicates that amMap should read all the areas available
				 in the map data and treat them as they are included in your data provider.
				 in case you don't set it to true, all the areas except listed in data
				 provider will be treated as unlisted.
				*/
				var dataProvider = {
					mapVar: AmCharts.maps.guatemalaHigh,
					getAreasFromMap:true
				};
				// pass data provider to the map object
				map.dataProvider = dataProvider;
				/* create areas settings
				 * autoZoom set to true means that the map will zoom-in when clicked on the area
				 * selectedColor indicates color of the clicked area.
				 */
				map.areasSettings = {
					autoZoom: true,
					rollOverBrightness:10,
					selectedBrightness:20,
				};
				// let's say we want a small map to be displayed, so let's create and add it to the map
				map.smallMap = new AmCharts.SmallMap();
				// write the map to container div
				map.write("mapdiv");
				map.addListener("clickMapObject", function (event) {
				//traedato();
				alert(event.mapObject.id);
				mapinfo(event.mapObject);
				});
			});
			function zaldea(mun){ 
				xajax_zonaldea(mun.value); 
				// alert(mun.value);
			}
        </script>
		<script>
			var lineChartData = {
				labels : ["Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio"],
				datasets : [
					{
						label: "Primera serie de datos",
						fillColor : "rgba(220,220,220,0.2)",
						strokeColor : "#6b9dfa",
						pointColor : "#1e45d7",
						pointStrokeColor : "#fff",
						pointHighlightFill : "#fff",
						pointHighlightStroke : "rgba(220,220,220,1)",
						data : [90,30,10,80,15,5,15]
					},
					{
						label: "Segunda serie de datos",
						fillColor : "rgba(151,187,205,0.2)",
						strokeColor : "#e9e225",
						pointColor : "#faab12",
						pointStrokeColor : "#fff",
						pointHighlightFill : "#fff",
						pointHighlightStroke : "rgba(151,187,205,1)",
						data : [40,50,70,40,85,55,15]
					}
				]

			}
			var ctx4 = document.getElementById("chart-area4").getContext("2d");
			window.myPie = new Chart(ctx4).Line(lineChartData, {responsive:true});
			function municipios(dep){ xajax_municipios(dep.value); }

		</script>
	</body>
</html>
