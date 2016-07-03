<?php
	require_once ("conex.php");

	class personal{
		function busca_personal($dpi,$nom1,$nom2,$ape1,$ape2) {
			$ClsCon = new ClsConex();
			$sql= "SELECT COUNT(*) as total FROM personal WHERE per_nom1 = '$nom1' AND per_nom2 = '$nom2' AND per_ape1 = '$ape1' AND per_ape2 = '$ape2' AND per_dpi = '$dpi'";
			$result = $ClsCon->exec_query($sql);
			foreach($result as $row){
				$cont = $row["total"];
			}
			return $cont;
		}		
		
		function trae_personal($dpi,$nom1,$nom2,$ape1,$ape2) {
			$ClsCon = new ClsConex();
			$sql= "SELECT per_codigo FROM personal WHERE per_nom1 = '$nom1' AND per_nom2 = '$nom2' AND per_ape1 = '$ape1' AND per_ape2 = '$ape2' AND per_dpi = '$dpi'";
			$result = $ClsCon->exec_query($sql);
			return $result;
		}
		
		function max_personal(){
			$ClsCon = new ClsConex();
			$sql= "SELECT MAX(per_codigo) as maximo FROM personal";
			$result = $ClsCon->exec_query($sql);
			foreach($result as $row){
				$max = $row["maximo"];
			}
			return $max;			
			
		}
		function graba_personal($cod,$dpi,$nom1,$nom2,$ape1,$ape2,$nac,$obs){
			$ClsCon = new ClsConex();
			$sql= "INSERT INTO personal VALUES ($cod,'$dpi','$nom1','$nom2','$ape1','$ape2','$nac','$obs')";
			$result = $ClsCon->exec_sql($sql);
			return $result;	
		}
		
		
	}	
?>
