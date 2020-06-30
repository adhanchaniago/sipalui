<div class="page-title page-title-small">
	<h2  style="font-size: 5px;">
		<a href="<?=site_url('mobile/paslon')?>" data-back-button><i class="fa fa-arrow-left"></i></a><?=$title?>
	</h2>
</div>
<div class="card header-card shape-rounded" data-card-height="150">
	<div class="card-overlay bg-highlight opacity-95"></div>
	<div class="card-overlay dark-mode-tint"></div>
	<div class="card-bg bg-20"></div>
</div>





<?php foreach($paslon as $row): ?>
<div class="card card-style">
<a data-card-height="250" class="card mb-3" href="#">
<img src="<?=base_url('assets/img/calon/'.$row->foto)?>" width="100%">
<div class="card-bottom ml-3 pl-2 mb-1">
<h1 class="color-white mb-n1"><?=$row->nama?></h1>
<div class="d-flex">
</div>
</div>
<div class="card-overlay bg-gradient rounded-0"></div>
</a>
<div class="content mt-0">
<p>
<?=$row->partai;?>
</p>
</div>
</div>
<?php endforeach; ?>