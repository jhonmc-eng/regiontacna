<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Admin Panel</title>

	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<link rel="stylesheet" href="<?php echo base_url(); ?>public/admin/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
	<link rel="stylesheet" href="<?php echo base_url(); ?>public/dist/css/AdminLTE.min.css">
	<link rel="stylesheet" href="<?php echo base_url(); ?>public/dist/css/skins/_all-skins.min.css">
	<link rel="stylesheet" href="<?php echo base_url(); ?>public/admin/css/datepicker3.css">
	<link rel="stylesheet" href="<?php echo base_url(); ?>public/admin/css/select2.min.css">
	<link rel="stylesheet" href="<?php echo base_url(); ?>public/admin/css/dataTables.bootstrap.css">
	<link rel="stylesheet" href="<?php echo base_url(); ?>public/admin/css/magnific-popup.css">	
	<link rel="stylesheet" href="<?php echo base_url(); ?>public/admin/css/jquery.fancybox.css">
	<link rel="stylesheet" href="<?php echo base_url(); ?>public/admin/morris/morris.css">
	<link rel="stylesheet" href="<?php echo base_url(); ?>public/admin/jvectormap/jquery-jvectormap-1.2.2.css">
	<link rel="stylesheet" href="<?php echo base_url(); ?>public/admin/datepicker/datepicker3.css">
	<link rel="stylesheet" href="<?php echo base_url(); ?>public/admin/daterangepicker/daterangepicker.css">
	<link rel="stylesheet" href="<?php echo base_url(); ?>public/admin/iCheck/flat/blue.css">
</head>

