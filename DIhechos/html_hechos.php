<?php
	include_once("../funciones_html.php");

	function tabla_hechos_delictivos(){
		$ClsDelict = new delictivos();
		$listar = $ClsDelict->trae_hechos_delictivos();
		$salida = '<section class="content">
					<div class="box">
					<div class="box-body">
					  <table id="example2" class="table table-bordered table-hover">
						<thead>
						<tr>
						  <th>HECHO DELICTIVO</th>
						  <th>COMISARÍA QUE REPORTA</th>
						  <th>FECHA Y HORA</th>
						  <th>PERSONAS</th>
						  <th>VEHICULOS</th>
						  <th>ARMAS</th>
						  <th>UBICACIÓN</th>
						  <th>CERRAR</th>
						</tr>
						</thead>
						<tbody>';
		foreach($listar as $row){
			$cod = $row["del_codigo"];
			$hecho = $row["h_descripcion"];
			$comisaria = $row["com_descripcion"];
			$fecha = $row["del_fecha"];
			$hora = $row["del_hora"];
			$salida.= '<tr><td>'.$hecho.'</td><td>'.$comisaria.'</td><td>'.$fecha.' '.$hora.'</td>';
			$salida.= '<td><button type="button" onclick = "xajax_add_delincuente('.$cod.');" class="btn btn-block btn-primary">Personas</button></td>';
			$salida.= '<td><button type="button" onclick = "xajax_add_armamento('.$cod.');"class="btn btn-block btn-success">Armamento</button></td>';
			$salida.= '<td><button type="button" onclick = "xajax_add_vehiculo('.$cod.');"class="btn btn-block btn-info">Vehiculo</button></td>';
			$salida.= '<td><button type="button" onclick = "xajax_add_ubicacion('.$cod.');"class="btn btn-block btn-warning">Ubicación</button></td>';
			$salida.= '<td><button type="button" onclick = "xajax_change_sit('.$cod.');"class="btn btn-block btn-danger">cerrar</button></td>';
			$salida.= '</tr>';
		}
		$salida.= '</tbody>
						<tfoot>
						<tr>
						  <th>HECHO DELICTIVO</th>
						  <th>COMISARÍA QUE REPORTA</th>
						  <th>FECHA Y HORA</th>
						  <th>PERSONAS</th>
						  <th>VEHICULOS</th>
						  <th>ARMAS</th>
						  <th>UBICACIÓN</th>
						  <th>CERRAR</th>
						</tr>
						</tfoot>
					  </table>
					</div>
				  </div>
				</section>';
		return $salida;
	}
	
	function formulario_delincuentes($cod){
		$ClsDelict = new delictivos();
		$listar = $ClsDelict->trae_hechos_delictivos();
		$salida = '
			<section class="content">
				<div class="box box-default">
					<div class="box-header with-border">
						<h3 class="box-title">INFORMACION DEL DELINCUENTE</h3>
						<div class="box-tools pull-right">
							<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
							<button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-remove"></i></button>
						</div>
					</div>
					<div class="box-body">
						<div class="row">
							<div class="col-md-2">
								<div class="form-group">
									<label aling = "center">NUMERO DE DPI</label>
									<input type="text" id = "dpi" class="form-control" placeholder = "dpi" data-mask>
								</div>
								<div class="form-group">
									<label aling = "center">NACIONALIDAD</label>
									'.combo_nacionalidades().'
								</div>
							</div>
							<div class="col-md-2">
								<div class="form-group">
									<label aling = "center">PRIMER NOMBRE</label>
									<input type="hidden" id = "cod" value = "'.$cod.'">
									<input type="text" id = "nom1" class="form-control" placeholder = "Primer Nombre" data-mask>
								</div>		
								<div class="form-group">
									<label>GENERO</label>
									<select class="form-control select2" id = "gen" style="width: 100%;">
									  <option value = "M">MASCULINO</option>
									  <option value = "F">FEMENINO</option>
									</select>
								</div>
							</div>	
							<div class="col-md-2">							
								<div class="form-group">
									<label aling = "center">SEGUNDO NOMBRE</label>
									<input type="text" class="form-control" id = "nom2" placeholder = "Segundo Nombre" data-mask>
								</div>
								<div class="form-group">
									<label>POSEE TATUAJES</label>
									<select class="form-control select2" it = "tatu" style="width: 100%;">
									  <option value = "SI">SI</option>
									  <option value = "NO">NO</option>
									  <option value = "NS">NO SE SABE</option>
									</select>
								</div>
							</div>
							<div class="col-md-2">		
								<div class="form-group">
									<label aling = "center">PRIMER APELLIDO</label>
									<input type="text" class="form-control" id = "ape1" placeholder = "Primer Apellido" data-mask>
								</div>
								<div class="form-group">
									<label aling = "center">ALIAS</label>
									<input type="text" id = "alias" class="form-control" placeholder = "alias" data-mask>
								</div>
								
							</div>
							<div class="col-md-2">		
								<div class="form-group">
									<label aling = "center">SEGUNDO APELLIDO</label>
									<input type="text" class="form-control" id = "ape2" placeholder = "Segundo Apellido" data-mask>
								</div>
								<div class="form-group">
									<label aling = "center">PROFESION</label>
									<input type="text" id = "prof" class="form-control" placeholder = "profesion" data-mask>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-10" align = "center">
								<div class="form-group">
									<label aling = "center">DESCRIPCION DEL DELINCUENTE</label>
									<textarea class="form-control" rows="3" id = "obs" name = "obs" placeholder="RASGOS FISICOS, TATUAJES, OBSERVACIONES"></textarea>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-2 col-md-offset-4">
								<button type="button" onclick = "nuevo_delincuente();" class="btn btn-block btn-info">GRABAR</button>
							</div>
						</div>
						<div class="box-header with-border">
							<h3 class="box-title" aling = "center">DELINCUENTES LIGADOS AL HECHO</h3>
						</div>
					</div>
				</div>

			</section>
		';

		return $salida;
	}	
	
?>
