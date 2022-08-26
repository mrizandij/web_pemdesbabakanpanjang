<?php
defined('BASEPATH') or exit('No direct script access allowed');
class Halaman extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
		$this->load->library('fpdf'); // MEMANGGIL LIBRARY YANG KITA BUAT TADI
	}

	public function detail()
	{
		$query = $this->model_utama->view_join_one('halamanstatis', 'users', 'username', array('judul_seo' => $this->uri->segment(3)), 'id_halaman', 'DESC', 0, 1);
		if ($query->num_rows() <= 0) {
			redirect('main');
		} else {
			$row = $query->row_array();
			$data['title'] = cetak($row['judul']);
			$data['description'] = cetak($row['isi_halaman']);
			$data['keywords'] = cetak(str_replace(' ', ', ', $row['judul']));
			$data['rows'] = $row;

			$dataa = array('dibaca' => $row['dibaca'] + 1);
			$where = array('id_halaman' => $row['id_halaman']);
			$this->model_utama->update('halamanstatis', $dataa, $where);
			$this->template->load(template() . '/template', template() . '/detailhalaman', $data);
		}
	}
	public function post_skck()
	{
		if (isset($_POST['submit'])) {
			$data = array(
				'nama' => $this->input->post('nama'),
				'alamat' => $this->input->post('alamat')
			);

			$this->model_app->insert('skck', $data);
			redirect('halaman/detail/palemahan/success');
		}
	}
	public function view_surat_pdf()
	{
		$d['rs'] = $this->model_app->view_where('skck', 'id="5"');
		$this->load->view('dinas-1/surat_pdf', $d);
	}
}
