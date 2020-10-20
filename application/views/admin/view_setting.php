<?php
if(!$this->session->userdata('id')) {
    redirect(base_url().'admin');
}
?>

<section class="content-header">
	<div class="content-header-left">
		<h1>Configuración</h1>
	</div>
</section>

<section class="content" style="min-height:auto;margin-bottom: -30px;">
	<div class="row">
		<div class="col-md-12">
			<?php
	        if($this->session->flashdata('error')) {
	            ?>
				<div class="callout callout-danger">
					<p><?php echo $this->session->flashdata('error'); ?></p>
				</div>
	            <?php
	        }
	        if($this->session->flashdata('success')) {
	            ?>
				<div class="callout callout-success">
					<p><?php echo $this->session->flashdata('success'); ?></p>
				</div>
	            <?php
	        }
	        ?>

		</div>
	</div>
</section>

<section class="content">

	<div class="row">
		<div class="col-md-12">
							
				<div class="nav-tabs-custom">
					<ul class="nav nav-tabs">
						<li class="active"><a href="#tab_logo" data-toggle="tab">Logo</a></li>
						<li><a href="#tab_favicon" data-toggle="tab">Icono</a></li>
						<li><a href="#tab_top_bar" data-toggle="tab">Barra Superior</a></li>
						<li><a href="#tab_footer" data-toggle="tab">Pie de Página</a></li>
						<li><a href="#tab_email" data-toggle="tab">Correo</a></li>
						<li><a href="#tab_banner" data-toggle="tab">Banners</a></li>
						<li><a href="#tab_sidebar" data-toggle="tab">Barra Lateral</a></li>
                        <li><a href="#tab_color" data-toggle="tab">Color</a></li>
                        <li><a href="#tab_language" data-toggle="tab">Idioma</a></li>
                        <li><a href="#tab_admin" data-toggle="tab">Otro</a></li>
					</ul>

					<div class="tab-content">

          				<div class="tab-pane active" id="tab_logo">
          					<?php echo form_open_multipart(base_url().'admin/setting/update',array('class' => 'form-horizontal')); ?>
          					<div class="box box-info">
								<div class="box-body">
									<div class="form-group">
							            <label for="" class="col-sm-2 control-label">Imagen Publicada</label>
							            <div class="col-sm-6" style="padding-top:6px;">
							                <img src="<?php echo base_url(); ?>public/uploads/<?php echo $setting['logo']; ?>" class="existing-photo" style="height:80px;">
							            </div>
							        </div>
									<div class="form-group">
							            <label for="" class="col-sm-2 control-label">Nueva Imagen</label>
							            <div class="col-sm-6" style="padding-top:6px;">
							                <input type="file" name="photo_logo">
							            </div>
							        </div>
							        <div class="form-group">
										<label for="" class="col-sm-2 control-label"></label>
										<div class="col-sm-6">
											<button type="submit" class="btn btn-success pull-left" name="form_logo">Actualizar Logo</button>
										</div>
									</div>
								</div>
							</div>
							<?php echo form_close(); ?>
          				</div>


          				<div class="tab-pane" id="tab_favicon">

          					<?php echo form_open_multipart(base_url().'admin/setting/update',array('class' => 'form-horizontal')); ?>
							<div class="box box-info">
								<div class="box-body">
									<div class="form-group">
							            <label for="" class="col-sm-2 control-label">Icono Publicada</label>
							            <div class="col-sm-6" style="padding-top:6px;">
							                <img src="<?php echo base_url(); ?>public/uploads/<?php echo $setting['favicon']; ?>" class="existing-photo" style="height:40px;">
							            </div>
							        </div>
									<div class="form-group">
							            <label for="" class="col-sm-2 control-label">Icono Imagem</label>
							            <div class="col-sm-6" style="padding-top:6px;">
							                <input type="file" name="photo_favicon">
							            </div>
							        </div>
							        <div class="form-group">
										<label for="" class="col-sm-2 control-label"></label>
										<div class="col-sm-6">
											<button type="submit" class="btn btn-success pull-left" name="form_favicon">Actualizar Icono</button>
										</div>
									</div>
								</div>
							</div>
							<?php echo form_close(); ?>
          				</div>


          				<div class="tab-pane" id="tab_top_bar">
							<?php echo form_open(base_url().'admin/setting/update',array('class' => 'form-horizontal')); ?>
							<div class="box box-info">
								<div class="box-body">									
									<div class="form-group">
										<label for="" class="col-sm-3 control-label">Correo (Barra Superior)</label>
										<div class="col-sm-6">
											<input type="text" class="form-control" name="top_bar_email" value="<?php echo $setting['top_bar_email']; ?>">
										</div>
									</div>
									<div class="form-group">
										<label for="" class="col-sm-3 control-label">Celular (Barra Superior)</label>
										<div class="col-sm-6">
											<input type="text" class="form-control" name="top_bar_phone" value="<?php echo $setting['top_bar_phone']; ?>">
										</div>
									</div>
									<div class="form-group">
										<label for="" class="col-sm-3 control-label"></label>
										<div class="col-sm-6">
											<button type="submit" class="btn btn-success pull-left" name="form_top_bar">Actualizar</button>
										</div>
									</div>
								</div>
							</div>
							<?php echo form_close(); ?>
          				</div>



          				<div class="tab-pane" id="tab_footer">
							

							<?php echo form_open(base_url().'admin/setting/update',array('class' => 'form-horizontal')); ?>
							<h3 class="sec_title" style="margin-top:0px;">Sección General</h3>
							<div class="form-group">
								<label for="" class="col-sm-3 control-label">Derechos de Autor </label>
								<div class="col-sm-6">
									<input class="form-control" type="text" name="footer_copyright" value="<?php echo $setting['footer_copyright']; ?>">
								</div>
							</div>
							<div class="form-group">
								<label for="" class="col-sm-3 control-label">Dirección </label>
								<div class="col-sm-6">
									<textarea class="form-control" name="footer_address" style="height:70px;"><?php echo $setting['footer_address']; ?></textarea>
								</div>
							</div>
                            <div class="form-group">
                                <label for="" class="col-sm-3 control-label">Correo Electrónico </label>
                                <div class="col-sm-6">
                                    <textarea class="form-control" name="footer_email" style="height:70px;"><?php echo $setting['footer_email']; ?></textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="" class="col-sm-3 control-label">Celular y Teléfono </label>
                                <div class="col-sm-6">
                                    <textarea class="form-control" name="footer_phone" style="height:70px;"><?php echo $setting['footer_phone']; ?></textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="" class="col-sm-3 control-label">Número de Noticias </label>
                                <div class="col-sm-6">
                                    <input class="form-control" type="text" name="footer_recent_news_item" value="<?php echo $setting['footer_recent_news_item']; ?>">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="" class="col-sm-3 control-label">Número de Imágenes del Portafolio </label>
                                <div class="col-sm-6">
                                    <input class="form-control" type="text" name="footer_recent_portfolio_item" value="<?php echo $setting['footer_recent_portfolio_item']; ?>">
                                </div>
                            </div>
                            <div class="form-group">
								<label for="" class="col-sm-3 control-label"></label>
								<div class="col-sm-6">
									<button type="submit" class="btn btn-success pull-left" name="form_footer_general">Actualizar</button>
								</div>
							</div>
							<?php echo form_close(); ?>



							<?php echo form_open_multipart(base_url().'admin/setting/update',array('class' => 'form-horizontal')); ?>
                            <h3 class="sec_title">Sección de Suscripción</h3>                            
							<div class="form-group">
                                <label for="" class="col-sm-3 control-label">Texto al suscribirse </label>
                                <div class="col-sm-6">
                                    <textarea class="form-control" name="newsletter_text" style="height:70px;"><?php echo $setting['newsletter_text']; ?></textarea>
                                </div>
                            </div>
                            <div class="form-group">
								<label for="" class="col-sm-3 control-label"></label>
								<div class="col-sm-6">
									<button type="submit" class="btn btn-success pull-left" name="form_footer_newsletter">Actualizar</button>
								</div>
							</div>
							<?php echo form_close(); ?>



							<?php echo form_open_multipart(base_url().'admin/setting/update',array('class' => 'form-horizontal')); ?>
                            <h3 class="sec_title">Sección Llamada a la Acción</h3>
                            <div class="form-group">
                                <label for="" class="col-sm-3 control-label">CTA Text </label>
                                <div class="col-sm-6">
                                    <textarea name="cta_text" class="form-control" cols="30" rows="10" style="height:80px;"><?php echo $setting['cta_text']; ?></textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="" class="col-sm-3 control-label">CTA Botón URL </label>
                                <div class="col-sm-6">
                                    <input type="text" name="cta_button_url" class="form-control" value="<?php echo $setting['cta_button_url']; ?>">
                                </div>
                            </div>
							<div class="form-group">
								<label for="" class="col-sm-3 control-label"></label>
								<div class="col-sm-6">
									<button type="submit" class="btn btn-success pull-left" name="form_footer_cta">Actualizar</button>
								</div>
							</div>
							<?php echo form_close(); ?>




							<?php echo form_open_multipart(base_url().'admin/setting/update',array('class' => 'form-horizontal')); ?>
							<h3 class="sec_title" style="margin-top:0px;">Sección Foto de Llamada a la Acción</h3>
							<div class="form-group">
                                <label for="" class="col-sm-3 control-label">Imagen Publicada </label>
                                <div class="col-sm-6">
                                    <img src="<?php echo base_url(); ?>public/uploads/<?php echo $setting['cta_background']; ?>" alt="" style="width:300px;">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="" class="col-sm-3 control-label">Nueva Imagen </label>
                                <div class="col-sm-6">
                                    <input type="file" name="photo" style="padding-top:5px;">
                                </div>
                            </div>
							<div class="form-group">
								<label for="" class="col-sm-3 control-label"></label>
								<div class="col-sm-6">
									<button type="submit" class="btn btn-success pull-left" name="form_footer_cta_background">Actualizar</button>
								</div>
							</div>
							<?php echo form_close(); ?>



          				</div>



          				<div class="tab-pane" id="tab_email">
          					<?php echo form_open(base_url().'admin/setting/update',array('class' => 'form-horizontal')); ?>
							<div class="box box-info">
								<div class="box-body">
                                    <div class="form-group">
                                        <label for="" class="col-sm-3 control-label">Enviar correo electrónico desde *</label>
                                        <div class="col-sm-4">
                                            <input type="text" class="form-control" name="send_email_from" maxlength="255" autocomplete="off" value="<?php echo $setting['send_email_from']; ?>">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="" class="col-sm-3 control-label">Recibir correo electrónico a *</label>
                                        <div class="col-sm-4">
                                            <input type="text" class="form-control" name="receive_email_to" maxlength="255" autocomplete="off" value="<?php echo $setting['receive_email_to']; ?>">
                                        </div>
                                    </div>
                                    <div class="form-group">
				                        <label for="" class="col-sm-3 control-label">SMTP Active? *</label>
				                        <div class="col-sm-4">
				                            <select name="smtp_active" class="form-control select2">
				                            	<option value="Yes" <?php if($setting['smtp_active'] == 'Yes') {echo 'selected';} ?>>Si</option>
				                            	<option value="No" <?php if($setting['smtp_active'] == 'No') {echo 'selected';} ?>>No</option>
				                            </select>
				                        </div>
				                    </div>
				                    <div class="form-group">
				                        <label for="" class="col-sm-3 control-label">SSL Active? *</label>
				                        <div class="col-sm-4">
				                            <select name="smtp_ssl" class="form-control select2">
				                            	<option value="Yes" <?php if($setting['smtp_ssl'] == 'Yes') {echo 'selected';} ?>>Si</option>
				                            	<option value="No" <?php if($setting['smtp_ssl'] == 'No') {echo 'selected';} ?>>No</option>
				                            </select>
				                        </div>
				                    </div>
				                    <div class="form-group">
				                        <label for="" class="col-sm-3 control-label">SMTP Host </label>
				                        <div class="col-sm-4">
				                            <input type="text" class="form-control" name="smtp_host" maxlength="255" autocomplete="off" value="<?php echo $setting['smtp_host']; ?>">
				                        </div>
				                    </div>
				                    <div class="form-group">
				                        <label for="" class="col-sm-3 control-label">SMTP Puerto </label>
				                        <div class="col-sm-4">
				                            <input type="text" class="form-control" name="smtp_port" maxlength="255" autocomplete="off" value="<?php echo $setting['smtp_port']; ?>">
				                        </div>
				                    </div>
				                    <div class="form-group">
				                        <label for="" class="col-sm-3 control-label">SMTP Usuario </label>
				                        <div class="col-sm-4">
				                            <input type="text" class="form-control" name="smtp_username" maxlength="255" autocomplete="off" value="<?php echo $setting['smtp_username']; ?>">
				                        </div>
				                    </div>
				                    <div class="form-group">
				                        <label for="" class="col-sm-3 control-label">SMTP Contraseña </label>
				                        <div class="col-sm-4">
				                            <input type="text" class="form-control" name="smtp_password" maxlength="255" autocomplete="off" value="<?php echo $setting['smtp_password']; ?>">
				                        </div>
				                    </div>
									<div class="form-group">
										<label for="" class="col-sm-3 control-label"></label>
										<div class="col-sm-6">
											<button type="submit" class="btn btn-success pull-left" name="form_email">Actualizar</button>
										</div>
									</div>
								</div>
							</div>
							<?php echo form_close(); ?>
          				</div>



          				<div class="tab-pane" id="tab_banner">
                            <div class="row">
                                <div class="col-md-6">
                                    <table class="table table-bordered">                                
                                        <tr>
                                            <?php echo form_open_multipart(base_url().'admin/setting/update',array('class' => '')); ?>
                                            <td style="width:50%">
                                                <h4>Página Acerca de</h4>
                                                <p>
                                                    <img src="<?php echo base_url().'public/uploads/'.$setting['banner_about']; ?>" alt="" style="width: 100%;height:auto;">
                                                </p>                                        
                                            </td>
                                            <td style="width:50%">
                                                <h4>Cambiar Banner</h4>
                                                Seleccionar<input type="file" name="photo">
                                                <input type="submit" class="btn btn-primary btn-xs" value="Cambiar" style="margin-top:10px;" name="form_banner_about">
                                            </td>
                                            <?php echo form_close(); ?>
                                        </tr>
                                        
                                        <tr>
                                            <?php echo form_open_multipart(base_url().'admin/setting/update',array('class' => '')); ?>
                                            <td style="width:50%">
                                                <h4>Página Testimonios</h4>
                                                <p>
                                                    <img src="<?php echo base_url().'public/uploads/'.$setting['banner_testimonial']; ?>" alt="" style="width: 100%;height:auto;">  
                                                </p>                                        
                                            </td>
                                            <td style="width:50%">
                                                <h4>Cambiar Banner</h4>
                                                Seleccionar Imagen<input type="file" name="photo">
                                                <input type="submit" class="btn btn-primary btn-xs" value="Cambiar" style="margin-top:10px;" name="form_banner_testimonial">
                                            </td>
                                            <?php echo form_close(); ?>
                                        </tr>
                                        <tr>
                                            <?php echo form_open_multipart(base_url().'admin/setting/update',array('class' => '')); ?>
                                            <td style="width:50%">
                                                <h4>Página de Noticias</h4>
                                                <p>
                                                    <img src="<?php echo base_url().'public/uploads/'.$setting['banner_news']; ?>" alt="" style="width: 100%;height:auto;">  
                                                </p>                                        
                                            </td>
                                            <td style="width:50%">
                                                <h4>Cambiar Banner</h4>
                                                Seleccionar Imagen<input type="file" name="photo">
                                                <input type="submit" class="btn btn-primary btn-xs" value="Cambiar" style="margin-top:10px;" name="form_banner_news">
                                            </td>
                                            <?php echo form_close(); ?>
                                        </tr>
                                        <tr>
                                            <?php echo form_open_multipart(base_url().'admin/setting/update',array('class' => '')); ?>
                                            <td style="width:50%">
                                                <h4>Página de Eventos</h4>
                                                <p>
                                                    <img src="<?php echo base_url().'public/uploads/'.$setting['banner_event']; ?>" alt="" style="width: 100%;height:auto;">  
                                                </p>                                        
                                            </td>
                                            <td style="width:50%">
                                                <h4>Cambiar Banner</h4>
                                                Seleccionar Imagen<input type="file" name="photo">
                                                <input type="submit" class="btn btn-primary btn-xs" value="Cambiar" style="margin-top:10px;" name="form_banner_event">
                                            </td>
                                            <?php echo form_close(); ?>
                                        </tr>
                                        <tr>
                                            <?php echo form_open_multipart(base_url().'admin/setting/update',array('class' => '')); ?>
                                            <td style="width:50%">
                                                <h4>Página Contáctenos</h4>
                                                <p>
                                                    <img src="<?php echo base_url().'public/uploads/'.$setting['banner_contact']; ?>" alt="" style="width: 100%;height:auto;">  
                                                </p>                                        
                                            </td>
                                            <td style="width:50%">
                                                <h4>Cambiar Banner</h4>
                                                Seleccionar Imagen<input type="file" name="photo">
                                                <input type="submit" class="btn btn-primary btn-xs" value="Cambiar" style="margin-top:10px;" name="form_banner_contact">
                                            </td>
                                            <?php echo form_close(); ?>
                                        </tr>
                                        <tr>
                                            <?php echo form_open_multipart(base_url().'admin/setting/update',array('class' => '')); ?>
                                            <td style="width:50%">
                                                <h4>Página de Busqueda</h4>
                                                <p>
                                                    <img src="<?php echo base_url().'public/uploads/'.$setting['banner_search']; ?>" alt="" style="width: 100%;height:auto;">  
                                                </p>                                        
                                            </td>
                                            <td style="width:50%">
                                                <h4>Cambiar Banner</h4>
                                                Seleccionar Imagen<input type="file" name="photo">
                                                <input type="submit" class="btn btn-primary btn-xs" value="Cambiar" style="margin-top:10px;" name="form_banner_search">
                                            </td>
                                            <?php echo form_close(); ?>
                                        </tr>
                                        
                                        <tr>
                                            <?php echo form_open_multipart(base_url().'admin/setting/update',array('class' => '')); ?>
                                            <td style="width:50%">
                                                <h4>Página de Privacidad</h4>
                                                <p>
                                                    <img src="<?php echo base_url().'public/uploads/'.$setting['banner_privacy']; ?>" alt="" style="width: 100%;height:auto;">  
                                                </p>                                        
                                            </td>
                                            <td style="width:50%">
                                                <h4>Cambiar Banner</h4>
                                                Seleccionar Imagen<input type="file" name="photo">
                                                <input type="submit" class="btn btn-primary btn-xs" value="Cambiar" style="margin-top:10px;" name="form_banner_privacy">
                                            </td>
                                            <?php echo form_close(); ?>
                                        </tr>
                                        <tr>
                                            <?php echo form_open_multipart(base_url().'admin/setting/update',array('class' => '')); ?>
                                            <td style="width:50%">
                                                <h4>Página Verificar Suscriptores</h4>
                                                <p>
                                                    <img src="<?php echo base_url().'public/uploads/'.$setting['banner_verify_subscriber']; ?>" alt="" style="width: 100%;height:auto;">  
                                                </p>                                        
                                            </td>
                                            <td style="width:50%">
                                                <h4>Cambiar Banner</h4>
                                                Seleccionar Imagen<input type="file" name="photo">
                                                <input type="submit" class="btn btn-primary btn-xs" value="Cambiar" style="margin-top:10px;" name="form_banner_verify_subscriber">
                                            </td>
                                            <?php echo form_close(); ?>
                                        </tr>
                                        
                                    </table>
                                </div>
                                <div class="col-md-6">
                                    <table class="table table-bordered">    
                                        <tr>
                                            <?php echo form_open_multipart(base_url().'admin/setting/update',array('class' => '')); ?>
                                            <td style="width:50%">
                                                <h4>Página Preguntas Frecuentes</h4>
                                                <p>
                                                    <img src="<?php echo base_url().'public/uploads/'.$setting['banner_faq']; ?>" alt="" style="width: 100%;height:auto;">  
                                                </p>                                        
                                            </td>
                                            <td style="width:50%">
                                                <h4>Cambiar Banner</h4>
                                                Seleccionar Imagen<input type="file" name="photo">
                                                <input type="submit" class="btn btn-primary btn-xs" value="Cambiar" style="margin-top:10px;" name="form_banner_faq">
                                            </td>
                                            <?php echo form_close(); ?>
                                        </tr>

                                        <tr>
                                            <?php echo form_open_multipart(base_url().'admin/setting/update',array('class' => '')); ?>
                                            <td style="width:50%">
                                                <h4>Página Servicios</h4>
                                                <p>
                                                    <img src="<?php echo base_url().'public/uploads/'.$setting['banner_service']; ?>" alt="" style="width: 100%;height:auto;">  
                                                </p>                                        
                                            </td>
                                            <td style="width:50%">
                                                <h4>Cambiar Banner</h4>
                                                Seleccionar Imagen<input type="file" name="photo">
                                                <input type="submit" class="btn btn-primary btn-xs" value="Cambiar" style="margin-top:10px;" name="form_banner_service">
                                            </td>
                                            <?php echo form_close(); ?>
                                        </tr>
                                        
                                        <tr>
                                            <?php echo form_open_multipart(base_url().'admin/setting/update',array('class' => '')); ?>
                                            <td style="width:50%">
                                                <h4>Página portafolio</h4>
                                                <p>
                                                    <img src="<?php echo base_url().'public/uploads/'.$setting['banner_portfolio']; ?>" alt="" style="width: 100%;height:auto;">  
                                                </p>                                        
                                            </td>
                                            <td style="width:50%">
                                                <h4>Cambiar Banner</h4>
                                                Seleccionar Imagen<input type="file" name="photo">
                                                <input type="submit" class="btn btn-primary btn-xs" value="Cambiar" style="margin-top:10px;" name="form_banner_portfolio">
                                            </td>
                                            <?php echo form_close(); ?>
                                        </tr>
                                        <tr>
                                            <?php echo form_open_multipart(base_url().'admin/setting/update',array('class' => '')); ?>
                                            <td style="width:50%">
                                                <h4>Página del Equipo</h4>
                                                <p>
                                                    <img src="<?php echo base_url().'public/uploads/'.$setting['banner_team']; ?>" alt="" style="width: 100%;height:auto;">  
                                                </p>                                        
                                            </td>
                                            <td style="width:50%">
                                                <h4>Cambiar Banner</h4>
                                                Seleccionar Imagen<input type="file" name="photo">
                                                <input type="submit" class="btn btn-primary btn-xs" value="Cambiar" style="margin-top:10px;" name="form_banner_team">
                                            </td>
                                            <?php echo form_close(); ?>
                                        </tr>
                                        <tr>
                                            <?php echo form_open_multipart(base_url().'admin/setting/update',array('class' => '')); ?>
                                            <td style="width:50%">
                                                <h4>Página de Tabla de Precios</h4>
                                                <p>
                                                    <img src="<?php echo base_url().'public/uploads/'.$setting['banner_pricing']; ?>" alt="" style="width: 100%;height:auto;">  
                                                </p>                                        
                                            </td>
                                            <td style="width:50%">
                                                <h4>Cambiar Banner</h4>
                                                Seleccionar Imagen<input type="file" name="photo">
                                                <input type="submit" class="btn btn-primary btn-xs" value="Cambiar" style="margin-top:10px;" name="form_banner_pricing">
                                            </td>
                                            <?php echo form_close(); ?>
                                        </tr>
                                        <tr>
                                            <?php echo form_open_multipart(base_url().'admin/setting/update',array('class' => '')); ?>
                                            <td style="width:50%">
                                                <h4>Página Galeria de Fotos</h4>
                                                <p>
                                                    <img src="<?php echo base_url().'public/uploads/'.$setting['banner_photo_gallery']; ?>" alt="" style="width: 100%;height:auto;">  
                                                </p>                                        
                                            </td>
                                            <td style="width:50%">
                                                <h4>Cambiar Banner</h4>
                                                Seleccionar Imagen<input type="file" name="photo">
                                                <input type="submit" class="btn btn-primary btn-xs" value="Cambiar" style="margin-top:10px;" name="form_banner_photo_gallery">
                                            </td>
                                            <?php echo form_close(); ?>
                                        </tr>
                                        <tr>
                                            <?php echo form_open_multipart(base_url().'admin/setting/update',array('class' => '')); ?>
                                            <td style="width:50%">
                                                <h4>Página de Términos</h4>
                                                <p>
                                                    <img src="<?php echo base_url().'public/uploads/'.$setting['banner_terms']; ?>" alt="" style="width: 100%;height:auto;">  
                                                </p>                                        
                                            </td>
                                            <td style="width:50%">
                                                <h4>Cambiar Banner</h4>
                                                Seleccionar Imagen<input type="file" name="photo">
                                                <input type="submit" class="btn btn-primary btn-xs" value="Cambiar" style="margin-top:10px;" name="form_banner_terms">
                                            </td>
                                            <?php echo form_close(); ?>
                                        </tr>
                                        
                                    </table>
                                </div>
                            </div>
          				</div>



          				<div class="tab-pane" id="tab_sidebar">
          					<?php echo form_open(base_url().'admin/setting/update',array('class' => 'form-horizontal')); ?>
							<div class="box box-info">
								<div class="box-body">                                    
                                    <h3 class="sec_title" style="margin-top:0;">Página de noticias: sección de la barra lateral</h3>
                                    <div class="form-group">
                                        <label for="" class="col-sm-3 control-label">Publicaciones Recientes *</label>
                                        <div class="col-sm-4">
                                            <input type="text" class="form-control" name="sidebar_total_recent_post" maxlength="255" autocomplete="off" value="<?php echo $setting['sidebar_total_recent_post']; ?>">
                                        </div>
                                    </div>

                                    <h3 class="sec_title">Página de noticias: sección de la barra lateral</h3>
                                    <div class="form-group">
                                        <label for="" class="col-sm-3 control-label">Total de próximos eventos *</label>
                                        <div class="col-sm-4">
                                            <input type="text" class="form-control" name="sidebar_total_upcoming_event" maxlength="255" autocomplete="off" value="<?php echo $setting['sidebar_total_upcoming_event']; ?>">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="" class="col-sm-3 control-label">Total de eventos pasados *</label>
                                        <div class="col-sm-4">
                                            <input type="text" class="form-control" name="sidebar_total_past_event" maxlength="255" autocomplete="off" value="<?php echo $setting['sidebar_total_past_event']; ?>">
                                        </div>
                                    </div>
                                   
									<div class="form-group">
										<label for="" class="col-sm-3 control-label"></label>
										<div class="col-sm-6">
											<button type="submit" class="btn btn-success pull-left" name="form_sidebar">Actualizar</button>
										</div>
									</div>
								</div>
							</div>
							<?php echo form_close(); ?>
          				</div>


                        
                        <div class="tab-pane" id="tab_color">
                            <?php echo form_open(base_url().'admin/setting/update',array('class' => 'form-horizontal')); ?>
                            <div class="box box-info">
                                <div class="box-body">
                                    <div class="form-group">
                                        <label for="" class="col-sm-2 control-label">Color </label>
                                        <div class="col-sm-4">
                                            <input type="text" name="front_end_color" class="form-control jscolor" value="<?php echo $setting['front_end_color']; ?>">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="" class="col-sm-2 control-label"></label>
                                        <div class="col-sm-6">
                                            <button type="submit" class="btn btn-success pull-left" name="form_color">Actualizar</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <?php echo form_close(); ?>
                        </div>



                        <div class="tab-pane" id="tab_language">
                            <?php echo form_open(base_url().'admin/setting/update',array('class' => 'form-horizontal')); ?>
                            <div class="box box-info">
                                <div class="box-body">
                                    <div class="form-group">
                                        <label for="" class="col-sm-2 control-label">Ver Botón de Idioma? </label>
                                        <div class="col-sm-3">
                                            <select name="language_status" class="form-control select2">
                                            	<option value="Show" <?php if($setting['language_status'] == 'Show') {echo 'selected';} ?>>Ver</option>
                                            	<option value="Hide" <?php if($setting['language_status'] == 'Hide') {echo 'selected';} ?>>Ocultar</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="" class="col-sm-2 control-label"></label>
                                        <div class="col-sm-6">
                                            <button type="submit" class="btn btn-success pull-left" name="form_language">Actualizar</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <?php echo form_close(); ?>
                        </div>





                        <div class="tab-pane" id="tab_admin">
                            <?php echo form_open(base_url().'admin/setting/update',array('class' => 'form-horizontal')); ?>
                            <div class="box box-info">
                                <div class="box-body">
                                    <div class="form-group">
                                        <label for="" class="col-sm-2 control-label">Nombre de la Página Web </label>
                                        <div class="col-sm-4">
                                            <input type="text" name="website_name" class="form-control" value="<?php echo $setting['website_name']; ?>">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="" class="col-sm-2 control-label"></label>
                                        <div class="col-sm-6">
                                            <button type="submit" class="btn btn-success pull-left" name="form_other">Actualizar</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <?php echo form_close(); ?>
                        </div>
                        










          			</div>
				</div>

			
		</div>
	</div>

</section>