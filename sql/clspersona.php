<?php
	require_once ("conex.php");

	class persona{
		function trae_persona() {
			$ClsCon = new ClsConex();
			$sql= "SELECT * FROM hecho ";
			$result = $ClsCon->exec_query($sql);
			return $result;

		}
	}	
?>
