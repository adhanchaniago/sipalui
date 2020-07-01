<div class="page-title page-title-small">
	<h2>
		<a href="<?=site_url('users/gakkumdu')?>" data-back-button><i class="fa fa-arrow-left"></i></a><?=$title?>
	</h2>
</div>
<div class="card header-card shape-rounded" data-card-height="150">
	<div class="card-overlay bg-highlight opacity-95"></div>
	<div class="card-overlay dark-mode-tint"></div>
	<div class="card-bg bg-20"></div>
</div>





<div class="card card-style">
<?php if($detail->foto == NULL || $detail->foto == ''){ ?>
	<img src="<?=base_url('assets/img/logo/kantor.jpeg')?>" class="img-fluid bottom-20">
<?php }else { ?>
	<img src="<?=base_url('assets/img/kantor/'.$detail->foto)?>" class="img-fluid bottom-20">
<?php } ?>
<div class="content mb-0">

<!-- <a href="#" class="float-right btn btn-xs bg-highlight rounded-xl shadow-xl text-uppercase font-900 mt-2 font-11">View on Map</a> -->
<p class="font-10 mb-2 pb-1"><i class="fa fa-map-marker-alt mr-2"></i><?=$detail->alamat?></p>
<p class="font-10 mb-2 pb-1" style="margin-top: -15px;"><i class="fa fa-phone mr-2"></i><?=$detail->no_telp?></p>
<p class="font-10 mb-2 pb-1" style="margin-top: -15px;"><i class="fa fa-inbox mr-2"></i><?=$detail->email?></p>
<p class="font-10 mb-2 pb-1" style="margin-top: -15px;"><i class="fa fa-globe mr-2"></i><?=$detail->web?></p>
<div class="clearfix"></div>
<div class="divider mt-2 mb-3"></div>

<!-- <div class="d-flex mb-4">
	<div class="w-35 border-right pr-3 border-highlight">
		<?php if($detail->foto_ketua == NULL || $detail->foto_ketua == ''){ ?>
			<img src="<?=base_url('assets/img/logo/user.png')?>" width="80" class="rounded-circle">
		<?php }else { ?>
			<img src="<?=base_url('assets/img/kpu/'.$detail->foto_ketua)?>" width="80" class="rounded-circle">
		<?php } ?>
		<h6 class="font-14 font-600 mt-2 text-center"></h6>
	</div>
	<div class="w-65 pl-3 pt-2">
		<h4><?=$detail->ketua?></h4>
		<p class="color-highlight mt-n2 font-10 mb-2"><?=$detail->jabatan?></p>
		<p class="color-highlight mt-n2 font-10 mb-2"><?=$detail->divisi?></p>
	</div>
</div>
<div class="clearfix"></div>
<div class="divider mt-2 mb-3"></div> -->

<?php foreach($angg as $ang): ?>
<table>
	<tbody>
		<tr>
			<td width="35%">Nama</td>
			<td><?=$ang->nama?></td>
		</tr>
		<tr>
			<td width="35%">Jabatan</td>
			<td><?=$ang->jabatan?></td>
		</tr>
		<tr>
			<td width="35%">Divisi</td>
			<td ><?=$ang->divisi?></td>
		</tr>
	</tbody>
</table>
<div class="clearfix"></div>
<div class="divider mt-2 mb-3"></div>
<?php endforeach; ?>

</div>
</div>