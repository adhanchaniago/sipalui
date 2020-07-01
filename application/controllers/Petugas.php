<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Petugas extends CI_Controller {

	public function __construct()
    {
        parent::__construct();
        $this->load->database();
        $this->load->library('session');
    }

	public function index()
	{
		if ($this->session->userdata('petugas_login') != '1')
            redirect(site_url('login'), 'refresh');
        if ($this->session->userdata('petugas_login') == '1')
            redirect(site_url('petugas/menu'), 'refresh');
	}

	public function menu(){
		if ($this->session->userdata('petugas_login') != '1'){
            redirect(site_url('login'), 'refresh');
		}else{
			$data['page'] = 'menu';
			$data['title'] = 'SI PALUI';
			$this->load->view('petugas/index', $data);
		}
	}

	public function berita(){
		if ($this->session->userdata('petugas_login') != '1'){
            redirect(site_url('login'), 'refresh');
		}else{
			$berita = $this->db->select('*')->from('t_blog_post')->where('idblogcategory', '3')->order_by('post_date', 'desc')->get()->result();
			$data['page'] = 'berita';
			$data['title'] = 'Berita';
			$data['berita'] = $berita;
			$this->load->view('petugas/index', $data);
		}
	}

	public function profile(){
		if ($this->session->userdata('petugas_login') != '1'){
            redirect(site_url('login'), 'refresh');
		}else{
			$data['page'] = 'profile';
			$data['title'] = 'Profile';
			$this->load->view('petugas/index', $data);
		}
	}

	public function kegiatan(){
		if ($this->session->userdata('petugas_login') != '1'){
            redirect(site_url('login'), 'refresh');
		}else{
			$kegiatan = $this->db->select('*')->from('t_blog_post')->where('idblogcategory', '2')->order_by('post_date', 'desc')->get()->result();
			$data['page'] = 'kegiatan';
			$data['title'] = 'Kegiatan';
			$data['kegiatan'] = $kegiatan;
			$this->load->view('petugas/index', $data);
		}
	}

	public function pemilukada(){
		if ($this->session->userdata('petugas_login') != '1'){
            redirect(site_url('login'), 'refresh');
		}else{
			$data['page'] = 'pemilukada';
			$data['title'] = 'Pemilukada';
			$this->load->view('petugas/index', $data);
		}
	}

	public function jadwal(){
		if ($this->session->userdata('petugas_login') != '1'){
            redirect(site_url('login'), 'refresh');
		}else{
			$data['page'] = 'jadwal';
			$data['title'] = 'Jadwal Tahapan';
			$this->load->view('petugas/index', $data);
		}
	}

	public function petawilayah(){
		if ($this->session->userdata('petugas_login') != '1'){
            redirect(site_url('login'), 'refresh');
		}else{
			$data['page'] = 'petawilayah';
			$data['title'] = 'Peta Wilayah';
			$this->load->view('petugas/index', $data);
		}
	}

	public function pkpu(){
		if ($this->session->userdata('petugas_login') != '1'){
            redirect(site_url('login'), 'refresh');
		}else{
			$data['page'] = 'pkpu';
			$data['title'] = 'PKPU 2020';
			$this->load->view('petugas/index', $data);
		}
	}

	public function paslon(){
		if ($this->session->userdata('petugas_login') != '1'){
            redirect(site_url('login'), 'refresh');
		}else{
			$pol = $this->db->get('pemilu')->result();
			$data['page'] = 'pemilu';
			$data['title'] = 'Daftar Paslon';
			$data['pemilu'] = $pol;
			$this->load->view('petugas/index', $data);
		}
	}

	public function paslon_detail($id){
		if ($this->session->userdata('petugas_login') != '1'){
            redirect(site_url('login'), 'refresh');
		}else{
			$pemilu = $this->db->get_where('pemilu', array('id_pemilu' => $id))->row();
			$paslon = $this->db->get_where('paslon', array('id_pemilu' => $id))->result();

			$data['page'] = 'pemilu/detail';
			$data['title'] = $pemilu->nama;
			$data['paslon'] = $paslon;
			$this->load->view('petugas/index', $data);
		}
	}

	public function penyelenggara(){
		if ($this->session->userdata('petugas_login') != '1'){
            redirect(site_url('login'), 'refresh');
		}else{
			$kpu = $this->db->get_where('kpu', array('id_sub' => NULL))->result();
			$data['page'] = 'penyelenggara';
			$data['title'] = 'Penyelenggara';
			$data['kpu'] = $kpu;
			$this->load->view('petugas/index', $data);
		}
	}
	public function kpu_detail($id){
		if ($this->session->userdata('petugas_login') != '1'){
            redirect(site_url('login'), 'refresh');
		}else{
			$pol = $this->db->get_where('kpu', array('id_kpu' => $id))->row();
			$angg = $this->db->get_where('anggota_kpu', array('id_kpu' => $id))->result();

			$data['page'] = 'kpu/detail';
			$data['title'] = $pol->nama;
			$data['detail'] = $pol;
			$data['angg'] = $angg;
			$this->load->view('petugas/index', $data);
		}
	}

	public function kepolisian(){
		if ($this->session->userdata('petugas_login') != '1'){
            redirect(site_url('login'), 'refresh');
		}else{
			$pol = $this->db->get_where('kepolisian', array('id_sub' => NULL))->result();
			$data['page'] = 'kepolisian';
			$data['title'] = 'Kepolisian';
			$data['pol'] = $pol;
			$this->load->view('petugas/index', $data);
		}
	}

	public function kepolisian_detail($id){
		if ($this->session->userdata('petugas_login') != '1'){
            redirect(site_url('login'), 'refresh');
		}else{
			$pol = $this->db->get_where('kepolisian', array('id_kepolisian' => $id))->row();
			$satker = $this->db->get_where('kepolisian', array('id_sub' => $id))->result();

			$data['page'] = 'kepolisian/detail';
			$data['title'] = $pol->nama;
			$data['detail'] = $pol;
			$data['satker'] = $satker;
			$this->load->view('petugas/index', $data);
		}
	}

	public function kepolisian_detail_view($id){
		if ($this->session->userdata('petugas_login') != '1'){
            redirect(site_url('login'), 'refresh');
		}else{
			$pol = $this->db->get_where('kepolisian', array('id_kepolisian' => $id))->row();

			$data['page'] = 'kepolisian/detail_view';
			$data['title'] = $pol->nama;
			$data['detail'] = $pol;
			$this->load->view('petugas/index', $data);
		}
	}

	public function kejaksaan(){
		if ($this->session->userdata('petugas_login') != '1'){
            redirect(site_url('login'), 'refresh');
		}else{
			$kjk = $this->db->get_where('kejaksaan', array('id_sub' => NULL))->result();
			$data['page'] = 'kejaksaan';
			$data['title'] = 'Kejaksaan';
			$data['kjk'] = $kjk;
			$this->load->view('petugas/index', $data);
		}
	}

	public function kejaksaan_detail($id){
		if ($this->session->userdata('petugas_login') != '1'){
            redirect(site_url('login'), 'refresh');
		}else{
			$kjk = $this->db->get_where('kejaksaan', array('id_kejaksaan' => $id))->row();

			$data['page'] = 'kejaksaan/detail';
			$data['title'] = $kjk->nama;
			$data['detail'] = $kjk;
			$this->load->view('petugas/index', $data);
		}
	}

	public function bawaslu(){
		if ($this->session->userdata('petugas_login') != '1'){
            redirect(site_url('login'), 'refresh');
		}else{
			$bawaslu = $this->db->get_where('bawaslu', array('id_sub' => NULL))->result();
			$data['page'] = 'bawaslu';
			$data['title'] = 'Bawaslu';
			$data['bawaslu'] = $bawaslu;
			$this->load->view('petugas/index', $data);
		}
	}

	public function bawaslu_detail($id){
		if ($this->session->userdata('petugas_login') != '1'){
            redirect(site_url('login'), 'refresh');
		}else{
			$pol = $this->db->get_where('bawaslu', array('id_bawaslu' => $id))->row();
			$angg = $this->db->get_where('anggota_bawaslu', array('id_bawaslu' => $id))->result();

			$data['page'] = 'bawaslu/detail';
			$data['title'] = $pol->nama;
			$data['detail'] = $pol;
			$data['angg'] = $angg;
			$this->load->view('petugas/index', $data);
		}
	}

	public function gakkumdu(){
		if ($this->session->userdata('petugas_login') != '1'){
            redirect(site_url('login'), 'refresh');
		}else{
			$gakkumdu = $this->db->get_where('gakkumdu', array('id_sub' => NULL))->result();
			$data['page'] = 'gakkumdu';
			$data['title'] = 'Gakkumdu';
			$data['gakkumdu'] = $gakkumdu;
			$this->load->view('petugas/index', $data);
		}
	}

	public function gakkumdu_detail($id){
		if ($this->session->userdata('petugas_login') != '1'){
            redirect(site_url('login'), 'refresh');
		}else{
			$gakkumdu = $this->db->get_where('gakkumdu', array('id_gakkumdu' => $id))->row();
			$anggota = $this->db->get_where('anggota_gakkumdu', array('id_gakkumdu' => $id))->result();

			$data['page'] = 'gakkumdu/detail';
			$data['title'] = $gakkumdu->nama;
			$data['detail'] = $gakkumdu;
			$data['angg'] = $anggota;
			$this->load->view('petugas/index', $data);
		}
	}

	public function layanan(){
		if ($this->session->userdata('petugas_login') != '1'){
            redirect(site_url('login'), 'refresh');
		}else{
			$data['page'] = 'layanan';
			$data['title'] = 'Kritik/Saran';
			$this->load->view('petugas/index', $data);
		}
	}

	public function laporan(){
		if ($this->session->userdata('petugas_login') != '1'){
            redirect(site_url('login'), 'refresh');
		}else{
			$data['page'] = 'laporan';
			$data['title'] = 'Laporan';
			$this->load->view('petugas/index', $data);
		}
	}

	public function penanganan(){
		if ($this->session->userdata('petugas_login') != '1'){
            redirect(site_url('login'), 'refresh');
		}else{
			$data['page'] = 'penanganan';
			$data['title'] = 'Penanganan Kasus';
			$this->load->view('petugas/index', $data);
		}
	}

	public function kirim_pesan(){
		if ($this->session->userdata('petugas_login') != '1'){
            redirect(site_url('login'), 'refresh');
		}else{
			$data['name'] = $this->input->post('name');
			$data['phone'] = $this->input->post('phone');
			$data['email'] = $this->input->post('email');
			$data['message'] = $this->input->post('message');
			$data['date_create'] = date('Y-m-d H:i:s');

			$up = $this->db->insert('t_contact',$data);
			if ($up) {
				$this->session->set_flashdata('success', 'Pesan Berhasil Dikirim');
                redirect('login/login', 'refresh');
			} else {
				$this->session->set_flashdata('error', 'Ada Kesalahan, Silahkan Ulangi');
                redirect('login/login', 'refresh');
			}
		}
	}
}