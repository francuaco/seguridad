<?php 
	require ('../xajax_core/xajax.inc.php');
	include_once('../funciones_html.php');
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
	$xajax->register(XAJAX_FUNCTION, "login");
	$xajax->processRequest();

?>  