<?php
	require_once ("conex.php");

	class zona{
		function trae_zonas($mun) {
			$ClsCon = new ClsConex();
			$sql= "SELECT * FROM zonas WHERE zona_municipio = $mun";
			$result = $ClsCon->exec_query($sql);
			return $result;
		}
		
	}	
?>
