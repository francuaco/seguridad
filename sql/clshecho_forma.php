<?php
	require_once ("conex.php");

	class hecho_forma{
		function trae_forma_hechos() {
			$ClsCon = new ClsConex();
			$sql= "SELECT * FROM hecho_forma ORDER BY form_descripcion ASC";
			$result = $ClsCon->exec_query($sql);
			return $result;
		}
		
	}	
?>
