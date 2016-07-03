		<header class="main-header">
				<a href="index2.html" class="logo">
					<span class="logo-mini"><b>D</b>I</span>
					<span class="logo-lg"><b>D.I. |</b> E.M.D.N.</span>
				</a>
				<nav class="navbar navbar-static-top">
					<a href="../DIinicio/inicio.php" class="sidebar-toggle" data-toggle="offcanvas" role="button">
						<span class="sr-only">Toggle navigation</span>
					</a>
					<!-- Navbar Right Menu -->
					<div class="navbar-custom-menu">
						<ul class="nav navbar-nav">
							<li class="dropdown user user-menu">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">
									<img src="../dist/per/di.jpg" class="user-image" alt="User Image">
									<span class="hidden-xs"><?php echo $nom; ?></span>
								</a>
								<ul class="dropdown-menu">
									<!-- User image -->
									<li class="user-header">
										<img src="../dist/per/di.jpg" class="img-circle" alt="User Image">
										<!--p>EMPLEO
											<small>Otra Información Personal</small>
										</p-->
									</li>
									<li class="user-footer">
										<div align = "center">
											<a href="logout.php" class="btn btn-default btn-flat">CERRAR SESIÓN</a>
										</div>
									</li>
								</ul>
							</li>
							<!--li><a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a></li-->
						</ul>
					</div>
				</nav>
			</header>
			<aside class="main-sidebar">
				<section class="sidebar">
					<div class="user-panel">
						<div class="pull-left image"><img src="../dist/per/di.jpg" class="img-circle" alt="User Image"></div>
						<div class="pull-left info">
							<p><?php echo $nom; ?></p>
							<a href="../DIinicio/inicio.php"><i class="fa fa-circle text-success"></i> En línea</a>
						</div>
					</div>
					<ul class="sidebar-menu">
						<li class="header">MENU PRINCIPAL</li>
						<li class="treeview">
							<a href="#"><span>HECHOS DELICTIVOS</span> <i class="fa fa-angle-left pull-right"></i></a>
							<ul class="treeview-menu">
								<li><a href="../DIhechos/Fdelict.php"><i class="fa fa-circle-o"></i>Nuevo Hecho Delictivo</a></li>
								<li><a href="../DIhechos/Ldelict.php"><i class="fa fa-circle-o"></i>Revisar Hechos</a></li>
								<li><a href="../DIhechos/Rdelict.php"><i class="fa fa-circle-o"></i> Reportes</a></li>
								<li><a href="../DIhechos/Edelict.php"><i class="fa fa-circle-o"></i> Estadísticas</a></li>
							</ul>
						</li>        
						<li class="treeview">
							<a href="#"><span>GRUPOS ARMADOS</span> <i class="fa fa-angle-left pull-right"></i></a>
							<ul class="treeview-menu">
								<li><a href="../DIgrupos/Fgruarm.php"><i class="fa fa-circle-o"></i> Nuevo Grupo Armado</a></li>
								<li><a href="../DIgrupos/Rgruarm.php"><i class="fa fa-circle-o"></i> Reportes</a></li>
								<li><a href="../DIgrupos/Egruarm.php"><i class="fa fa-circle-o"></i> Estadísticas</a></li>
							</ul>
						</li>		
						<li class="treeview">
							<a href="#"><span>TRAFICO DE ILEGALES</span> <i class="fa fa-angle-left pull-right"></i></a>
							<ul class="treeview-menu">
								<li><a href="../DIilegal/Fdeport.php"><i class="fa fa-circle-o"></i> DEPORTACIONES</a></li>
								<li><a href="../DIilegal/Rdeport.php"><i class="fa fa-circle-o"></i> Reportes</a></li>
								<li><a href="../DIilegal/Edeport.php"><i class="fa fa-circle-o"></i> Estadísticas</a></li>
							</ul>
						</li>		
						<li class="treeview">
							<a href="#"><span>MARAS</span> <i class="fa fa-angle-left pull-right"></i></a>
							<ul class="treeview-menu">
								<li><a href="../DImaras/Fmaras.php"><i class="fa fa-circle-o"></i> Nuevo Grupo Armado</a></li>
								<li><a href="../DImaras/Rmaras.php"><i class="fa fa-circle-o"></i> Reportes</a></li>
								<li><a href="../DImaras/Emaras.php"><i class="fa fa-circle-o"></i> Estadísticas</a></li>
							</ul>
						</li>
						<li><a href="#"><i class="fa fa-book"></i> <span>ESTADISTICAS GENERALES</span></a></li>
						<li class="header">CONFIGURACION</li>
						<li><a href="../DIadmin/Fadmin.php"><i class="fa fa-circle-o text-aqua"></i> <span>ADMINISTRADOR</span></a></li>
						<li><a href="../DIadmin/Fmantenimientos.php"><i class="fa fa-circle-o text-yellow"></i> <span>ACTUALIZACIONES</span></a></li>
						<li><a href="../DIinicio/logout.php"><i class="fa fa-circle-o text-red"></i> <span>CERRAR SESIÓN</span></a></li>
					</ul>
				</section>
			</aside>			