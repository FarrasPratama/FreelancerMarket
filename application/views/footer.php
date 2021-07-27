<!-- <div class="footer-grid">
    <div class="container">
        <div class="col-md-3 re-ft-grd">
            <h3>Kategori Sewa</h3>
            <ul class="categories">
              <?php $kategori = $this->all_model->get_where(array(), 'kategori');
                    foreach ($kategori as $key => $value) {
                        echo '<li><a href="'.base_url('produk/kategori/'.$value->kategori_id).'">'.$value->nama_kategori.'</a></li>';
                    }
              ?>
            </ul>
        </div>
</body>
</html> -->
