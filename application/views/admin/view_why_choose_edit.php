<?php
if(!$this->session->userdata('id')) {
	redirect(base_url().'admin');
}
?>
<section class="content-header">
	<div class="content-header-left">
		<h1>Editar por qué elegirnos</h1>
	</div>
	<div class="content-header-right">
		<a href="<?php echo base_url(); ?>admin/why_choose" class="btn btn-primary btn-sm">Ver Todo</a>
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

			<?php echo form_open_multipart(base_url().'admin/why_choose/edit/'.$why_choose['id'],array('class' => 'form-horizontal'));?>
				<div class="box box-info">
					<div class="box-body">						
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">Nombre*</label>
							<div class="col-sm-6">
								<input type="text" autocomplete="off" class="form-control" name="name" value="<?php echo $why_choose['name']; ?>">
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">Contenido*</label>
							<div class="col-sm-8">
								<textarea class="form-control" name="content" style="height:140px;"><?php echo $why_choose['content']; ?></textarea>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">Icono*</label>
							<div class="col-sm-6">
								<input type="text" autocomplete="off" class="form-control" name="icon" value="<?php echo $why_choose['icon']; ?>">
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">Imagen Actual</label>
							<div class="col-sm-9" style="padding-top:5px;">
								<img src="<?php echo base_url(); ?>public/uploads/<?php echo $why_choose['photo']; ?>" alt="Why Choose Us Photo" style="width:200px;">
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">Foto</label>
							<div class="col-sm-6" style="padding-top:5px">
								<input type="file" name="photo">(Solo se permiten jpg, jpeg, gif y png)
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