<?php 
	include_once('xajax_hechos.php');
	session_start();
	$nom = $_SESSION['nom1']." ".$_SESSION['ape1'];
?>
<!DOCTYPE html>
<html>
	<?php include ('../DIinicio/head.php'); ?>
	<body class="hold-transition skin-blue sidebar-mini">
		<div class="wrapper">
			<?php include ('../DIinicio/menu.php'); ?>
			<div class="content-wrapper">
				<section class="content-header center"><h1>HECHOS DELICTIVOS</h1></section>
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
											<input type="text" name = "timepicker" id = "timepicker" readonly class="form-control timepicker">
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
											<input type="text" id = "zona" name = "zona" class="form-control" placeholder="Ingrese Zona...">
										</div>
									</div>										
									<div class="col-md-2"  align = "center">
										<div class="form-group">
											<label>ALDEA-CASERÍO</label>
											<input type="text" id = "aldea" name = "aldea" class="form-control" placeholder="Aldea/Caserío ...">
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
							<div class="col-md-2 col-md-offset-5">
								<button type="button" onclick = "grabar_hecho_delictivo();" class="btn btn-block btn-info">GRABAR HECHO DELICTÍVO</button>
							</div>
							<!--div class="row">
								<div class="col-md-10">
								  <div class="nav-tabs-custom">
									<ul class="nav nav-tabs pull-right">
									  <li><a onclick = "initialize()" href="#map" data-toggle="tab">GEOPOSICIÓN</a></li>
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
										<div class="tab-pane active" id="detenido">
										<div class="row">
											<section class="content-header" align = "center"><h3>DETENIDOS</h3></section>
											<div id = "detenidos">
												<div class="col-md-2 col-md-offset-5">
													<button type="button" onclick = "prompt_detenido();" class="btn btn-block btn-info">AGREGAR NUEVO</button>
												</div>
											</div>
											<input type="hidden" id = "dcont" name = "dcont" value = "0" class="form-control">
										</div>
									</div>
									</div>
								  </div>
								</div>
							</div-->
							<div class="box-footer"> </div>
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
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"></div>
		<?php include ('../DIinicio/foot.php') ?>
		<script>
		    $('#fecha').datepicker({
				autoclose: true,
				language: 'es',
			});
			$('#datepicker').datepicker('option', {dateFormat: 'yyyy/mm/dd'});
		    $(".timepicker").timepicker({
				showInputs: false
			});
			function zaldea(mun){ 
				xajax_zonaldea(mun.value); 
				// alert(mun.value);
			}
        </script>
	</body>
</html>
