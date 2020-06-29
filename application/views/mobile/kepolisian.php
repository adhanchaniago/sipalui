<div class="page-title page-title-small">
<h2><a href="<?=base_url('mobile/menu')?>" data-back-button><i class="fa fa-arrow-left"></i></a><?=$title?></h2>
</div>
<div class="card header-card shape-rounded" data-card-height="150">
<div class="card-overlay bg-highlight opacity-95"></div>
<div class="card-overlay dark-mode-tint"></div>
<div class="card-bg bg-20"></div>
</div>
<!-- <div class="card card-style">
<div class="content">
<p>
Pages styled to feel like Classic Site Pages or App Styled Pages. These are all highly flexible and incredibly easy to use and edit.
</p>
</div>
</div> -->
<div class="card card-style">
<div class="content mt-0 mb-0">
<div class="list-group list-custom-small list-icon-0">
	<?php 
	foreach($pol as $row): ?>
		<a href="<?=site_url('mobile/kepolisian_detail/'.$row->id_kepolisian)?>"><span><?= $row->nama; ?></span><i class="fa fa-angle-right"></i></a>
	<?php endforeach; ?>
<!-- <a href="page-careers.html"><i class="fa fa-handshake color-green1-dark"></i><span>KPUD Kabupaten</span><i class="fa fa-angle-right"></i></a>
<a href="page-calendar.html"><i class="fa fa-calendar-alt color-blue2-dark"></i><span>KPUD Kota</span><i class="fa fa-angle-right"></i></a> -->
</div>
</div>
</div>