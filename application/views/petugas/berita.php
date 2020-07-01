<div class="page-title page-title-small">
	<h2>
		<a href="<?=base_url('petugas/menu')?>" data-back-button><i class="fa fa-arrow-left"></i></a><?=$title?>
	</h2>
</div>
	<div class="card header-card shape-rounded" data-card-height="150">
	<div class="card-overlay bg-highlight opacity-95"></div>
	<div class="card-overlay dark-mode-tint"></div>
	<div class="card-bg bg-20"></div>
</div>
<?php foreach($berita as $row): ?>
<a href="#" data-menu="instant-left" class="card card-style">
	<div data-card-height="250" class="card mb-3">
		<img src="<?=base_url().$row->banner_image;?>">
		<div class="card-bottom ml-3 pl-2 mb-1">
			<h1 class="color-white mb-n1"><?=$row->blog_title;?></h1>
			<div class="d-flex">
				<p class="color-white opacity-60 mb-2 mt-2"><i class="fa fa-link pr-2"></i> <?=$row->post_date;?></p>
				<p class="color-white opacity-60 mb-2 mt-2 ml-4">
					<!-- <i class="fa fa-bookmark pr-2"></i> Built for Enabled -->
				</p>
			</div>
		</div>
		<div class="card-overlay bg-gradient rounded-0"></div>
	</div>
	<div class="content mt-0">
		<p>
		A small description about your project goes here. Then, you can access the portfolio project to see it in detail.
		</p>
	</div>
</a>
<?php endforeach; ?>