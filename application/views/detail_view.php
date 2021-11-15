<?php $this->load->view('header'); ?>
<style media="screen">
  li.qty {
    width: 100%;
    float: left;
    margin: 0;
  }

  button.btn {
    width: 100%;
    background: #100b0b;
    color: #fff;
    font-family: 'Pathway Gothic One';
    font-size: 18px;
    border: none;
    border-radius: 0;
  }
</style>
<script>
  // Can also be used with $(document).ready()
  $(window).load(function() {
    $('.flexslider').flexslider({
      animation: "slide",
      controlNav: "thumbnails"
    });
  });
</script>
<div class="head-bread">
  <div class="container">
    <ol class="breadcrumb">
      <li><a href="<?php echo base_url(); ?>">Home</a></li>
      <li><a href="<?php echo base_url('produk') ?>">Produk</a></li>
      <li class="active">Detail</li>
    </ol>
  </div>
</div>

<div class="showcase-grid">
  <div class="container">
    <div class="col-md-8 showcase">
    <?php echo $this->session->flashdata('msg'); ?>
      <div class="flexslider">
        <ul class="slides">
          <li data-thumb="<?php echo base_url('upload/' . $detail[0]->gambar); ?>">
            <div class="thumb-image"> <img src="<?php echo base_url('upload/' . $detail[0]->gambar); ?>" data-imagezoom="true" class="img-responsive"> </div>
          </li>
        </ul>
        <div class="clearfix"></div>
      </div>
    </div>
    <div class="col-md-4 showcase">
      <div class="showcase-rt-top">
        <div class="pull-left shoe-name">
          <h3><?php echo $detail[0]->nama_produk; ?></h3>
          <h4><?php echo $this->all_model->format_harga($detail[0]->harga); ?> / orang</h4>
        </div>
        <div class="clearfix"></div>
      </div>
      <hr class="featurette-divider">
      <div class="shocase-rt-bot">
        <form class="" action="<?php echo base_url('sewa/tambah_sewa') ?>" method="post">
          <div class="float-qty-chart">
            <ul>
              <!-- <li class="qty">
                <h4>Tanggal</h4>
                <input type="hidden" name="produk_id" value="<?php echo $detail[0]->produk_id; ?>" required>
                <input type="hidden" name="nama_produk" value="<?php echo $detail[0]->nama_produk; ?>" required>
                <input type="hidden" name="harga" value="<?php echo $detail[0]->harga; ?>" required>
                <input type="date" name="tanggal" class="form-control" required>
              </li> -->
              <!-- <li class="qty">
                            <h4>Harga</h4>
                            <input type="date" name="sampai" class="form-control" required>
                        </li> -->
              <!-- <li class="qty">
                <h4>Pilih Waktu</h4>
                <select class="form-control qnty-chrt" name="qty" required>
                  <option value="1">08.00 - 10.00</option>
                  <option value="2">10.00 -12.00 </option>
                  <option value="3">13.00 - 15.00</option>
                  <option value="4">15.00 -17.00 </option>
                  <option value="5">19.00 - 21.00</option>
                </select> -->
              </li>
            </ul>
            <div class="clearfix"></div>
          </div>
          <!-- <ul>
            <li class="ad-2-crt simpleCart_shelfItem">
              <button type="submit" role="button" class="btn">Sewa</button>
            </li>
          </ul> -->
        </form>
      </div>
      <div class="showcase-last">
        <h3>Detail</h3>
        <ul>
          <li><?php echo $detail[0]->deskripsi; ?></li>
        </ul>
        <p>Dapat Masker Gratis Selamat Pandemi Covid-19
      </div>
    </div>
    <div class="clearfix"></div>
  </div>
</div>
<?php $this->load->view('footer'); ?>