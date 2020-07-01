<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

	public function __construct()
    {
        parent::__construct();
        $this->load->database();
        $this->load->library('session');
    }

	public function index()
	{
		if ($this->session->userdata('user_login') == 1){
            redirect(site_url('users/menu'), 'refresh');
        }elseif ($this->session->userdata('petugas_login') == 1){
            redirect(site_url('petugas/menu'), 'refresh');
        }else{
	        $this->load->view('login');
	    }
	}
	
	public function login()
	{
		$this->load->view('login');
	}

	function daftar_masy()
	{
		$data['nama'] = $this->input->post('nama');
		$data['nik'] = $this->input->post('nik');

		$cek = $this->db->get_where('user', array('nik' => $data['nik']));
		if ($cek->num_rows() > 0) {
			$this->session->set_flashdata('error', 'NIK sudah ada, Silahkan Login');
            redirect('login/login', 'refresh');
		} else {
			$up = $this->db->insert('user',$data);
			if ($up) {
				$this->session->set_flashdata('success', 'NIK Berhasil di Daftarkan, Silahkan Login');
                redirect('login/login', 'refresh');
			} else {
				$this->session->set_flashdata('error', 'NIK Gagal di Daftarkan');
                redirect('login/login', 'refresh');
			}
		}
	}

	function doLogin_masy(){
		$data['nik'] = $this->input->post('nik');

		$cek = $this->db->get_where('user', array('nik' => $data['nik']));
		if ($cek->num_rows() > 0) {
			$row = $cek->row();
			$this->session->set_userdata('user_login', '1');
			$this->session->set_userdata('nama', $row->nama);
			$this->session->set_userdata('id_user', $row->id_user);
			$this->session->set_userdata('nik', $row->nik);

			redirect('users/menu');
		} else {
			$this->session->set_flashdata('error', 'NIK belum didaftarkan');
            redirect('login/login');
		}
	}

	function daftar_petugas()
	{
		$data['nama'] = $this->input->post('nama');
		$data['nrp'] = $this->input->post('nrp');

		$cek = $this->db->get_where('petugas', array('nrp' => $data['nrp']));
		if ($cek->num_rows() > 0) {
			$this->session->set_flashdata('error', 'NRP sudah ada, Silahkan Login');
            redirect('login/login', 'refresh');
		} else {
			$up = $this->db->insert('petugas',$data);
			if ($up) {
				$this->session->set_flashdata('success', 'NRP Berhasil di Daftarkan, Silahkan Login');
                redirect('login/login', 'refresh');
			} else {
				$this->session->set_flashdata('error', 'NRP Gagal di Daftarkan');
                redirect('login/login', 'refresh');
			}
		}
	}

	function doLogin_petugas(){
		$data['nrp'] = $this->input->post('nrp');

		$cek = $this->db->get_where('petugas', array('nrp' => $data['nrp']));
		if ($cek->num_rows() > 0) {
			$row = $cek->row();
			$this->session->set_userdata('petugas_login', '1');
			$this->session->set_userdata('nama', $row->nama);
			$this->session->set_userdata('id_petugas', $row->id_petugas);
			$this->session->set_userdata('nrp', $row->nrp);

			redirect('petugas/menu', 'refresh');
		} else {
			$this->session->set_flashdata('error', 'NRP belum didaftarkan');
            redirect('login/login', 'refresh');
		}
	}

	public function menu(){
		$data['page'] = 'menu';
		$data['title'] = 'SI PALUI';
		$this->load->view('mobile/index', $data);
	}

	public function berita(){
		$berita = $this->db->select('*')->from('t_blog_post')->where('idblogcategory', '3')->order_by('post_date', 'desc')->get()->result();
		$data['page'] = 'berita';
		$data['title'] = 'Berita';
		$data['berita'] = $berita;
		$this->load->view('mobile/index', $data);
	}

	public function kegiatan(){
		$kegiatan = $this->db->select('*')->from('t_blog_post')->where('idblogcategory', '2')->order_by('post_date', 'desc')->get()->result();
		$data['page'] = 'kegiatan';
		$data['title'] = 'Kegiatan';
		$data['kegiatan'] = $kegiatan;
		$this->load->view('mobile/index', $data);
	}

	public function pemilukada(){
		$data['page'] = 'pemilukada';
		$data['title'] = 'Pemilukada';
		$this->load->view('mobile/index', $data);
	}

	public function jadwal(){
		$data['page'] = 'jadwal';
		$data['title'] = 'Jadwal Tahapan';
		$this->load->view('mobile/index', $data);
	}

	public function petawilayah(){
		$data['page'] = 'petawilayah';
		$data['title'] = 'Peta Wilayah';
		$this->load->view('mobile/index', $data);
	}

	public function pkpu(){
		$data['page'] = 'pkpu';
		$data['title'] = 'PKPU 2020';
		$this->load->view('mobile/index', $data);
	}

	public function paslon(){
		$pol = $this->db->get('pemilu')->result();
		$data['page'] = 'pemilu';
		$data['title'] = 'Daftar Paslon';
		$data['pemilu'] = $pol;
		$this->load->view('mobile/index', $data);
	}

	public function paslon_detail($id){
		$pemilu = $this->db->get_where('pemilu', array('id_pemilu' => $id))->row();
		$paslon = $this->db->get_where('paslon', array('id_pemilu' => $id))->result();

		$data['page'] = 'pemilu/detail';
		$data['title'] = $pemilu->nama;
		$data['paslon'] = $paslon;
		$this->load->view('mobile/index', $data);
	}

	public function penyelenggara(){
		$kpu = $this->db->get_where('kpu', array('id_sub' => NULL))->result();
		$data['page'] = 'penyelenggara';
		$data['title'] = 'Penyelenggara';
		$data['kpu'] = $kpu;
		$this->load->view('mobile/index', $data);
	}
	public function kpu_detail($id){
		$pol = $this->db->get_where('kpu', array('id_sub' => $id))->row();

		$data['page'] = 'kpu/detail';
		$data['title'] = $pol->nama;
		$data['detail'] = $pol;
		$this->load->view('mobile/index', $data);
	}

	public function kepolisian(){
		$pol = $this->db->get_where('kepolisian', array('id_sub' => NULL))->result();
		$data['page'] = 'kepolisian';
		$data['title'] = 'Kepolisian';
		$data['pol'] = $pol;
		$this->load->view('mobile/index', $data);
	}

	public function kepolisian_detail($id){
		$pol = $this->db->get_where('kepolisian', array('id_kepolisian' => $id))->row();
		$satker = $this->db->get_where('kepolisian', array('id_sub' => $id))->result();

		$data['page'] = 'kepolisian/detail';
		$data['title'] = $pol->nama;
		$data['detail'] = $pol;
		$data['satker'] = $satker;
		$this->load->view('mobile/index', $data);
	}

	public function kejaksaan(){
		$kjk = $this->db->get_where('kejaksaan', array('id_sub' => NULL))->result();
		$data['page'] = 'kejaksaan';
		$data['title'] = 'Kejaksaan';
		$data['kjk'] = $kjk;
		$this->load->view('mobile/index', $data);
	}

	public function kejaksaan_detail($id){
		$kjk = $this->db->get_where('kejaksaan', array('id_kejaksaan' => $id))->row();

		$data['page'] = 'kejaksaan/detail';
		$data['title'] = $kjk->nama;
		$data['detail'] = $kjk;
		$this->load->view('mobile/index', $data);
	}

	public function bawaslu(){
		$bawaslu = $this->db->get_where('bawaslu', array('id_sub' => NULL))->result();
		$data['page'] = 'bawaslu';
		$data['title'] = 'Bawaslu';
		$data['bawaslu'] = $bawaslu;
		$this->load->view('mobile/index', $data);
	}

	public function bawaslu_detail($id){
		$bawaslu = $this->db->get_where('bawaslu', array('id_bawaslu' => $id))->row();
		$anggota = $this->db->get_where('anggota_bawaslu', array('id_bawaslu' => $id))->result();

		$data['page'] = 'bawaslu/detail';
		$data['title'] = $bawaslu->nama;
		$data['detail'] = $bawaslu;
		$data['anggota'] = $anggota;
		$this->load->view('mobile/index', $data);
	}

	public function gakkumdu(){
		$gakkumdu = $this->db->get_where('gakkumdu', array('id_sub' => NULL))->result();
		$data['page'] = 'gakkumdu';
		$data['title'] = 'Gakkumdu';
		$data['gakkumdu'] = $gakkumdu;
		$this->load->view('mobile/index', $data);
	}

	public function gakkumdu_detail($id){
		$gakkumdu = $this->db->get_where('gakkumdu', array('id_gakkumdu' => $id))->row();

		$data['page'] = 'gakkumdu/detail';
		$data['title'] = $gakkumdu->nama;
		$data['detail'] = $gakkumdu;
		$this->load->view('mobile/index', $data);
	}

	public function layanan(){
		$data['page'] = 'layanan';
		$data['title'] = 'Kritik/Saran';
		$this->load->view('mobile/index', $data);
	}

	public function laporan(){
		$data['page'] = 'laporan';
		$data['title'] = 'Laporan';
		$this->load->view('mobile/index', $data);
	}

	public function penanganan(){
		$data['page'] = 'penanganan';
		$data['title'] = 'Penanganan Kasus';
		$this->load->view('mobile/index', $data);
	}

	function logout() {
      $this->session->sess_destroy();
      $this->session->set_flashdata('success', 'logged_out');
      redirect(site_url('login'), 'refresh');
    }
}