<?php
	require_once ("conex.php");

	class aldea{
		function trae_aldeas($mun) {
			$ClsCon = new ClsConex();
			$sql= "SELECT * FROM aldea WHERE al_municipio = $mun ORDER BY al_descripcion ASC";
			$result = $ClsCon->exec_query($sql);
			return $result;
		}
	}	
?>
