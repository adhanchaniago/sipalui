<div class="page-title page-title-small">
	<h2>
		<a href="<?=base_url('users/menu')?>" data-back-button><i class="fa fa-arrow-left"></i></a><?=$title?>
	</h2>
</div>
<div class="card header-card shape-rounded" data-card-height="150">
	<div class="card-overlay bg-highlight opacity-95"></div>
	<div class="card-overlay dark-mode-tint"></div>
	<div class="card-bg bg-20"></div>
</div>

<div class="card card-style">
<div class="d-flex content mb-1">

<div class="flex-grow-1">
<h1 class="font-700"><?=$this->session->userdata('nama')?></h1>
<p class="mb-2"><?=$this->session->userdata('nik')?></p>
</div>

<img src="<?=base_url('assets')?>/img/logo/user.png" width="115" class="bg-highlight rounded-circle mt-3 shadow-xl">
</div>

<div class="content">
<div class="row mb-0">
<div class="col-12">
<a href="<?=site_url('login/logout')?>" class="btn btn-full btn-sm rounded-s text-uppercase font-900 bg-blue2-dark">Logout</a>
</div>
</div>
</div>

</div>