<?php
	session_start();
	unset($_SESSION['usuario']);
	unset($_SESSION['ps']);	
	unset($_SESSION['nom1']);		
	unset($_SESSION['nom2']);		
	unset($_SESSION['ape1']);			
	unset($_SESSION['ape2']);
	session_destroy();
	echo "<script>alert('logout1');</script>";
    header('Location: login.php');
?>
