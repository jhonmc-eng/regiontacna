<?php
if(!$this->session->userdata('id')) {
    redirect(base_url().'admin/login');
}
?>

<section class="content-header">
	<div class="content-header-left">
		<h1>Ver Fotos</h1>
	</div>
	<div class="content-header-right">
		<a href="<?php echo base_url(); ?>admin/photo/add" class="btn btn-primary btn-sm">Agregar Nuevo</a>
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


      <div class="box box-info">
        
        <div class="box-body table-responsive">
          <table id="example1" class="table table-bordered table-striped">
			<thead>
			    <tr>
			        <th>Nro</th>
			        <th>Foto</th>
			        <th>Acción</th>
			    </tr>
			</thead>
            <tbody>

            	<?php
            	$i=0;
            	foreach ($photo as $row) {
            		$i++;
	            	?>
	                <tr>
	                    <td><?php echo $i; ?></td>
	                    <td>
	                    	<img src="<?php echo base_url(); ?>public/uploads/<?php echo $row['photo_name']; ?>" width="140">
	                    </td>
	                    <td>
	                        <a href="<?php echo base_url(); ?>admin/photo/edit/<?php echo $row['photo_id']; ?>" class="btn btn-primary btn-xs">Editar</a>
                            <a href="<?php echo base_url(); ?>admin/photo/delete/<?php echo $row['photo_id']; ?>" class="btn btn-danger btn-xs" onClick="return confirm('Deseas Eliminar Realmente?');">Borrar</a> 
	                    </td>
	                </tr>
	                <?php
            	}
            	?>
            </tbody>
          </table>
        </div>
      </div> 

</section>