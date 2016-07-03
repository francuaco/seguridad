<?php
	require_once ("conex.php");

	class depmun{
		function trae_departamentos() {
			$ClsCon = new ClsConex();
			$sql= "SELECT * FROM depmun WHERE MOD(dm_codigo,100)= 0 ORDER BY dm_desc ASC";
			$result = $ClsCon->exec_query($sql);
			return $result;
		}
		
		function trae_municipios($depto){
			$ClsCon = new ClsConex();
			$del = ($depto + 1);
			$al =  ($depto + 99);
			$sql = "SELECT * FROM depmun WHERE dm_codigo BETWEEN $del AND $al";
			$result = $ClsCon->exec_query($sql);
			return $result;
		}
	}	
?>
