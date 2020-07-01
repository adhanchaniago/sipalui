<div class="page-title page-title-small">
<h2><a href="<?=site_url('petugas/menu')?>" data-back-button><i class="fa fa-arrow-left"></i></a><?=$title?></h2>
</div>
<div class="card header-card shape-rounded" data-card-height="150">
<div class="card-overlay bg-highlight opacity-95"></div>
<div class="card-overlay dark-mode-tint"></div>
<div class="card-bg bg-20"></div>
</div>
<div class="card card-style">
<div class="responsive-iframe">
<!-- <iframe src='https://maps.google.com/?ie=UTF8&amp;ll=47.595131,-122.330414&amp;spn=0.006186,0.016512&amp;t=h&amp;z=17&amp;output=embed' frameborder='0' allowfullscreen></iframe> -->
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3983.151134968136!2d114.58774781400126!3d-3.3127817975883227!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2de423b9515e7d15%3A0x78205579266db536!2sSouth%20Kalimantan%20Police!5e0!3m2!1sen!2sid!4v1593410043149!5m2!1sen!2sid" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
</div>
</div>

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

<div class="card card-style contact-form">
<div class="content">
<form action="<?=site_url('petugas/kirim_pesan')?>" method="post" class="contactForm" id="contactForm">
<fieldset>
<div class="form-field form-name">
<label class="contactNameField color-theme" for="contactNameField">Nama:<span>(required)</span></label>
<input type="text" name="name" value="" class="contactField round-small requiredField" id="contactNameField" />
</div>
<div class="form-field form-name">
<label class="contactNameField color-theme" for="contactNameField">No Telp:</label>
<input type="text" name="phone" value="" class="contactField round-small requiredField" id="contactNameField" />
</div>
<div class="form-field form-name">
<label class="contactNameField color-theme" for="contactNameField">Email:</label>
<input type="text" name="email" value="" class="contactField round-small requiredField" id="contactNameField" />
</div>
<div class="form-field form-text">
<label class="contactMessageTextarea color-theme" for="contactMessageTextarea">Pesan:<span>(required)</span></label>
<textarea name="message" class="contactTextarea round-small requiredField" id="contactMessageTextarea"></textarea>
</div>
<div class="form-button">
<input type="submit" class="btn bg-highlight text-uppercase font-900 btn-m btn-full rounded-sm  shadow-xl contactSubmitButton" value="Kirim Pesan" data-formId="contactForm" />
</div>
</fieldset>
</form>
</div>
</div>
<div class="card card-style">
<div class="content mb-0">
<h3 class="font-700">HUBUNGI KAMI</h3>
<p class="pb-0 mb-0">Jl. Let. Jend. S. Parman No.16, Antasan Besar, Kec. Banjarmasin Tengah, Kota Banjarmasin, Kalimantan Selatan 70123</p>
<div class="list-group list-custom-small">
<a href="tel:+6282154439917">
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
</div>