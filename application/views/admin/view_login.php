<?php
$CI =& get_instance();
$CI->load->model('admin/Model_common');
$setting_data = $CI->Model_common->get_setting_data();
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Iniciar Sesión</title>

	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">

	<link rel="stylesheet" href="<?php echo base_url(); ?>public/admin/css/bootstrap.min.css">
	<link rel="stylesheet" href="<?php echo base_url(); ?>public/admin/css/font-awesome.min.css">
	<link rel="stylesheet" href="<?php echo base_url(); ?>public/admin/css/ionicons.min.css">
	<link rel="stylesheet" href="<?php echo base_url(); ?>public/admin/css/datepicker3.css">
	<link rel="stylesheet" href="<?php echo base_url(); ?>public/admin/css/all.css">
	<link rel="stylesheet" href="<?php echo base_url(); ?>public/admin/css/select2.min.css">
	<link rel="stylesheet" href="<?php echo base_url(); ?>public/admin/css/dataTables.bootstrap.css">
	<link rel="stylesheet" href="<?php echo base_url(); ?>public/admin/css/AdminLTE.min.css">
	<link rel="stylesheet" href="<?php echo base_url(); ?>public/admin/css/_all-skins.min.css">
	<link rel="stylesheet" href="<?php echo base_url(); ?>public/admin/css/style.css">
	<style>
		.login-page {
			background: #333;
		}
		.login-logo {
			color: #fff;
		}
	</style>

</head>

<body class="hold-transition login-page sidebar-mini">

<div class="login-box">
	<div class="login-logo">
	
		Administrador <b><?php echo $setting_data['website_name']; ?> </b> 
		
	</div>
  	<div class="login-box-body">
    	<p class="login-box-msg">INICIAR SESIÓN</p>
    
	    <?php
        if($this->session->flashdata('error')) {
            echo '<div class="error">'.$this->session->flashdata('error').'</div>';
        }
        if($this->session->flashdata('success')) {
            echo '<div class="success">'.$this->session->flashdata('success').'</div>';
        }
        ?>

		<?php echo form_open(base_url().'admin'); ?>
			<div class="form-group has-feedback">
				<span class="glyphicon glyphicon-envelope form-control-feedback"></span>
				<input class="form-control" placeholder="Correo Electrónico" name="email" type="email" autocomplete="off" autofocus>				
			</div>
			<div class="form-group has-feedback">
				<span class="glyphicon glyphicon-lock form-control-feedback"></span>
				<input class="form-control" placeholder="Contraseña" name="password" type="password" autocomplete="off" value="">				
			</div>
			<div class="row">
				<div class="col-xs-1">

				</div>				
				<div class="col-xs-5">
					<div class="checkbox icheck">
						<label>
							<input type="checkbox"> Recordar
						</label>
					</div>
				</div>
				
				<div class="col-xs-5">
					<input type="submit" class="btn btn-primary btn-block btn-flat login-button" name="form1" value="Iniciar Sesión">
				</div>
			</div>
		<?php echo form_close(); ?>

		<!-- /.social-auth-links -->
		<a href="<?php echo base_url(); ?>admin/forget-password" class="text-center">Olvidaste tu Contraseña</a>
	</div>
</div>




<script src="<?php echo base_url(); ?>public/admin/js/jquery-2.2.3.min.js"></script>
<script src="<?php echo base_url(); ?>public/admin/js/bootstrap.min.js"></script>
<script src="<?php echo base_url(); ?>public/admin/js/jquery.dataTables.min.js"></script>
<script src="<?php echo base_url(); ?>public/admin/js/dataTables.bootstrap.min.js"></script>
<script src="<?php echo base_url(); ?>public/admin/js/select2.full.min.js"></script>
<script src="<?php echo base_url(); ?>public/admin/js/jquery.inputmask.js"></script>
<script src="<?php echo base_url(); ?>public/admin/js/jquery.inputmask.date.extensions.js"></script>
<script src="<?php echo base_url(); ?>public/admin/js/jquery.inputmask.extensions.js"></script>
<script src="<?php echo base_url(); ?>public/admin/js/moment.min.js"></script>
<script src="<?php echo base_url(); ?>public/admin/js/bootstrap-datepicker.js"></script>
<script src="<?php echo base_url(); ?>public/admin/js/icheck.min.js"></script>
<script src="<?php echo base_url(); ?>public/admin/js/fastclick.js"></script>
<script src="<?php echo base_url(); ?>public/admin/js/jquery.sparkline.min.js"></script>
<script src="<?php echo base_url(); ?>public/admin/js/jquery.slimscroll.min.js"></script>
<script src="<?php echo base_url(); ?>public/admin/js/app.min.js"></script>
<script src="<?php echo base_url(); ?>public/admin/js/demo.js"></script>

</body>
</html>