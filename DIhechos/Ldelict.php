<?php 
	include_once('xajax_hechos.php');
	session_start();
	$nom = $_SESSION['nom1']." ".$_SESSION['ape1'];
?>
<!DOCTYPE html>
<html>
	<?php include ('../DIinicio/head.php'); ?>
	  <style>
    /* FROM HTTP://WWW.GETBOOTSTRAP.COM
     * Glyphicons
     *
     * Special styles for displaying the icons and their classes in the docs.
     */

    .bs-glyphicons {
      padding-left: 0;
      padding-bottom: 1px;
      margin-bottom: 20px;
      list-style: none;
      overflow: hidden;
    }

    .bs-glyphicons li {
      float: left;
      width: 25%;
      height: 115px;
      padding: 10px;
      margin: 0 -1px -1px 0;
      font-size: 12px;
      line-height: 1.4;
      text-align: center;
      border: 1px solid #ddd;
    }

    .bs-glyphicons .glyphicon {
      margin-top: 5px;
      margin-bottom: 10px;
      font-size: 24px;
    }

    .bs-glyphicons .glyphicon-class {
      display: block;
      text-align: center;
      word-wrap: break-word; /* Help out IE10+ with class names */
    }

    .bs-glyphicons li:hover {
      background-color: rgba(86, 61, 124, .1);
    }

    @media (min-width: 768px) {
      .bs-glyphicons li {
        width: 12.5%;
      }
    }
  </style>
	<body class="hold-transition skin-blue sidebar-mini">
		<div class="wrapper">
			<?php include ('../DIinicio/menu.php'); ?>
			<div class="content-wrapper">
				<section class="content-header center"><h1>HECHOS DELICTIVOS</h1></section>
				<?php echo tabla_hechos_delictivos(); ?>
				<div id = "contenido"></div>
			</div>
  			<footer class="main-footer">
				<div class="pull-right hidden-xs"><b>Version</b> 2.3.3</div>
				<strong>Copyright &copy; 2016 Derechos Reservados
			</footer>
			<div class="control-sidebar-bg"></div>
		</div>
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"></div>
		<?php include ('../DIinicio/foot.php') ?>
		<script>
			$(function () {
			$('#example2').DataTable({
			  "paging": true,
			  "lengthChange": false,
			  "searching": false,
			  "ordering": true,
			  "info": true,
			  "autoWidth": false
			});
			});
		</script>
	</body>
</html>
