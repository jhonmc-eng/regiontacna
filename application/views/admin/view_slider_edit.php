<?php
if(!$this->session->userdata('id')) {
	redirect(base_url().'admin');
}
?>

<section class="content-header">
	<div class="content-header-left">
		<h1>Editar Slider</h1>
	</div>
	<div class="content-header-right">
		<a href="<?php echo base_url(); ?>admin/slider" class="btn btn-primary btn-sm">Ver Todo</a>
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

			<?php echo form_open_multipart(base_url().'admin/slider/edit/'.$slider['id'], array('class' => 'form-horizontal'));?>
				<div class="box box-info">
					<div class="box-body">
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">Imagen Actual</label>
							<div class="col-sm-9" style="padding-top:5px">
								<img src="<?php echo base_url(); ?>public/uploads/<?php echo $slider['photo']; ?>" alt="Slider Photo" style="width:400px;">
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">Foto</label>
							<div class="col-sm-6" style="padding-top:5px">
								<input type="file" name="photo">(Solo se permiten jpg, jpeg, gif y png)
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">Título</label>
							<div class="col-sm-6">
								<input type="text" autocomplete="off" class="form-control" name="heading" value="<?php echo $slider['heading']; ?>">
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">Contenido</label>
							<div class="col-sm-6">
								<textarea class="form-control" name="content" style="height:140px;"><?php echo $slider['content']; ?></textarea>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">1er Botón </label>
							<div class="col-sm-6">
								<input type="text" autocomplete="off" class="form-control" name="button1_text" value="<?php echo $slider['button1_text']; ?>">
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">URL 1</label>
							<div class="col-sm-6">
								<input type="text" autocomplete="off" class="form-control" name="button1_url" value="<?php echo $slider['button1_url']; ?>">
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">2do Botón </label>
							<div class="col-sm-6">
								<input type="text" autocomplete="off" class="form-control" name="button2_text" value="<?php echo $slider['button2_text']; ?>">
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">URL 2</label>
							<div class="col-sm-6">
								<input type="text" autocomplete="off" class="form-control" name="button2_url" value="<?php echo $slider['button2_url']; ?>">
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">Posición</label>
							<div class="col-sm-2">
								<select name="position" class="form-control select2">
									<option value="Left" <?php if($slider['position'] == 'Left') {echo 'selected';} ?>>Izquierda</option>
									<option value="Right" <?php if($slider['position'] == 'Right') {echo 'selected';} ?>>Derecha</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-2 control-label"></label>
							<div class="col-sm-6">
								<button type="submit" class="btn btn-success pull-left" name="form1">Enviar</button>
							</div>
						</div>
					</div>
				</div>
			<?php echo form_close(); ?>
		</div>
	</div>

</section>