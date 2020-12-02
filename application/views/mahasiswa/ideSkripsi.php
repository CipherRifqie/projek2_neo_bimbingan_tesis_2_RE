<?php if ($ide_skripsi) { ?>
	<div style="height: 30rem; overflow: auto">
		<?php foreach ($ide_skripsi->result() as $u) {	?>

			<h6 class="card-title"> <i class="fas fa-book fa-xs"></i> <?php echo $u->JudulIde;?></h6>
			<h6 class="card-subtitle mb-2 text-muted"><i class="fas fa-calendar-alt fa-xs"></i> <?php echo $u->TanggalIde;?></h6>

			<p class="card-text text-justify"><?php echo $u->DeskripsiIde;?></p>
			<hr>

		<?php } ?>
	</div> 
<?php } else { ?>
	<div class='row align-items-center'>
		<div class='col-md'>
			<h2>Ide Tesis Tidak Ditemukan</h2>
			Halo. Tesis mu masih ada yang belum diproses. Silahkan ajukan ide Tesis mu sebanyak-banyaknya. Isikan deskripsi dan judulnya yang sesuai serta deskripsikan ide Tesismu minimal 200 kata. Good Luck! 
		</div>
		<div class='col-md-5'>
			<img class="card-img-top" src="<?= base_url('assets/web/ide.jpg')?>">
		</div>
	</div>
<?php } ?>

