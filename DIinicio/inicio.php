<?php 
	include_once('xajax_inicio.php');
	session_start();
	$nom = $_SESSION['nom1']." ".$_SESSION['ape1'];
?>
<!DOCTYPE html>
<html>
	<?php include ('../DIinicio/head.php') ?>
	<body class="hold-transition skin-blue sidebar-mini">
		<div class="wrapper">
			<?php include ('../DIinicio/menu.php'); ?>
			<div class="content-wrapper">
				<section class="content-header"><h1>SITUACIÓN ACTUAL DE GUATEMALA</h1></section>
				<section class="content">
					<div class="row">
						<div class="col-md-12" align = "center">
							<div class="box box-success">
								<div class="box-header with-border">
									<h3 class="box-title">CARTA DE SITUACIÓN</h3>
									<div class="box-tools pull-right">
										<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
										<button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
									</div>
								</div>
								<div class="box-body no-padding">
									<div class="row">
										<div class="col-md-9 col-sm-8">
											<div class="pad">
												<div id="mapdiv" style="width: 135%; background-color:#222222; height: 500px;"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="box">
								<div class="box-header with-border">
									<h3 class="box-title">ESTADISTICAS GENERALES DEL AÑO ACTUAL</h3>
									<div class="box-tools pull-right">
										<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
										<button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
									</div>
								</div>
								<div class="box-body">
									<div class="row">
										<div class="col-md-8">
											<p class="text-center"><strong>FECHA: colocar fecha de hoy</strong></p>
											<div class="chart"><canvas id="chart-area4" style="height: 180px;"></canvas></div>
										</div>
										<div class="col-md-4">
											<p class="text-center"><strong>Goal Completion</strong></p>
											<div class="progress-group">
												<span class="progress-text">Add Products to Cart</span>
												<span class="progress-number"><b>160</b>/200</span>
												<div class="progress sm">
													<div class="progress-bar progress-bar-aqua" style="width: 80%"></div>
												</div>
											</div>
											<div class="progress-group">
												<span class="progress-text">Complete Purchase</span>
												<span class="progress-number"><b>310</b>/400</span>
												<div class="progress sm">
													<div class="progress-bar progress-bar-red" style="width: 80%"></div>
												</div>
											</div>
											<div class="progress-group">
												<span class="progress-text">Visit Premium Page</span>
												<span class="progress-number"><b>480</b>/800</span>
												<div class="progress sm">
													<div class="progress-bar progress-bar-green" style="width: 80%"></div>
												</div>
											</div>
											<div class="progress-group">
												<span class="progress-text">Send Inquiries</span>
												<span class="progress-number"><b>250</b>/500</span>
												<div class="progress sm">
													<div class="progress-bar progress-bar-yellow" style="width: 80%"></div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="box-footer">
									<div class="row">
										<div class="col-sm-3 col-xs-6">
											<div class="description-block border-right">
												<span class="description-percentage text-green"><i class="fa fa-caret-up"></i> 17%</span>
												<h5 class="description-header">$35,210.43</h5>
												<span class="description-text">TOTAL REVENUE</span>
											</div>
										</div>
										<div class="col-sm-3 col-xs-6">
											<div class="description-block border-right">
												<span class="description-percentage text-yellow"><i class="fa fa-caret-left"></i> 0%</span>
												<h5 class="description-header">$10,390.90</h5>
												<span class="description-text">TOTAL COST</span>
											</div>
										</div>
										<div class="col-sm-3 col-xs-6">
											<div class="description-block border-right">
												<span class="description-percentage text-green"><i class="fa fa-caret-up"></i> 20%</span>
												<h5 class="description-header">$24,813.53</h5>
												<span class="description-text">TOTAL PROFIT</span>
											</div>
										</div>
										<div class="col-sm-3 col-xs-6">
											<div class="description-block">
												<span class="description-percentage text-red"><i class="fa fa-caret-down"></i> 18%</span>
												<h5 class="description-header">1200</h5>
												<span class="description-text">GOAL COMPLETIONS</span>
											</div>
										</div>
									</div>
								</div>
							</div>
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
		<?php include ('../DIinicio/foot.php') ?>
		<script>
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
		</script>
	</body>
</html>
