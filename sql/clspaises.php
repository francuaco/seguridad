<?php
	require_once ("conex.php");

	class paises{
		function trae_paises() {
			$ClsCon = new ClsConex();
			$sql= "SELECT * FROM paises ORDER BY pais_gentilicio ASC";
			$result = $ClsCon->exec_query($sql);
			return $result;
		}
	}	
?>
