<?php 
	include_once('xajax_inicio.php');
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>DIRECCION DE INTELIGENCIA</title>
		<?php $xajax->printJavascript("../"); ?>
		<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
		<link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="../bootstrap/css/font-awesome.min.css">
		<link rel="stylesheet" href="../bootstrap/css/ionicons.min.css">
		<link rel="stylesheet" href="../bootstrap/css/di.min.css">
		<link rel="stylesheet" href="../plugins/iCheck/square/blue.css">
		<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
	</head>
	<body class="hold-transition login-page">
		<div class="login-box">
			<div class="login-logo">
				<a><b>DIRECCIÓN DE INTELIGENCIA</b></a>
			</div>
			<div class="login-box-body">
				<p class="login-box-msg">Ingrese usuario y contraseña</p>
				<form  onsubmit = "return false" id = "flogin">
					<div class="form-group has-feedback">
						<input id = "usu" type="text" class="form-control" placeholder="usuario">
						<span class="glyphicon glyphicon-envelope form-control-feedback"></span>
					</div>
					<div class="form-group has-feedback">
						<input id = "pass" type="password" class="form-control" placeholder="Password">
						<span class="glyphicon glyphicon-lock form-control-feedback"></span>
					</div>
					<div class="row">
						<div class="col-xs-4" >
							<button onclick="login()" class="btn btn-primary">ENTRAR</button>
						</div>
					</div>
				</form>
			</div>
		</div>
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"></div>
		<script src="../plugins/jQuery/jQuery-2.2.0.min.js"></script>
		<script src="../bootstrap/js/bootstrap.min.js"></script>
		<script src="../plugins/iCheck/icheck.min.js"></script>
		<script>
			$(function () {
				$('input').iCheck({
					checkboxClass: 'icheckbox_square-blue',
					radioClass: 'iradio_square-blue',
					increaseArea: '20%' // optional
					});
			});
			
			function login(){
				usu = document.getElementById("usu");
				pass = document.getElementById("pass");
				xajax_login(usu.value,pass.value);
			}
		</script>
	</body>
</html>
