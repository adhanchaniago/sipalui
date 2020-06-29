<!DOCTYPE HTML>
<html lang="en">

<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, viewport-fit=cover" />
<title>SI PALUI</title>
<link rel="stylesheet" type="text/css" href="<?=base_url()?>assets/azures/styles/bootstrap.css">
<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900|Roboto:300,300i,400,400i,500,500i,700,700i,900,900i&amp;display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="<?=base_url()?>assets/azures/fonts/css/fontawesome-all.min.css">

<link rel="manifest" href="<?=base_url()?>assets/azures/_manifest.json" data-pwa-version="set_in_manifest_and_pwa_js">
<link rel="apple-touch-icon" sizes="180x180" href="<?=base_url()?>assets/azures/app/icons/icon-192x192.png">
<script src="<?php echo base_url('asset/') ?>vendors/jquery/jquery.min.js"></script>
</head>
<body class="theme-light" data-highlight="blue2">
<div id="preloader"><div class="spinner-border color-highlight" role="status"></div></div>
<div id="page">

	<div class="header header-fixed header-auto-show header-logo-app">
	<a href="#" class="header-title"><?=$title?></a>
	<a href="<?=base_url('mobile/menu')?>" class="header-icon header-icon-1"><i class="fas fa-arrow-left"></i></a>
	<!-- <a href="#" data-toggle-theme class="header-icon header-icon-2 show-on-theme-dark"><i class="fas fa-sun"></i></a> -->
	</div>

	<div id="footer-bar" class="footer-bar-5">
	<a href="<?=base_url('mobile/menu')?>"><i data-feather="home" data-feather-line="1" data-feather-size="21" data-feather-color="blue2-dark" data-feather-bg="blue2-fade-light"></i><span>Menu</span></a>
	<a href="<?=base_url('mobile/berita')?>"><i data-feather="file" data-feather-line="1" data-feather-size="21" data-feather-color="red2-dark" data-feather-bg="red2-fade-light"></i><span>Berita</span></a>
	<a href="<?=base_url('mobile/profile')?>"><i data-feather="user" data-feather-line="1" data-feather-size="21" data-feather-color="gray2-dark" data-feather-bg="gray2-fade-light"></i><span>Profile</span></a>
	</div>
	<div class="page-content" id="data">
		<?php include $page.'.php';?>
	</div>
</div>
</body>
<script type="text/javascript" src="<?=base_url()?>assets/azures/scripts/jquery.js"></script>
<script type="text/javascript" src="<?=base_url()?>assets/azures/scripts/bootstrap.min.js"></script>
<script type="text/javascript" src="<?=base_url()?>assets/azures/scripts/custom.js"></script>
<script type="text/javascript">
    // $(document).ready(function () {
        // $('.money').mask('0.000.000.000', {reverse: true});
        // $(".textarea").wysihtml5();
        // $('[data-toggle="tooltip"]').tooltip();
    //     Menu();
    // });

    // function Menu(){
	   //  $.ajax({
    //         url: '<?php echo base_url('mobile/menu'); ?>',
    //         method: "POST",
    //         success: function (resp) {
    //             $('#data').html(resp);
    //         }
    //     }); 
    // }
</script>
</script>
</html>