<body class="hold-transition fixed skin-blue sidebar-mini">

	<div class="wrapper">

		<header class="main-header">

			<a href="<?php echo base_url(); ?>admin/dashboard" class="logo">
				<span class="logo-mini"><b>DE</b>21</span>
				<span class="logo-lg"><?php echo $setting['website_name']; ?></span>
			</a>

			<nav class="navbar navbar-static-top">
				
				<a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
					<span class="sr-only">Toggle navigation</span>
				</a>
				<!-- Navbar Right Menu -->
				<div class="navbar-custom-menu">
					<ul class="nav navbar-nav">
					<!-- Messages: style can be found in dropdown.less-->
					
					<!-- Notifications: style can be found in dropdown.less -->
					<li class="dropdown notifications-menu">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						<i class="fa fa-bell-o"></i>
						<span class="label label-warning">Nuevo</span>
						</a>
						<ul class="dropdown-menu">
						<li class="header">Notificaciones</li>
						<li>
							<!-- inner menu: contains the actual data -->
							<ul class="menu">
							<li>
								<a href="#">
								<i class="fa fa-users text-aqua"></i> Añadir Categoria 
								</a>
							</li>
							<li>
								<a href="#">
								<i class="fa fa-warning text-yellow"></i> Añadir Noticias
								</a>
							</li>
							<li>
								<a href="#">
								<i class="fa fa-users text-red"></i> Añadir Miembros del Equipo
								</a>
							</li>
							<li>
								<a href="#">
								<i class="fa fa-shopping-cart text-green"></i> Añadir Imágenes en Galeria
								</a>
							</li>
							<li>
								<a href="#">
								<i class="fa fa-user text-red"></i> Añadir Clientes
								</a>
							</li>
							</ul>
						</li>
						<li class="footer"><a href="#">- o -</a></li>
						</ul>
					</li>
		
					<!-- User Account: style can be found in dropdown.less -->
					<li class="dropdown user user-menu">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						<img src="<?php echo base_url(); ?>public/uploads/<?php echo $this->session->userdata('photo'); ?>" class="user-image" alt="User Image">
						<span class="hidden-xs"><?php echo $this->session->userdata('email'); ?></span>
						</a>
						<ul class="dropdown-menu">
						<!-- User image -->
						<li class="user-header">
							<img src="<?php echo base_url(); ?>public/uploads/<?php echo $this->session->userdata('photo'); ?>" class="img-circle" alt="User Image">

							<p>
							<?php echo $this->session->userdata('email'); ?>
							<small>
								<?php
									// Obteniendo la fecha actual del sistema con PHP
									$fechaActual = date('d-m-Y');									
									echo $fechaActual;
								?>
							</small>
							</p>
						</li>
						<!-- Menu Body -->
						<!-- Menu Footer-->
						<li class="user-footer">
							<div class="pull-left">
							<a href="<?php echo base_url(); ?>admin/profile" class="btn btn-default btn-flat">Editar</a>
							</div>
							<div class="pull-right">
							<a href="<?php echo base_url(); ?>admin/login/logout" class="btn btn-default btn-flat" class="btn btn-default btn-flat">Salir</a>
							</div>
						</li>
						</ul>
					</li>
					<!-- Control Sidebar Toggle Button -->
					<li>
						<a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
					</li>
					</ul>
				</div>


			</nav>
		</header>

  		<?php
			$class_name = '';
		    $segment_2 = 0;
		    $segment_3 = 0;
		    $class_name = $this->router->fetch_class();
		    $segment_2 = $this->uri->segment('2');
		    $segment_3 = $this->uri->segment('3');
		?>

  		<aside class="main-sidebar">
    		<section class="sidebar">

				<div class="user-panel">
					<div class="pull-left image">
					<img src="<?php echo base_url(); ?>public/uploads/<?php echo $this->session->userdata('photo'); ?>" class="img-circle" alt="User Image">
					</div>
					<div class="pull-left info">
					<p><?php echo $this->session->userdata('email'); ?></p>
					<a href="#"><i class="fa fa-circle text-success"></i> Online</a>
					</div>
				</div>
      			<ul class="sidebar-menu">

			        <li class="treeview <?php if($class_name == 'dashboard') {echo 'active';} ?>">
			          <a href="<?php echo base_url(); ?>admin/dashboard">
			            <i class="fa fa-laptop"></i> <span>Inicio</span>
			          </a>
			        </li>

					<?php if( $this->session->userdata('role') == 'Admin' ): ?>
			        <li class="treeview <?php if( ($class_name == 'setting') ) {echo 'active';} ?>">
			          <a href="<?php echo base_url(); ?>admin/setting">
			            <i class="fa fa-cog"></i> <span>Configuración</span>
			          </a>
					</li>
					
			        <li class="treeview <?php if( ($class_name == 'feature')||($class_name == 'why_choose')||($class_name == 'photo')||($class_name == 'slider')||($class_name == 'team_member')||($class_name == 'service')||($class_name == 'faq')) {echo 'active';} ?>">
						<a href="#">
							<i class="fa fa-bars"></i>
							<span>Sobre Nosotros</span>
							<span class="pull-right-container">
								<i class="fa fa-angle-left pull-right"></i>
							</span>
						</a>
						<ul class="treeview-menu">
							<li><a href="<?php echo base_url(); ?>admin/feature"><i class="fa fa-circle-o"></i> Lo que ofrecemos</a></li>
							<li><a href="<?php echo base_url(); ?>admin/why_choose"><i class="fa fa-circle-o"></i> Por que elegirnos</a></li>
							<li><a href="<?php echo base_url(); ?>admin/slider"><i class="fa fa-circle-o"></i> Slider</a></li>
							<li><a href="<?php echo base_url(); ?>admin/team_member"><i class="fa fa-circle-o"></i> Miembros</a></li>
							<li><a href="<?php echo base_url(); ?>admin/photo"><i class="fa fa-circle-o"></i> Galeria de Fotos</a></li>
							<li><a href="<?php echo base_url(); ?>admin/service"><i class="fa fa-circle-o"></i> Servicios</a></li>
							<li><a href="<?php echo base_url(); ?>admin/faq"><i class="fa fa-circle-o"></i> Preguntas Frecuentes</a></li>
						</ul>
					</li>

			        <li class="treeview <?php if( ($class_name == 'page') ) {echo 'active';} ?>">
			          <a href="<?php echo base_url(); ?>admin/page">
			            <i class="fa fa-file-text"></i> <span>Páginas</span>
			          </a>
			        </li>

			        <li class="treeview <?php if( ($class_name == 'menu') ) {echo 'active';} ?>">
			          <a href="<?php echo base_url(); ?>admin/menu">
			            <i class="fa fa-file-text"></i> <span>Menu</span>
			          </a>
			        </li>

			        <li class="treeview <?php if( ($class_name == 'lang') ) {echo 'active';} ?>">
			          <a href="<?php echo base_url(); ?>admin/lang">
			            <i class="fa fa-language"></i> <span>Idioma</span>
			          </a>
			        </li>
			      
			        <li class="treeview <?php if( ($class_name == 'category') || ($class_name == 'news') || ($class_name == 'comment') ) {echo 'active';} ?>">
						<a href="#">
							<i class="fa fa-newspaper-o"></i>
							<span>Noticias</span>
							<span class="pull-right-container">
								<i class="fa fa-angle-left pull-right"></i>
							</span>
						</a>
						<ul class="treeview-menu">
							<li><a href="<?php echo base_url(); ?>admin/category"><i class="fa fa-circle-o"></i>Categoria</a></li>
							<li><a href="<?php echo base_url(); ?>admin/news"><i class="fa fa-circle-o"></i> Noticias</a></li>
							<li><a href="<?php echo base_url(); ?>admin/comment"><i class="fa fa-circle-o"></i> Comentarios</a></li>
						</ul>
					</li>

					<li class="treeview <?php if( ($class_name == 'event') ) {echo 'active';} ?>">
			          <a href="<?php echo base_url(); ?>admin/event">
			            <i class="fa fa-calendar"></i> <span>Eventos</span>
			          </a>
			        </li>

					<li class="treeview <?php if( ($class_name == 'subscriber') ) {echo 'active';} ?>">
						<a href="#">
							<i class="fa fa-comment"></i>
							<span>Suscriptores</span>
							<span class="pull-right-container">
								<i class="fa fa-angle-left pull-right"></i>
							</span>
						</a>
						<ul class="treeview-menu">
							<li><a href="<?php echo base_url(); ?>admin/subscriber"><i class="fa fa-circle-o"></i>Ver Todos</a></li>
							<li><a href="<?php echo base_url(); ?>admin/subscriber/send_email"><i class="fa fa-circle-o"></i>Enviar Correo</a></li>
						</ul>
					</li>

			        <li class="treeview <?php if( ($class_name == 'testimonial') ) {echo 'active';} ?>">
			          <a href="<?php echo base_url(); ?>admin/testimonial">
			            <i class="fa fa-user-plus"></i> <span>Testimonios</span>
			          </a>
			        </li>

			        <li class="treeview <?php if( ($class_name == 'pricing_table') ) {echo 'active';} ?>">
			          <a href="<?php echo base_url(); ?>admin/pricing_table">
			            <i class="fa fa-usd"></i> <span>Tabla de Precios</span>
			          </a>
					</li>
					
			        <li class="treeview <?php if( ($class_name == 'portfolio')||($class_name == 'portfolio_category') ) {echo 'active';} ?>">
						<a href="#">
							<i class="fa fa-bars"></i>
							<span>Portafolio</span>
							<span class="pull-right-container">
								<i class="fa fa-angle-left pull-right"></i>
							</span>
						</a>
						<ul class="treeview-menu">
							<li><a href="<?php echo base_url(); ?>admin/portfolio_category"><i class="fa fa-circle-o"></i> Categoria</a></li>
							<li><a href="<?php echo base_url(); ?>admin/portfolio"><i class="fa fa-circle-o"></i> Portafolio</a></li>
						</ul>
					</li>

			        <li class="treeview <?php if( ($class_name == 'client') ) {echo 'active';} ?>">
			          <a href="<?php echo base_url(); ?>admin/client">
			            <i class="fa fa-clone"></i> <span>Clientes</span>
			          </a>
			        </li>

			        <li class="treeview <?php if( ($class_name == 'social_media') ) {echo 'active';} ?>">
			          <a href="<?php echo base_url(); ?>admin/social_media">
			            <i class="fa fa-picture-o"></i> <span>Redes Sociales</span>
			          </a>
			        </li>

			        <li class="treeview <?php if( ($class_name == 'file') ) {echo 'active';} ?>">
			          <a href="<?php echo base_url(); ?>admin/file">
			            <i class="fa fa-clone"></i> <span>Archivos</span>
			          </a>
			        </li>

			        	        

			        <?php endif; ?>        
      			</ul>
    		</section>
  		</aside>

  		<div class="content-wrapper">