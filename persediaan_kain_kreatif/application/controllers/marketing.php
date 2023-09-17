<?php
defined('BASEPATH') or exit('No direct script access allowed');

class marketing extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        cek_login();

        $this->load->model('Admin_model', 'admin');
        $this->load->library('form_validation');
    }

    public function index()
    {
        $data['title'] = "Data marketing";
        $data['marketing'] = $this->admin->get('marketing');
        $this->template->load('templates/dashboard', 'marketing/data', $data);
    }

    private function _validasi()
    {
        $this->form_validation->set_rules('nama_marketing', 'nama marketing', 'required|trim');
        $this->form_validation->set_rules('no_telp', 'no_telp', 'required');
        $this->form_validation->set_rules('alamat', 'alamat', 'required');
    }

    public function add()
    {
        $this->_validasi();

        if ($this->form_validation->run() == false) {
            $data['title'] = "Data marketing";

            // Mengenerate ID Barang
            $kode_terakhir = $this->admin->getMax('marketing', 'id_marketing');
            $kode_tambah = substr($kode_terakhir, -4, 4);
            $kode_tambah++;
            $number = str_pad($kode_tambah, 4, '0', STR_PAD_LEFT);
            $data['id_marketing'] = 'M' . $number;

            $this->template->load('templates/dashboard', 'marketing/add', $data);
        } else {
            $input = $this->input->post(null, true);
            $insert = $this->admin->insert('marketing', $input);

            if ($insert) {
                set_pesan('data berhasil disimpan');
                redirect('marketing');
            } else {
                set_pesan('gagal menyimpan data');
                redirect('marketing/add');
            }
        }
    }

    public function edit($getId)
    {
        $id = encode_php_tags($getId);
        $this->_validasi();

        if ($this->form_validation->run() == false) {
            $data['title'] = "Data marketing";
            $data['marketing'] = $this->admin->get('marketing', ['id_marketing' => $id]);
            $this->template->load('templates/dashboard', 'marketing/edit', $data);
        } else {
            $input = $this->input->post(null, true);
            $update = $this->admin->update('marketing', 'id_marketing', $id, $input);

            if ($update) {
                set_pesan('data berhasil disimpan');
                redirect('marketing');
            } else {
                set_pesan('gagal menyimpan data');
                redirect('marketing/edit/' . $id);
            }
        }
    }

    public function delete($getId)
    {
        $id = encode_php_tags($getId);
        if ($this->admin->delete('marketing', 'id_marketing', $id)) {
            set_pesan('data berhasil dihapus.');
        } else {
            set_pesan('data gagal dihapus.', false);
        }
        redirect('marketing');
    }

    public function getstok($getId)
    {
        $id = encode_php_tags($getId);
        $query = $this->admin->cekStok($id);
        output_json($query);
    }
}
