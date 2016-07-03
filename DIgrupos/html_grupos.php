<?php
	include_once('sql/conex.php');
	require_once('sql/clsinicio.php');
	require_once('sql/clshechos.php');
	require_once('sql/clscomisaria.php');
	require_once('sql/clsdepmun.php');
	require_once('sql/clszona.php');
	require_once('sql/clsaldea.php');
	require_once('sql/clsfactorviolencia.php');
	require_once('sql/clshecho_forma.php');
	require_once('sql/clspaises.php');
	require_once('sql/clspersonal.php');
	require_once('sql/clshechosdelictivos.php');
	require_once('sql/clshechoasig.php');
	// require_once('sql/persona.php');

	function html_modal($cuerpo,$botons){
		$salida ='<div class="modal-dialog">';
		$salida.='<div class="modal-content">';
		$salida.='<div class="modal-header">';
		$salida.='<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>';
		$salida.='<h4 class="modal-title" id="myModalLabel">DIRECCION DE INTELIGENCIA </h4>';
		$salida.='</div>';
		$salida.='<div class="modal-body" align = "center">';
		$salida.=$cuerpo;
		$salida.='</div>';
		$salida.='<div class="modal-footer" align = "center">';
		$salida.=$botons;
		$salida.='</div>';
		$salida.='</div>';
		$salida.='</div>';
		return $salida;
	}
	
//// COMBOS UTILIZADOS	
	function combo_nacionalidades(){
		$ClsPaises = new paises();
		$result = $ClsPaises->trae_paises();
		return combo_normal($result,'nac','pais_codigo','pais_gentilicio');
	}		
	
	function combo_hechos(){
		$Clshecho = new hechos();
		$result = $Clshecho->trae_hechos();
		return combo_normal($result,'hecho','h_codigo','h_descripcion');
	}	
	
	function combo_comisarias(){
		$ClsComi = new comisaria();
		$result = $ClsComi->trae_comisarias();
		return combo_normal($result,'comisaria','com_codigo','com_descripcion');
	}	
	
	function combo_depto(){
		$Clsdepmun = new depmun();
		$result = $Clsdepmun->trae_departamentos();
		return combo_onclick($result,'depto','dm_codigo','dm_desc','municipios(this);');
	}

	function combo_factor_violencia(){
		$Clsfacv = new factorviolencia();
		$result = $Clsfacv->trae_factores();
		return combo_normal($result,'factor','fact_codigo','fact_descripcion');
	}	
	
	function combo_forma_hecho(){
		$Clsform = new hecho_forma();
		$result = $Clsform->trae_forma_hechos();
		return combo_normal($result,'form','form_codigo','form_descripcion');
	}
	
	
////////////////////FUNCIONES PARA GENERAR COMBOS	////////////////////////////////////////////////////////////////////////
	function combo_normal($result_id,$name,$c1,$c2) {
		if (!$result_id) {
			return ;
		}
		$salida = '<select name="'.$name.'" id="'.$name.'" class="form-control select2" style="width: 100%;">';
		$salida .= '<option value="">Seleccione</option>';
		foreach ($result_id as $row) {
			$desc = utf8_decode($row[$c2]);
			$salida .= '<option value='.$row[$c1].'>'.$desc.'</option>';
		}
		$salida .='</select>';
		return $salida;
	}
	
	function combo_multiple($result_id,$name,$c1,$c2) {
		if (!$result_id) {
			return ;
		}
		$salida .= '<select name="'.$name.'" id="'.$name.'" class="form-control select2" multiple="multiple" data-placeholder="Select a State" style="width: 100%;">';
		$salida .= '<option value="">Seleccione</option>';
		foreach ($result_id as $row) {
			$salida .= '<option value='.$row[$c1].'>'.$row[$c2].'</option>';
		}
		$salida .='</select>';
		return $salida;
	}
	
	function combo_onclick($result_id,$name,$c1,$c2,$funcion) {
		if (!$result_id) {
			return ;
		}
		$salida = '<select name="'.$name.'" id="'.$name.'" class="form-control select2" style="width: 100%;" onchange = "'.$funcion.'">';
		$salida .= '<option value="">Seleccione</option>';
		foreach ($result_id as $row) {	   
			$salida .= '<option value='.$row[$c1].'>'.$row[$c2].'</option>';
		}
		$salida .='</select>';
		return $salida;
	}
	
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
