<?php

	class ClsConex {
		var $conn;
		function getConexion() {
			$Connect = mysqli_connect("localhost", "root", "","di");
			if ($Connect) {
				$this->conn = $Connect;
			}else {
				return false;
			}
		}
		
		function exec_query($sql){
		$this->getConexion();
		$conn = $this->conn;
			if($conn){
				$result = mysqli_query($conn,$sql);
				if($result){
					$x = 0;
					while($row = $result->fetch_assoc()){
						$result_array[$x] = $row;
						$x++;
					}
					if($x > 0){ return $result_array; }
				}
				return "!E";
			}
			
		}
			
		function exec_sql($sql){
			$this->getConexion();
			$conn = $this->conn; //trae el string de conexion
			if($conn){ //revisa si no viene null
				$ssql = split(';',$sql); //separa en varios query's el sql si fuera el caso
				mysqli_autocommit($conn, FALSE); //desactiva el auto-commit en la BD
				foreach($ssql as $squery){ //ciclo para ejecucion de query's
					$squery = trim($squery); //limpia la cadena de caracteres 
					if(strlen($squery)>0){ //valida si la fila de query no va vacia
						$rs = mysqli_query($conn,$squery); //ejecuta la sentencia
						if(!$rs){ 
							mysqli_rollback($conn); //valida si existe algun error ejecuta un rollback y sale de la funcion devolviendo "0"
							mysqli_close($conn); 
							return 0; 
						}				
					}
				}
				mysqli_commit($conn); //si no encontro errores ejecuta el commit
				mysqli_close($conn); //cierra el cursor
				return 1;
			}else{ return 0;}
			
		}
		
		function encriptar($cadena){
			$key='';  // Una clave de codificacion, debe usarse la misma para encriptar y desencriptar
			$encrypted = base64_encode(mcrypt_encrypt(MCRYPT_RIJNDAEL_256, md5($key), $cadena, MCRYPT_MODE_CBC, md5(md5($key))));
			return $encrypted; //Devuelve el string encriptado
		}
	 
		function desencriptar($cadena){
			$key='';  // Una clave de codificacion, debe usarse la misma para encriptar y desencriptar
			$decrypted = rtrim(mcrypt_decrypt(MCRYPT_RIJNDAEL_256, md5($key), base64_decode($cadena), MCRYPT_MODE_CBC, md5(md5($key))), "\0");
			return $decrypted;  //Devuelve el string desencriptado
		}
				
	}

?>