<?php
	require_once ("conex.php");

	class comisaria{
		function trae_comisarias() {
			$ClsCon = new ClsConex();
			$sql= "SELECT * FROM comisarias WHERE com_tipo = 1 ";
			$result = $ClsCon->exec_query($sql);
			return $result;
		}
	}	
?>
