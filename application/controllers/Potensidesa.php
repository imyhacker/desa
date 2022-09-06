<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Potensidesa extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('kategori_m', 'kategori', true);
        $this->load->model('potensidesa_m', 'potensidesa', true);
    }
    public function index()
    {
        $data['kategori'] = $this->kategori->getAll();
        $data['potensidesa'] = $this->potensidesa->getAll();
        $data['title'] = "Potensi desa";
        $this->load->view('themes/header', $data);
        $this->load->view('themes/top-menu', $data);
        $this->load->view('themes/breadcrumb');
        $this->load->view('potensidesa/index');
        $this->load->view('themes/sidebar');
        $this->load->view('themes/footer');
    }

    public function readmore()
    {
        $data['kategori'] = $this->kategori->getAll();
        $data['readmore'] = $this->artikel->readmore();
        $data['title'] = "Opini";
        $this->load->view('themes/header', $data);
        $this->load->view('themes/top-menu', $data);
        $this->load->view('themes/breadcrumb');
        $this->load->view('potensidesa/readmore');
        $this->load->view('themes/sidebar');
        $this->load->view('themes/footer');
    }
}
