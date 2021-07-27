<style>
  @media print {
    .nop {
      display: none;
    }
  }
</style>
<link rel="stylesheet" href="<?php echo base_url('theme/admin/bower_components/bootstrap/dist/css/bootstrap.min.css'); ?>">
<div class="row justify-content-center">
  <div class="col-md-10 center-block" style="float:none">
  <br>
    <center>
      <h4>Laporan Transaksi Jasa Freelance Online</h4>
    </center>
    <center>
      <h5><?php echo $this->all_model->format_tanggal($_GET['tgl1']) . ' - ' . $this->all_model->format_tanggal($_GET['tgl1']); ?></h5>
    </center>
    <br>
    <table class="table table-bordered table-hover">
      <thead>
        <tr>
          <th>No</th>
          <th>Nama User</th>
          <th>Nama Sewa</th>
          <th>Kategori</th>
          <th>Tanggal</th>
          <th>Waktu</th>
          <th>Total Bayar</th>
          <th>Status</th>
        </tr>
      </thead>
      <tbody>
        <?php $total = 0;
        if (!empty($transaksi)) :
          foreach ($transaksi as $key => $p) {
            $total = $total + $p->harga;
            $no = $key + 1;
            if ($p->status == '0') {
              $status = '<label class="label label-default">Menunggu</label>';
            } elseif ($p->status == '2') {
              $status = '<label class="label label-warning">Kembali</label>';
            } else {
              $status = '<label class="label label-success">Disetujui</label>';
            }
            if ($p->waktu == 1) {
              $nilai = "08.00 - 10.00";
            } elseif ($p->waktu == 2) {
              $nilai = "10.00 - 12.00";
            } elseif ($p->waktu == 3) {
              $nilai = "13.00 - 15.00";
            } elseif ($p->waktu == 4) {
              $nilai = "15.00 - 17.00";
            } else {
              $nilai = "19.00 - 21.00";
            }
            echo '<tr>';
            echo '<td>' . $no . '</td>';
            echo '<td>' . $p->nama_lengkap . '</td>';
            echo '<td>' . $p->nama_produk . '</td>';
            echo '<td>' . $p->nama_kategori . '</td>';
            echo '<td>' . $this->all_model->format_tanggal($p->tanggal) . '</td>';
            echo '<td>' . $nilai . '</td>';
            echo '<td>' . $this->all_model->format_harga($p->harga) . '</td>';
            echo '<td>' . $status . '</td>';
            echo '</tr>';
          }
        endif; ?>
      </tbody>
      <tfoot>
        <tr>
          <th></th>
          <th></th>
          <th></th>
          <th></th>
          <th></th>
          <th></th>
          <th>Total Transaksi</th>
          <th><?php echo $this->all_model->format_harga($total) ?></th>
        </tr>
      </tfoot>
    </table>

    <center><a href="#" onclick="print();" class="nop">Cetak</a></cetak>
  </div>
</div>