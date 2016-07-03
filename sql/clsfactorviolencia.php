<?php
	require_once ("conex.php");

	class factorviolencia{
		function trae_factores() {
			$ClsCon = new ClsConex();
			$sql= "SELECT * FROM factorviolencia ORDER BY fact_descripcion ASC";
			$result = $ClsCon->exec_query($sql);
			return $result;
		}
		
	}	
?>
