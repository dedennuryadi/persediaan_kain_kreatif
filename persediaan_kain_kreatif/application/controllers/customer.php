<?php
defined('BASEPATH') or exit('No direct script access allowed');

class customer extends CI_Controller
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
        $data['title'] = "Data customer";
        $data['customer'] = $this->admin->get('customer');
        $this->template->load('templates/dashboard', 'customer/data', $data);
    }

    private function _validasi()
    {
        $this->form_validation->set_rules('nama_customer', 'nama customer', 'required|trim');
        $this->form_validation->set_rules('no_telp', 'no_telp', 'required');
        $this->form_validation->set_rules('alamat', 'alamat', 'required');
    }

    public function add()
    {
        $this->_validasi();

        if ($this->form_validation->run() == false) {
            $data['title'] = "Data customer";

            // Mengenerate ID customer
            $kode_terakhir = $this->admin->getMax('customer', 'id_customer');
            $kode_tambah = substr($kode_terakhir, -3, 3);
            $kode_tambah++;
            $number = str_pad($kode_tambah, 3, '0', STR_PAD_LEFT);
            $data['id_customer'] = 'Cust-' . $number;

            $this->template->load('templates/dashboard', 'customer/add', $data);
        } else {
            $input = $this->input->post(null, true);
            $insert = $this->admin->insert('customer', $input);

            if ($insert) {
                set_pesan('data berhasil disimpan');
                redirect('customer');
            } else {
                set_pesan('gagal menyimpan data');
                redirect('customer/add');
            }
        }
    }

    public function edit($getId)
    {
        $id = encode_php_tags($getId);
        $this->_validasi();

        if ($this->form_validation->run() == false) {
            $data['title'] = "customer";
            $data['customer'] = $this->admin->get('customer', ['id_customer' => $id]);
            $this->template->load('templates/dashboard', 'customer/edit', $data);
        } else {
            $input = $this->input->post(null, true);
            $update = $this->admin->update('customer', 'id_customer', $id, $input);
            if ($update) {
                set_pesan('data berhasil disimpan');
                redirect('customer');
            } else {
                set_pesan('data gagal disimpan', false);
                redirect('customer/add');
            }
        }
    }

    public function delete($getId)
    {
        $id = encode_php_tags($getId);
        if ($this->admin->delete('customer', 'id_customer', $id)) {
            set_pesan('data berhasil dihapus.');
        } else {
            set_pesan('data gagal dihapus.', false);
        }
        redirect('customer');
    }

    public function getstok($getId)
    {
        $id = encode_php_tags($getId);
        $query = $this->admin->cekStok($id);
        output_json($query);
    }
}
