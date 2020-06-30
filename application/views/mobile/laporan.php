<div class="page-title page-title-small">
<h2><a href="<?=site_url('mobile/menu')?>" data-back-button><i class="fa fa-arrow-left"></i></a><?=$title?></h2>
</div>
<div class="card header-card shape-rounded" data-card-height="150">
<div class="card-overlay bg-highlight opacity-95"></div>
<div class="card-overlay dark-mode-tint"></div>
<div class="card-bg bg-20"></div>
</div>

<div class="card card-style contact-form">
	<div class="content">
		<form action="<?=site_url('mobile/laporan_save')?>" method="post" class="contactForm" id="contactForm">
			<fieldset>
				<a href="cam:">
				<div class="form-field form-name">
					<label class="contactNameField color-theme" for="contactNameField">Ambil Foto
					<input type="file" accept="image/*" class="contactField round-small requiredField" name="foto" capture="camera" />
				</div>
				</a>
			</fieldset>
			<fieldset>
				<div class="form-field form-name">
					<label class="contactNameField color-theme" for="contactNameField">Nama Pelapor:<span>(required)</span></label>
					<input type="text" name="pelapor" value="" class="contactField round-small requiredField" id="contactNameField" />
				</div>
				<div class="form-field form-name">
					<label class="contactNameField color-theme" for="contactNameField">Nama Terlapor:<span>(required)</span></label>
					<input type="text" name="terlapor" value="" class="contactField round-small requiredField" id="contactNameField" />
				</div>
				<div class="form-field form-text">
					<label class="contactMessageTextarea color-theme" for="contactMessageTextarea">Uraian Kejadian:<span>(required)</span></label>
					<textarea name="uraian" class="contactTextarea round-small requiredField" id="contactMessageTextarea"></textarea>
				</div>
				<div class="form-button">
				<input type="submit" class="btn bg-highlight text-uppercase font-900 btn-m btn-full rounded-sm  shadow-xl contactSubmitButton" value="Buat Laporan" data-formId="contactForm" />
				</div>
			</fieldset>
		</form>
	</div>
</div>
<!-- <div class="card card-style">
<div class="content mb-0">
<h3 class="font-700">HUBUNGI KAMI</h3>
<p class="pb-0 mb-0">Jl. Let. Jend. S. Parman No.16, Antasan Besar, Kec. Banjarmasin Tengah, Kota Banjarmasin, Kalimantan Selatan 70123</p>
<div class="list-group list-custom-small">
<a href="tel:+1 234 567 890">
<i class="fa font-14 fa-phone color-phone"></i>
<span>+6282154439917</span>
<span class="badge bg-highlight color-white">CALL</span>
<i class="fa fa-angle-right"></i>
</a>
<a href="mailto:poldaditreskrimumkalsel@gmail.com">
<i class="fa font-14 fa-envelope color-mail"></i>
<span>poldaditreskrimumkalsel@gmail.com</span>
<span class="badge bg-highlight color-white">MAIL</span>
<i class="fa fa-angle-right"></i>
</a>
<a href="https://instagram.com/enabled.labs/">
<i class="fab font-14 fa-instagram color-instagram"></i>
<span>humas_polda kalsel</span>
<i class="fa fa-link"></i>
</a>
</div>
</div>
</div> -->