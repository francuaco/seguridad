<?php
	require_once ("conex.php");

	class inicio{
		function comprueba($usu,$pass) {
			$ClsCon = new ClsConex();
			$sql= "SELECT COUNT(*) as tiene ";
			$sql.= " FROM usuario";
			$sql.= " WHERE usu_usuario = '$usu'";
			$sql.= " AND  usu_pass = '$pass'";
			$sql.= " AND usu_situacion = 1"; 
			$result = $ClsCon->exec_query($sql);
			foreach($result as $row){
				$re = $row["tiene"];
			}
			return $re;

		}

		function get_login($usu,$pass) {
			$ClsCon = new ClsConex();
			$sql= "SELECT * FROM usuario WHERE usu_usuario = '$usu' AND usu_pass = '$pass' AND usu_situacion = 1"; 	
			$result = $ClsCon->exec_query($sql);
			return $result;

		}
	}	
?>
