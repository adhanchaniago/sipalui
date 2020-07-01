<!DOCTYPE HTML>
<html lang="en">
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, viewport-fit=cover" />
<title>SI PALUI</title>
<link rel="stylesheet" type="text/css" href="<?=base_url();?>assets/azures/styles/bootstrap.css">
<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900|Roboto:300,300i,400,400i,500,500i,700,700i,900,900i&amp;display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="<?=base_url();?>assets/azures/fonts/css/fontawesome-all.min.css">
<link rel="manifest" href="<?=base_url();?>assets/azures/_manifest.json" data-pwa-version="set_in_manifest_and_pwa_js">
<link rel="apple-touch-icon" sizes="180x180" href="<?=base_url();?>assets/azures/app/icons/icon-192x192.png">
</head>
<body class="theme-light" data-highlight="blue2">
<div id="preloader"><div class="spinner-border color-highlight" role="status"></div></div>
<div id="page">

<div class="page-content">
<div class="page-title page-title-small">
<h2></h2>

</div>
<div class="card header-card shape-rounded" data-card-height="210">
<!-- <div class="card-overlay bg-highlight opacity-95"></div> -->
<!-- <div class="card-overlay dark-mode-tint"></div> -->
<!-- <div class="card-bg bg-20"></div> -->
</div>
<div class="card card-style bg-20">
<div class="card-body text-center">
	<?php if (!empty($this->session->flashdata('success'))) { ?>
	<div class="ml-3 mr-3 alert alert-small rounded-s shadow-xl bg-green1-dark" role="alert">
		<span><i class="fa fa-check"></i></span>
		<strong><?php echo $this->session->flashdata('success'); ?></strong>
		<button type="button" class="close color-white opacity-60 font-16" data-dismiss="alert" aria-label="Close">&times;</button>
	</div>
	<?php }elseif (!empty($this->session->flashdata('error'))) { ?>
	<div class="ml-3 mr-3 mb-5 alert alert-small rounded-s shadow-xl bg-red2-dark" role="alert">
		<span><i class="fa fa-times"></i></span>
		<strong><?php echo $this->session->flashdata('error'); ?></strong>
		<button type="button" class="close color-white opacity-60 font-16" data-dismiss="alert" aria-label="Close">&times;</button>
	</div>
	<?php } ?>
<p class="color-white palui" style="margin-bottom: -10px; margin-top: 16px;"><i style="color: pink;"><b>"Mewujudkan pemilukada yang demokratis,</b></i></p>
<p class="color-white palui" style="margin-bottom: 5px;"><i style="color: pink;"><b>bermartabat dan patuh hukum"</b></i></p>
<div style="margin-bottom: -20px;">
<img src="<?=base_url();?>assets/img/logo/sipalui.png" width="100px">
</div>
<h1 class="color-white pt-4">SI PALUI</h1>
<div style="margin-bottom: -30px;">
	<p class="color-white mt-n2 mb-3 pb-1">
Sistem Informasi Pemilukada Aman & Lancar
</p>
</div>
<div style="margin-bottom: 30px;"><p class="color-white mt-n2 mb-3 pb-1">Untuk Indonesia</p></div>
<p class="color-white mt-n2 mb-3 pb-1"><b>POLDA KALSEL</b></p>
<a href="#" data-menu="login-masyarakat" class="btn btn-m rounded-sm btn-border btn-center-l border-white color-white font-900 text-uppercase mb-4">Masyarakat</a>
<!-- <p class="color-white mt-n2 mb-3 pb-1">Atau</p> -->
<a href="#" data-menu="login-petugas" class="btn btn-m rounded-sm btn-border btn-center-l border-white color-white font-900 text-uppercase mb-4">Petugas</a>
</div>
<div class="card-overlay bg-highlight opacity-95"></div>
</div>

</div>

<div id="login-masyarakat" class="menu menu-box-bottom menu-box-detached rounded-m" data-menu-height="320" data-menu-effect="menu-over">
	<div class="content mb-0">
		<h1 class="font-700 mb-0">Login</h1>
		<p class="font-11  mt-n1 mb-0">
		Login Masyarakat
		</p>
		<form action="<?=site_url('login/doLogin_masy')?>" method="POST">
		<!-- <div class="input-style has-icon input-style-1 input-required">
			<i class="input-icon fa fa-user font-11"></i>
			<span>Nama Lengkap</span>
			<input type="name" placeholder="Nama Lengkap" name="nama">
		</div> -->
			<div class="input-style has-icon input-style-1 input-required">
			<i class="input-icon fa fa-lock font-11"></i>
			<span>NIK</span>
			<input type="number" placeholder="NIK" name="nik">
		</div>
		<div class="row">
			<div class="col-6">
				<a data-menu="menu-signup" href="#" class="float-right font-10"></a>
				<div class="clearfix"></div>
			</div>
			<div class="col-6">
				<a data-menu="daftar-masyarakat" href="#" class="float-right font-10">Create Account</a>
				<div class="clearfix"></div>
			</div>
		</div>
		<button type="submit" class="btn btn-full btn-m shadow-l rounded-s text-uppercase font-900 bg-green1-dark mt-4">LOGIN</button>
		</form>
	</div>
</div>

<div id="daftar-masyarakat" class="menu menu-box-bottom menu-box-detached rounded-m" data-menu-height="370" data-menu-effect="menu-over">
<div class="content mb-0">
<h1 class="font-700 mb-0">Daftar</h1>
<p class="font-11  mt-n1 mb-0">
Daftar Untuk Masyarakat
</p>
<form action="<?=site_url('login/daftar_masy')?>" method="POST">
	<div class="input-style has-icon input-style-1 input-required">
		<i class="input-icon fa fa-user font-11"></i>
		<span>Nama Lengkap</span>
		<input type="text" placeholder="Nama Lengkap" name="nama">
	</div>
	<div class="input-style has-icon input-style-1 input-required">
		<i class="input-icon fa fa-lock font-11"></i>
		<span>NIK</span>
		<input type="number" placeholder="NIK" name="nik">
	</div>
	<p class="text-center pb-0 mb-n1 pt-1">
		<a href="#" data-menu="login-masyarakat" class="text-center font-11 color-gray2-dark">Sudah Punya Akun? Login Disini</a>
	</p>
	<button type="submit" class="btn btn-full btn-m shadow-l rounded-s text-uppercase font-900 bg-blue2-dark mt-4">Register</button>
</form>
</div>
</div>

<script type="text/javascript" src="<?=base_url();?>assets/azures/scripts/jquery.js"></script>
<script type="text/javascript" src="<?=base_url();?>assets/azures/scripts/bootstrap.min.js"></script>
<script type="text/javascript" src="<?=base_url();?>assets/azures/scripts/custom.js"></script>
</body>
