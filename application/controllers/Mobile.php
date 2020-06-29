<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Mobile extends CI_Controller {

	public function __construct()
    {
        parent::__construct();
        $this->load->database();
    }

	public function index()
	{
		redirect('mobile/menu', 'refresh');
	}
	
	public function login()
	{
		$this->load->view('mobile/login');
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

		$data['page'] = 'bawaslu/detail';
		$data['title'] = $bawaslu->nama;
		$data['detail'] = $bawaslu;
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
}