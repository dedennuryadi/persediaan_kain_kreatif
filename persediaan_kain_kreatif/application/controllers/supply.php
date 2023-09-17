<?php
defined('BASEPATH') or exit('No direct script access allowed');

class supply extends CI_Controller
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
        $data['title'] = "Data supplier";
        $data['supply'] = $this->admin->get('supply');
        $this->template->load('templates/dashboard', 'supply/data', $data);
    }

    private function _validasi()
    {
        $this->form_validation->set_rules('nama_supplier', 'nama supplier', 'required|trim');
        $this->form_validation->set_rules('no_telp', 'no_telp', 'required');
        $this->form_validation->set_rules('alamat', 'alamat', 'required');
    }

    public function add()
    {
        $this->_validasi();

        if ($this->form_validation->run() == false) {
            $data['title'] = "Data supplier";

            // Mengenerate ID customer
            $kode_terakhir = $this->admin->getMax('supply', 'id_supply');
            $kode_tambah = substr($kode_terakhir, -4, 4);
            $kode_tambah++;
            $number = str_pad($kode_tambah, 4, '0', STR_PAD_LEFT);
            $data['id_supply'] = 'SG-' . $number;

            $this->template->load('templates/dashboard', 'supply/add', $data);
        } else {
            $input = $this->input->post(null, true);
            $insert = $this->admin->insert('supply', $input);

            if ($insert) {
                set_pesan('data berhasil disimpan');
                redirect('supply');
            } else {
                set_pesan('gagal menyimpan data');
                redirect('supply/add');
            }
        }
    }

    public function edit($getId)
    {
        $id = encode_php_tags($getId);
        $this->_validasi();

        if ($this->form_validation->run() == false) {
            $data['title'] = "Supplier";
            $data['supply'] = $this->admin->get('supply', ['id_supply' => $id]);
            $this->template->load('templates/dashboard', 'supply/edit', $data);
        } else {
            $input = $this->input->post(null, true);
            $update = $this->admin->update('supply', 'id_supply', $id, $input);

            if ($update) {
                set_pesan('data berhasil diedit.');
                redirect('supply');
            } else {
                set_pesan('data gagal diedit.');
                redirect('supply/edit/' . $id);
            }
        }
    }


    public function delete($getId)
    {
        $id = encode_php_tags($getId);
        if ($this->admin->delete('supply', 'id_supply', $id)) {
            set_pesan('data berhasil dihapus.');
        } else {
            set_pesan('data gagal dihapus.', false);
        }
        redirect('supply');
    }

    public function getstok($getId)
    {
        $id = encode_php_tags($getId);
        $query = $this->admin->cekStok($id);
        output_json($query);
    }
}
