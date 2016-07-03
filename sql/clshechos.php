<?php
	require_once ("conex.php");

	class hechos{
		function trae_hechos() {
			$ClsCon = new ClsConex();
			$sql= "SELECT * FROM hecho ";
			$result = $ClsCon->exec_query($sql);
			return $result;

		}
	}	
?>
