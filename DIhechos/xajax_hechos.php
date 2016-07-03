<?php 
	require ('../xajax_core/xajax.inc.php');
	include_once('html_hechos.php');
	$xajax = new xajax();
	$xajax->setCharEncoding('ISO-8859-1');
	date_default_timezone_set('America/Guatemala');
 
	function login ($usu,$pass){
		$respuesta = new xajaxResponse();
		$ClsIni = new inicio();
		$res = $ClsIni->get_login($usu,$pass);
		if (is_array($res)){
			foreach($res as $row){
				session_start();
				$nom1 = $row["usu_nom1"];
				$nom2 = $row["usu_nom2"];
				$ape1 = $row["usu_ape1"];
				$ape2 = $row["usu_ape2"];
				$_SESSION['usuario'] = $usu;
				$_SESSION['ps'] = $pass;			
				$_SESSION['nom1'] = $nom1;			
				$_SESSION['nom2'] = $nom2;			
				$_SESSION['ape1'] = $ape1;			
				$_SESSION['ape2'] = $ape2;			
			}
			$respuesta->redirect('inicio.php', 2);
		}else{
			$cuerpo = '<p>USUARIO Y/O CONTRASEÑA INVALIDA</p>';
			$botons = '<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>';
			$html	=	html_modal($cuerpo,$botons);
			$respuesta->assign("myModal", "innerHTML", "$html");
			$respuesta->script("$('#myModal').modal({ show: true, keyboard: false, backdrop: true, backdrop: 'static' })");
		}
		return $respuesta;
	}

	function municipios($depto){
		$respuesta = new xajaxResponse();
		$Clsdepmun = new depmun();	
		$res = $Clsdepmun->trae_municipios($depto);
		$combo = combo_onclick($res,'mun','dm_codigo','dm_desc','zaldea(this);');
		$respuesta->assign("cmun", "innerHTML", "$combo");
		return $respuesta;
		
	}
	function zonaldea($mun){
		$respuesta = new xajaxResponse();
		$aldea = new aldea();	
		$zona = new zona();	
		$ald = $aldea->trae_aldeas($mun);
		$zon = $zona->trae_zonas($mun);
		if (is_array($ald)){
			$combo_aldea = combo_normal($ald,'aldea','al_codigo','al_descripcion');			
			$respuesta->assign("aldea", "innerHTML", "$combo_aldea");
		}
		if (is_array($zon)){
			$combo_zona = combo_normal($zon,'zona','zona_codigo','zona_descripcion');			
			$respuesta->assign("zona", "innerHTML", "$combo_zona");
		}
		return $respuesta;
	}
	
	function agregar_detenido($contador){
		$respuesta = new xajaxResponse();
		$cuerpo = '	<div class="row">
						<div class="col-md-3" align = "center">
							<div class="form-group">
								<h5>DPI / PASAPORTE </h5>
								<input type="text" id = "dpi" name = "dpi" class="form-control">
							</div>
						</div>
						<div class="col-md-4" align = "center">
							<div class="form-group">
								<h5>PRIMER NOMBRE</h5>
								<input type="text" id = "nom1" name = "nom1" class="form-control">
								<input type="hidden" id = "contador" name = "contador" value = "'.$contador.'" class="form-control">
							</div>
						</div>	
						<div class="col-md-4" align = "center">
							<div class="form-group">
								<h5>SEGUNDO NOMBRE</h5>
								<input type="text" id = "nom2" name = "nom2" class="form-control">
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-3" align = "center">
							<div class="form-group">
								<h5>NACIONALIDAD</h5>'.combo_nacionalidades().'
							</div>
						</div>
						<div class="col-md-4" align = "center">
							<div class="form-group">
								<h5>PRIMER APELLIDO</h5>
								<input type="text" id = "ape1" name = "ape1" class="form-control">
							</div>
						</div>	
						<div class="col-md-4" align = "center">
							<div class="form-group">
								<h5>SEGUNDO APELLIDO</h5>
								<input type="text" id = "ape2" name = "ape2" class="form-control">
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-11" align = "center">
							<div class="form-group">
								<h5>DESCRIPCIÓN</h5>
								<textarea class="form-control" rows="3" id = "obs" name = "obs" placeholder="RASGOS FÍSICOS, TATUAJES, OBSERVACIONES"></textarea>
							</div>
						</div>
					</div>';
		$botons = '<div aling = "center"><button type="button" class="btn btn-block btn-info btn-sm" data-dismiss="modal" onclick = "guardar_detenido();">GUARDAR</button></div>';
		$html	=	html_modal($cuerpo,$botons);
		$respuesta->assign("myModal", "innerHTML", "$html");
		$respuesta->script("$('#myModal').modal({ show: true, keyboard: false, backdrop: true, backdrop: 'static' })");
		// $respuesta->alert("aqui vamos");
		return $respuesta;	
	}
	
	function grabar_hecho($fecha,$hecho,$com,$timepicker,$dir,$depto,$mun,$zon,$ald,$fact,$forma,$obs){
		$respuesta = new xajaxResponse();
		$ClsDelict = new delictivos();
		$cod = $ClsDelict->max_hecho_delict();
		$dir = strtoupper($dir);
		$ald = strtoupper($ald);
		$obs = strtoupper($obs);
		$fec = date("Y-m-d H:i:s");
		$trozos =split("/",$fecha); 
		$fecha = $trozos[2]."/".$trozos[1]."/".$trozos[0];
		$insert = $ClsDelict->insert_hecho_delict($cod,$fecha,$hecho,$com,$timepicker,$dir,$depto,$mun,$zon,$ald,$fact,$forma,$obs,$fec);
		if ($insert == 1){
			$cuerpo = '<p>REGISTROS ALMACENADOS EXITOSAMENTE!...</p>';
			$botons = '<button type="button" onclick = "window.location=\'Fdelict.php\'" class="btn btn-primary">ACEPTAR</button>';
			$html	=	html_modal($cuerpo,$botons);
			$respuesta->assign("myModal", "innerHTML", "$html");
			$respuesta->script("$('#myModal').modal({ show: true, keyboard: false, backdrop: true, backdrop: 'static' })");			
		}else{
			$cuerpo = '<p>ERROR DE CONEXIÓN</p>';
			$botons = '<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>';
			$html	=	html_modal($cuerpo,$botons);
			$respuesta->assign("myModal", "innerHTML", "$html");
			$respuesta->script("$('#myModal').modal({ show: true, keyboard: false, backdrop: true, backdrop: 'static' })");	
		}
		return $respuesta;
	}
	
	function add_delincuente($cod){
		$respuesta = new xajaxResponse();
			$contenido = formulario_delincuentes($cod);
			$respuesta->assign("contenido","innerHTML",$contenido);
		return $respuesta;		
		
	}
	
	function grabar_delincuente($dpi,$nom1,$nom2,$ape1,$ape2,$nac,$gen,$tatu,$alias,$prof,$obs,$cod){
		$respuesta = new xajaxResponse();
		$ClsDelict = new delictivos();
		$cod = $ClsDelict->max_hecho_delict();		
		$nom1 = strtoupper($nom1);		
		$nom2 = strtoupper($nom2);		
		$ape1 = strtoupper($ape1);		
		$ape2 = strtoupper($ape2);		
		$alias = strtoupper($alias);		
		$prof = strtoupper($prof);		
		$obs = strtoupper($obs);		
		$contenido = formulario_delincuentes($cod);
			$respuesta->assign("contenido","innerHTML",$contenido);
		return $respuesta;			
		
	}
	
	
	function change_sit($id){
		$respuesta = new xajaxResponse();
		$ClsDelict = new delictivos();		
		return $respuesta;
	}

	$xajax->register(XAJAX_FUNCTION, "login");
	$xajax->register(XAJAX_FUNCTION, "municipios");
	$xajax->register(XAJAX_FUNCTION, "zonaldea");
	$xajax->register(XAJAX_FUNCTION, "grabar_hecho");
	$xajax->register(XAJAX_FUNCTION, "grabar_detenido");
	$xajax->register(XAJAX_FUNCTION, "change_sit");
	$xajax->register(XAJAX_FUNCTION, "add_delincuente");
	$xajax->processRequest();

?>  