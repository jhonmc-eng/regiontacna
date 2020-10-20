<?php
if(!$this->session->userdata('id')) {
	redirect(base_url().'admin');
}
?>
<section class="content-header">
	<div class="content-header-left">
		<h1>Editar Servicio</h1>
	</div>
	<div class="content-header-right">
		<a href="<?php echo base_url(); ?>admin/service" class="btn btn-primary btn-sm">Ver Todo</a>
	</div>
</section>

<section class="content">

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

			<?php echo form_open_multipart(base_url().'admin/service/edit/'.$service['id'],array('class' => 'form-horizontal'));?>
				<div class="box box-info">
					<div class="box-body">						
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">Nombre*</label>
							<div class="col-sm-6">
								<input type="text" autocomplete="off" class="form-control" name="name" value="<?php echo $service['name']; ?>">
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">Descripción Corta *</label>
							<div class="col-sm-8">
								<textarea class="form-control" name="short_description" style="height:140px;"><?php echo $service['short_description']; ?></textarea>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">Descripción *</label>
							<div class="col-sm-8">
								<textarea class="form-control editor" name="description"><?php echo $service['description']; ?></textarea>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">Imagen Actual</label>
							<div class="col-sm-9" style="padding-top:5px;">
								<img src="<?php echo base_url(); ?>public/uploads/<?php echo $service['photo']; ?>" alt="Service Photo" style="width:200px;">
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">Foto</label>
							<div class="col-sm-6" style="padding-top:5px">
								<input type="file" name="photo">(Solo se permiten jpg, jpeg, gif y png)
							</div>
						</div>
						<h3 class="seo-info">Información SEO Para Google</h3>
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">Título para Google</label>
							<div class="col-sm-6">
								<input type="text" autocomplete="off" class="form-control" name="meta_title" value="<?php echo $service['meta_title']; ?>">
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">Palabra Clave para Google</label>
							<div class="col-sm-8">
								<textarea class="form-control" name="meta_keyword" style="height:80px;"><?php echo $service['meta_keyword']; ?></textarea>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">Descripción para Google</label>
							<div class="col-sm-8">
								<textarea class="form-control" name="meta_description" style="height:80px;"><?php echo $service['meta_description']; ?></textarea>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-2 control-label"></label>
							<div class="col-sm-6">
								<button type="submit" class="btn btn-success pull-left" name="form1">Actualizar</button>
							</div>
						</div>
					</div>
				</div>
			<?php echo form_close(); ?>
		</div>
	</div>

</section>