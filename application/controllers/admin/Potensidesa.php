<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Potensidesa extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('potensidesa_m', 'potensidesa', true);
        $this->load->model('menu_m', 'menu', true);
        is_logged_in();
    }

    public function index()
    {
        $data['title'] = "Potensi desa";
        $data['menu'] = $this->menu->getAll();
        $data['potensidesa'] = $this->potensidesa->getAll();
        $this->load->view('_partials/header', $data);
        $this->load->view('_partials/sidebar', $data);
        $this->load->view('_partials/top-menu');
        $this->load->view('admin/potensidesa/index');
        $this->load->view('_partials/footer');
    }

    public function tambah()
    {
        $rules = $this->potensidesa->rules();
        $validation = $this->form_validation->set_rules($rules);

        if ($validation->run() == false) {
            $data['title'] = "Potensi desa";
            $data['menu'] = $this->menu->getAll();
            $data['potensidesa'] = $this->potensidesa->getAll();
            $this->load->view('_partials/header', $data);
            $this->load->view('_partials/sidebar', $data);
            $this->load->view('_partials/top-menu');
            $this->load->view('admin/potensidesa/add');
            $this->load->view('_partials/footer');
        } else {
            $this->potensidesa->save();
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Info desa berhasil ditambahkan!</div>');
            redirect('admin/potensidesa');
        }
    }

    public function edit($id = null)
    {
        $rules = $this->potensidesa->rules();
        $validation = $this->form_validation->set_rules($rules);

        if ($validation->run() == false) {
            $data['title'] = "Potensi desa";
            $data['menu'] = $this->menu->getAll();
            $data['potensidesa'] = $this->potensidesa->getById($id);
            $this->load->view('_partials/header', $data);
            $this->load->view('_partials/sidebar', $data);
            $this->load->view('_partials/top-menu');
            $this->load->view('admin/potensidesa/edit');
            $this->load->view('_partials/footer');
        } else {
            $this->potensidesa->update();
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Info desa berhasil diupdate!</div>');
            redirect('admin/potensidesa');
        }
    }

    public function hapus($id = null)
    {
        if (!isset($id))
            show_404();
        $delete = $this->potensidesa->delete($id);

        if ($delete) {
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Info desa berhasil dihapus!</div>');
            redirect('admin/potensidesa');
        }
    }
}
