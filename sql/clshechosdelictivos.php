<?php
	require_once ("conex.php");

	class delictivos{

		function max_hecho_delict() {
			$ClsCon = new ClsConex();
			$sql= "SELECT max(del_codigo) as maximo FROM hecho_delictivo ";
			$result = $ClsCon->exec_query($sql);
			foreach($result as $row){
				$total = $row['maximo'];
			}
			if ($total > 0){
				$max = ($total + 1);
			}else{
				$max = 1;
			}
			return $max;
		}
		
		
		function insert_hecho_delict($cod,$fecha,$hecho,$com,$timepicker,$dir,$depto,$mun,$zon,$ald,$fact,$forma,$obs,$fec){
			$ClsCon = new ClsConex();
			session_start();
			$user = $_SESSION['usuario'];
			$sql= "insert into hecho_delictivo values ($cod,'$fecha','$timepicker',$hecho,$com,'$dir',$depto,$mun,'$zon','$ald',$fact,$forma,'$obs',$user,'$fec','1')";			
			$result = $ClsCon->exec_sql($sql);
			return $result;
		}
		
		function trae_hechos_delictivos(){
			$ClsCon = new ClsConex();
			$sql = "SELECT del_codigo,h_descripcion,com_descripcion, del_fecha, del_hora
					FROM hecho_delictivo, hecho,comisarias
					WHERE del_comisaria = com_codigo
					AND del_hecho = h_codigo
					AND del_situacion = 1";
			$result = $ClsCon->exec_query($sql);
			return $result;
		}
	}	
?>
