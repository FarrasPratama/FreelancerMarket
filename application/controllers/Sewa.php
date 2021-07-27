<?php

/**
 *
 */
class Sewa extends CI_Controller {

  public function __construct() {
    parent::__construct();
    if (empty($this->session->userdata('is_login'))) {
      echo '<script>alert("Anda Harus Login Terlebih Dahulu");window.location.href="'.base_url('login').'"</script>';
    }
  }

  public function index() {
    $this->load->view('sewa_view');
  }

  public function tambah_sewa() {
    $trans = $this->all_model->get_where(
      array(
        'tanggal'     => $this->input->post('tanggal'),
        'waktu'  => $this->input->post('qty')
      ),
      'transaksi'
    );
    if (!empty($trans)) {
      $this->session->set_flashdata('msg', '<div class="alert alert-danger fade in alert-dismissable"><a href="#" class="close" data-dismiss="alert" aria-label="close" title="close">×</a>Mohon Maaf, Jasa Freelance Telah Di Booking, Silahkan Pilih Tanggal dan Waktu Yang Berbeda</div>');
      redirect('produk/detail/'.$this->input->post('produk_id'));
    } else {

    $produk_id    = $this->input->post('produk_id');
    $tanggal         = $this->input->post('tanggal');
    $qty          = $this->input->post('qty');
    $waktu        = $this->input->post('qty');
    $nama         = $this->input->post('nama_produk');
    $harga        = $this->input->post('harga');
    // $selisih      = $this->all_model->hitung_selisih($tanggal, $sampai);
    // $tharga       = $harga * $selisih;
    //$tharga       = $harga;
    $data = array(
        'id'         => $tanggal,
        'produk_id'  => $produk_id,
        'qty'        => $qty,
        'tanggal'       => $tanggal,
        'waktu'      => $waktu,
        'price'      => $harga,
        'name'       => $nama,
    );
    $in = $this->cart->insert($data);
    if ($in) {
      redirect('sewa');
    }
  }
  }

  public function hapus($id)   {
    $in = $this->cart->remove($id);
    if ($in) {
      redirect('sewa');
    }
  }

  public function simpan_sewa() {
    $data = $this->cart->contents();
    foreach ($data as $k) {
        $data_simpan = array(
          'user_id'    => $this->session->userdata('user_id'),
          'produk_id'  => $k['produk_id'],
          'tanggal'       => $k['tanggal'],
          'waktu'     => $k['waktu'],
          'harga'      => $k['subtotal']
        );
        $this->all_model->insert($data_simpan, 'transaksi');
    }
    redirect('sewa/selesai');
  }

  public function selesai() {
    $this->load->view('selesai_view');
  }

  public function tutup() {
     $this->cart->destroy();
     redirect('home');
  }

}

 ?>
