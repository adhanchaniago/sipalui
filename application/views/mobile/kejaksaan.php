<div class="page-title page-title-small">
	<h2>
		<a href="<?=base_url('mobile/menu')?>" data-back-button><i class="fa fa-arrow-left"></i></a><?=$title?>
	</h2>
</div>
<div class="card header-card shape-rounded" data-card-height="150">
	<div class="card-overlay bg-highlight opacity-95"></div>
	<div class="card-overlay dark-mode-tint"></div>
	<div class="card-bg bg-20"></div>
</div>
<div class="card card-style">
	<div class="content mt-0 mb-0">
		<div class="list-group list-custom-small list-icon-0">
			<?php foreach($kjk as $row): ?>
			<a href="<?=site_url('mobile/kejaksaan_detail/'.$row->id_kejaksaan)?>">
				<span><?=$row->nama?></span><i class="fa fa-angle-right"></i>
			</a>
			<?php endforeach; ?>
		</div>
	</div>
</div>