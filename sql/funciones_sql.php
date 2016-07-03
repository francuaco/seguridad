<?php
	require_once ("funciones_conex.php");

	class ClsDependencia{

    function get_dependencia($id,$dlg = '',$dct = '',$dmun = '',$dep = '') {
		$ClsCon = new ClsConex();
		$dlg = strtoupper($dlg);
		$dct = strtoupper($dct);
				
        $sql= "SELECT * ";
		$sql.= " FROM dependencias,depmun";
		$sql.= " WHERE dep_mundep = dm_codigo";
		if(strlen($id)>0) { 
			  $sql.= " AND dep_llave = $id"; 
		}
		if(strlen($dlg)>0) { 
			  $sql.= " AND dep_desc_lg like '%$dlg%'"; 
		}
		if(strlen($dct)>0) { 
			  $sql.= " AND dep_desc_ct like '%$dct%'"; 
		}
		if(strlen($dmun)>0) { 
			  $sql.= " AND dm_codigo = $dmun"; 
		}
		if(strlen($dep)>0) {
			$mun1 = $dep + 1;
			$mun2 = $dep + 99;
			$sql.= " dm_codigo BETWEEN $mun1 AND $mun2"; 
		}
		$sql.= " ORDER BY dep_desc_lg ASC";
		
		$result = $ClsCon->exec_query($sql);
		//echo $sql;
		return $result;

	}
	
	function count_dependencia($id,$dlg = '',$dct = '',$dmun = '',$dep = '') {
		$ClsCon = new ClsConex();
		$dlg = strtoupper($dlg);
		$dct = strtoupper($dct);
		
        $sql= "SELECT COUNT(*) as total";
		$sql.= " FROM dependencias,depmun";
		$sql.= " WHERE dep_mundep = dm_codigo";
		if(strlen($id)>0) { 
			  $sql.= " AND dep_llave = $id"; 
		}
		if(strlen($dlg)>0) { 
			  $sql.= " AND dep_desc_lg like '%$dlg%'"; 
		}
		if(strlen($dct)>0) { 
			  $sql.= " AND dep_desc_ct like '%$dct%'"; 
		}
		if(strlen($dmun)>0) { 
			  $sql.= " AND dm_codigo = $dmun"; 
		}
		if(strlen($dep)>0) {
			$mun1 = $dep + 1;
			$mun2 = $dep + 99;
			$sql.= " dm_codigo BETWEEN $mun1 AND $mun2"; 
		}
		//echo $sql;
		$result = $ClsCon->exec_query($sql);
		foreach($result as $row){
			$total = $row['total'];
		}
		return $total;
	}
	
}	
?>
