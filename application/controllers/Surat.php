<?php
defined('BASEPATH') or exit('No direct script access allowed');
class Surat extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Model_skck');
        $this->load->model('Model_app');
        $this->load->library('fpdf'); // MEMANGGIL LIBRARY YANG KITA BUAT TADI
    }

    public function index()
    {
        $jumlah = $this->model_utama->view('skck')->num_rows();
        $config['base_url'] = base_url() . 'surat/index/';
        $config['total_rows'] = $jumlah;
        $config['per_page'] = 20;
        if ($this->uri->segment('3') == '') {
            $dari = 0;
        } else {
            $dari = $this->uri->segment('3');
        }
        $data['title'] = "PELAYANAN SURAT";
        $data['description'] = description();
        $data['keywords'] = keywords();
        if (is_numeric($dari)) {
            $data['download'] = $this->model_utama->view_ordering_limit('download', 'id_download', 'DESC', $dari, $config['per_page']);
        } else {
            redirect('main');
        }
        $this->pagination->initialize($config);
        $this->template->load(template() . '/template', template() . '/surat', $data);
    }

    public function tambah_data()
    {
        // Validasi job
        $validasi = $this->form_validation;  // Inisiaslisasi

        // $validasi->set_rules('id', 'id', 'required|is_unique[job.id]');
        $validasi->set_rules('nama', 'nama', 'required');
        // $validasi->set_rules('binti', 'binti', 'required');
        $validasi->set_rules('kelamin', 'kelamin', 'required');
        $validasi->set_rules('tempat', 'tempat', 'required');
        $validasi->set_rules('negara', 'negara', 'required');
        $validasi->set_rules('tgl', 'tgl', 'required');
        $validasi->set_rules('kawin', 'kawin', 'required');
        $validasi->set_rules('agama', 'agama', 'required');
        // $validasi->set_rules('pekerjaan', 'pekerjaan', 'required');
        $validasi->set_rules('alamat', 'alamat', 'required');
        $validasi->set_rules('nik', 'nik', 'required');


        // Pesan Error
        $validasi->set_message('required', '%s Tidak Boleh Kosong !');


        if ($validasi->run() === FALSE) {

            $skck = $this->Model_skck->get_skck();
            $data = array(
                'isi'                => 'dinas-1/surat',
                'skck' => $skck
            );
            $this->load->view('surat/layout/header');
            $this->load->view('surat/input_surat', $data);
            $this->load->view('surat/layout/footer');
        } else {

            $data = array(
                // 'id'        => $this->input->post('id'),
                'nama' => $this->input->post('nama'),
                // 'binti' => $this->input->post('binti'),
                'kelamin' => $this->input->post('kelamin'),
                'tempat' => $this->input->post('tempat'),
                'negara' => $this->input->post('negara'),
                'tgl' => $this->input->post('tgl'),
                'kawin' => $this->input->post('kawin'),
                'agama' => $this->input->post('agama'),
                // 'pekerjaan' => $this->input->post('pekerjaan'),
                'alamat' => $this->input->post('alamat'),
                'nik' => $this->input->post('nik'),

            );

            $this->Model_skck->create_skck($data);
            $this->session->set_flashdata('berhasil', 'Data berhasil di tambah!');
            redirect(base_url('Surat/Input_skck'), 'refresh');
        }
    }
    public function post_skck()
    {
        if (isset($_POST['submit'])) {
            $data = array(
                'nama' => $this->input->post('nama'),
                'alamat' => $this->input->post('alamat'),
                'binti' => $this->input->post('binti'),
                'kelamin' => $this->input->post('kelamin'),
                'tempat' => $this->input->post('tempat'),
                'negara' => $this->input->post('negara'),
                'tgl' => $this->input->post('tgl'),
                'kawin' => $this->input->post('kawin'),
                'agama' => $this->input->post('agama'),
                'pekerjaan' => $this->input->post('pekerjaan'),
                'nik' => $this->input->post('nik'),
                'tgl_skrg' => $this->input->post('tgl_skrg')


            );

            $this->Model_app->insert('skck', $data);
            redirect('Surat/thanks');
        }
    }
    public function view_surat_pdf($id)
    {
        $d['data'] = $this->Model_skck->ambil_satu_data($id);
        $this->load->view('dinas-1/surat_pdf', $d);
    }
    public function thanks()
    {

        $this->load->view('surat/thanks');
        $this->load->view('surat/layout/footer');
    }

    public function tabel_cetak()
    {
        $tabel = $this->Model_skck->get_skck();
        $data = array(
            'isi'                => 'surat/tabel_cetak',
            'skck' => $tabel
        );
        $this->load->view('surat/layout/header');
        $this->load->view('surat/tabel_cetak', $data);
        $this->load->view('surat/layout/footer');
    }
    public function cetak($id)
    {

        $data_cetak = $this->Model_skck->ambil_satu_data($id);
        $data = array(
            'isi'                     => 'dinas-1/surat_pdf',
            'data' => $data_cetak
        );

        $this->load->view('surat/layout/header');
        $this->load->view('dinas-1/surat_pdf', $data);
        $this->load->view('surat/layout/footer');
    }
    public function skck()
    {
        $this->load->view('dinas-1/pdf_skck');
    }
    public function tabel_skck()
    {
        $tabel = $this->Model_skck->get_skck();
        $data = array(
            'isi'                => 'surat/tabel_skck',
            'skck' => $tabel
        );
        $this->load->view('surat/layout/header');
        $this->load->view('surat/tabel_skck', $data);
        $this->load->view('surat/layout/footer');
    }
    public function hapus($id)
    {
        $this->Model_skck->hapus_skck($id);
        $this->session->set_flashdata('hapus', 'Data berhasil di hapus !');
        redirect(base_url('surat/tabel_skck'), 'refresh');
    }
}
