<div class="page-title page-title-small">
<h2><a href="<?=site_url('users/menu')?>" data-back-button><i class="fa fa-arrow-left"></i></a><?=$title?></h2>
</div>
<div class="card header-card shape-rounded" data-card-height="150">
<div class="card-overlay bg-highlight opacity-95"></div>
<div class="card-overlay dark-mode-tint"></div>
<div class="card-bg bg-20"></div>
</div>

<div class="card card-style contact-form">
	<div class="content">
		<form action="<?=site_url('users/penanganan_save')?>" method="post" class="contactForm" id="contactForm">
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
				<input type="submit" class="btn bg-highlight text-uppercase font-900 btn-m btn-full rounded-sm  shadow-xl contactSubmitButton" value="Buat Penanganan" data-formId="contactForm" />
				</div>
			</fieldset>
		</form>
	</div>
</div>