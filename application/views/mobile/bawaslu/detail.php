<div class="page-title page-title-small">
	<h2>
		<a href="<?=site_url('mobile/bawaslu')?>" data-back-button><i class="fa fa-arrow-left"></i></a><?=$title?>
	</h2>
</div>
<div class="card header-card shape-rounded" data-card-height="150">
	<div class="card-overlay bg-highlight opacity-95"></div>
	<div class="card-overlay dark-mode-tint"></div>
	<div class="card-bg bg-20"></div>
</div>





<div class="card card-style">
<img src="<?=base_url('assets/img/kantor/'.$detail->foto)?>" class="img-fluid bottom-20">
<div class="content mb-0">

<!-- <a href="#" class="float-right btn btn-xs bg-highlight rounded-xl shadow-xl text-uppercase font-900 mt-2 font-11">View on Map</a> -->
<p class="font-10 mb-2 pb-1"><i class="fa fa-map-marker-alt mr-2"></i><?=$detail->alamat?></p>
<p class="font-10 mb-2 pb-1" style="margin-top: -20px;"><i class="fa fa-phone mr-2"></i><?=$detail->no_telp?></p>
<p class="font-10 mb-2 pb-1" style="margin-top: -20px;"><i class="fa fa-mail mr-2"></i><?=$detail->email?></p>
<p class="font-10 mb-2 pb-1" style="margin-top: -20px;"><i class="fa fa-globe mr-2"></i><?=$detail->web?></p>
<div class="clearfix"></div>
<div class="divider mt-2 mb-3"></div>

<!-- <div class="d-flex mb-4">
<div class="w-35 border-right pr-3 border-highlight">
<img src="<?=base_url('assets/img/logo/paslon.png')?>" width="80" class="rounded-circle">
<h6 class="font-14 font-600 mt-2 text-center"></h6>
<p class="color-highlight mt-n3 font-9 font-400 text-center mb-0 pb-0">Event Creator</p>
</div>
<div class="w-65 pl-3 pt-2">
<h4>Brigjen. Pol. Drs. Aneka Pristafuddin, M.H.</h4>
<p class="color-highlight mt-n2 font-10 mb-2">Wakil Kepala Daerah Kepolisian Kalimantan Selatan</p>
</div>
</div> -->
<?php foreach($anggota as $ang): ?>
<table>
	<tbody>
		<tr>
			<td width="35%">Nama</td>
			<td><?=$ang->nama?></td>
		</tr>
		<tr>
			<td>Jabatan</td>
			<td><?=$ang->jabatan?></td>
		</tr>
		<tr>
			<td>Divisi</td>
			<td><?=$ang->divisi?></td>
		</tr>
	</tbody>
</table>
<div class="clearfix"></div>
<div class="divider mt-2 mb-3"></div>
<?php endforeach; ?>

</div>
</div>