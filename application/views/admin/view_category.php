<?php
if(!$this->session->userdata('id')) {
    redirect(base_url().'admin');
}
?>

<section class="content-header">
	<div class="content-header-left">
		<h1>Ver Categorias</h1>
	</div>
	<div class="content-header-right">
		<a href="<?php echo base_url(); ?>admin/category/add" class="btn btn-primary btn-sm">Agregar Nuevo</a>
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
			        <th>Nombre categoria</th>
                    <th>Banner</th>
			        <th>Acción</th>
			    </tr>
			</thead>
            <tbody>
            	<?php
            	$i=0;
            	foreach ($category as $row) {
            		$i++;
            		?>
					<tr>
	                    <td><?php echo $i; ?></td>
	                    <td><?php echo $row['category_name']; ?></td>
                        <td>
                            <img src="<?php echo base_url(); ?>public/uploads/<?php echo $row['category_banner']; ?>" alt="<?php echo $row['category_name']; ?>" style="width:250px;">
                        </td>
	                    <td>
	                        <a href="<?php echo base_url(); ?>admin/category/edit/<?php echo $row['category_id']; ?>" class="btn btn-primary btn-xs">Editar</a>
	                        <a href="<?php echo base_url(); ?>admin/category/delete/<?php echo $row['category_id']; ?>" class="btn btn-danger btn-xs" onClick="return confirm('Deseas Eliminar Realmente?');">Borrar</a>
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


<div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">Delete Confirmation</h4>
            </div>
            <div class="modal-body">
                ¿Esta seguro de eliminar el registro?
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                <a class="btn btn-danger btn-ok">Borrar</a>
            </div>
        </div>
    </div>
</div>