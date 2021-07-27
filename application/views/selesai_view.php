<?php $this->load->view('header') ?>
<style>
  @media print {
    body * {
      visibility: hidden;
    }

    #print,
    #print * {
      visibility: visible;
    }

    #print {
      position: absolute;
      width: 100%;
      left: 0;
      top: 0;
    }

    .noprint {
      display: none;
    }
  }
</style>
<div class="head-bread">
  <div class="container">
    <ol class="breadcrumb">
      <li><a href="<?php echo base_url(); ?>">Home</a></li>
      <li><a href="<?php echo base_url('produk') ?>">Produk</a></li>
      <li class="active">Selesai</li>
    </ol>
  </div>
</div>
<div class="container">
  <div class="col-sm-12">

    <div class="panel panel-default" id="print">
      <div class="panel-heading">
        Data Jasa
      </div>
      <div class="panel-body">
        <p>Atas Nama : <?php echo $this->session->userdata('nama') ?></p><br>
        <p>No Telp : <?php echo $this->session->userdata('notelp') ?></p><br>
        <p>Email : <?php echo $this->session->userdata('email') ?></p><br>
        <p>Alamat : <?php echo $this->session->userdata('alamat') ?></p><br>
        <table class="table table-striped">
          <thead>
            <tr>
              <th>No</th>
              <th>Nama Sewa</th>
              <th>Waktu</th>
              <th>Tanggal</th>
              <th>Subtotal</th>
              <th class="noprint">Aksi</th>
            </tr>
          </thead>
          <tbody>
            <?php
            $data = $this->cart->contents();
            if (!empty($data)) {
              $no = 1;
              foreach ($data as $k) {
                if ($k['waktu'] ==1) {
                  $nilai = "08.00 - 10.00";
                } elseif ($k['waktu'] ==2) {
                  $nilai = "10.00 - 12.00";
                } elseif ($k['waktu'] ==3) {
                  $nilai = "13.00 - 15.00";
                } elseif ($k['waktu'] ==4) {
                  $nilai = "15.00 - 17.00";
                } else {
                  $nilai = "19.00 - 21.00";
                }
                echo '<tr>';
                echo '<td>' . $no . '</td>';
                echo '<td>' . $k['name'] . '</td>';
                echo '<td>' . $nilai . '</td>';
                echo '<td>' . $k['tanggal'] . '</td>';
                echo '<td>' . $this->all_model->format_harga($k['subtotal']) . '</td>';
                echo '<td><a href="' . base_url('sewa/hapus/' . $k['rowid']) . '" class="noprint">Hapus</a></td>';
                echo '</tr>';
                $no++;
              }
            }
            ?>
          </tbody>
          <tfoot>
            <tr>
              <th></th>
              <th></th>
              <th></th>
              <th></th>
              <th>Total</th>
              <th><?php echo $this->all_model->format_harga($this->cart->total()); ?></th>
              <th class="noprint"></th>
            </tr>
          </tfoot>
        </table>
      </div>
      <div class="panel-footer noprint">
        <a href="<?php echo base_url('sewa/tutup') ?>" class="btn btn-primary  pull-right">Selesai</a>
        <bR><br>
      </div>
    </div>
  </div>
</div>
<?php $this->load->view('footer') ?>