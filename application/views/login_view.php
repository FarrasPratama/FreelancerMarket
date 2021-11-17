<?php $this->load->view('header') ?>
<div class="login">
    <div class="container">
        <div class="login-grids">
            <div class="col-md-6 log">
                     <h1>Login</h1><br>
                     <div class="strip"></div>
                     <h2>Selamat Datang, Silahkan masuk</h2>
                     <p>Jika belum punya akun, silahkan <a href="<?php echo base_url('daftar')?>">Daftar</a></p>
                     <?php echo $this->session->flashdata('msg'); ?>
                     <form data-parsley-validate action="<?php echo base_url('login/aksi_login')?>" method="post">
                         <h5>Username:</h5>
                         <input type="text" name="nama" data-parsley-type="nama" required>
                         <h5>Password:</h5>
                         <input type="password" name="password" required><br>
                         <input type="submit" value="Login">
                     </form>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<?php $this->load->view('footer') ?>
