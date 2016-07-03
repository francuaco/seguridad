<?php
/// FUNCIONES HTML UTILZADAS EN TODO EL SISTEMA
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

	///FUNCIÓN QUE CREA EL MODAL PARA ALERTAS
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
	
?>
