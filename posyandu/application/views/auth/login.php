<!DOCTYPE html>
<html lang="en">

<head>
      <meta charset="utf-8">
      <meta content="width=device-width, initial-scale=1.0" name="viewport">

      <title><?= $title; ?></title>
      <meta content="" name="description">
      <meta content="" name="keywords">

      <!-- Favicons -->
      <!-- <link href="<?= base_url(); ?>assets/nice/assets/img/favicon.png" rel="icon">
      <link href="<?= base_url(); ?>assets/nice/assets/assets/img/apple-touch-icon.png" rel="apple-touch-icon"> -->

      <!-- Google Fonts -->
      <link href="https://fonts.gstatic.com" rel="preconnect">
      <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

      <!-- Vendor CSS Files -->
      <link href="<?= base_url(); ?>assets/nice/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
      <link href="<?= base_url(); ?>assets/nice/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
      <link href="<?= base_url(); ?>assets/nice/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
      <link href="<?= base_url(); ?>assets/nice/assets/vendor/quill/quill.snow.css" rel="stylesheet">
      <link href="<?= base_url(); ?>assets/nice/assets/vendor/quill/quill.bubble.css" rel="stylesheet">
      <link href="<?= base_url(); ?>assets/nice/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
      <link href="<?= base_url(); ?>assets/nice/assets/vendor/simple-datatables/style.css" rel="stylesheet">

      <!-- Template Main CSS File -->
      <link href="<?= base_url(); ?>assets/nice/assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: NiceAdmin - v2.4.1
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <main>
    <div class="container">

      <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">

              <div class="d-flex justify-content-center py-4">
                <a href="#" class="logo d-flex align-items-center w-auto">
                  
                  <span class="d-none d-lg-block">Posyandu Melati</span>
                </a>
              </div><!-- End Logo -->

              <div class="card mb-5">
                <div class="card-body">

                <form class="form-signin" action="" method="post">
                  <div class="pt-3 pb-3">
                    <h5 class="card-title text-center pb-0 fs-4">Login</h5>
                    <p class="text-center small">Masukan Username dan Password </p>
                  </div>

                  <form class="row g-3 needs-validation" novalidate>

                    <?= $this->session->flashdata('pesan'); ?>
                    <div class="col-12">
                      <label for="Username" class="form-label">Username</label>
                      <div class="input-group has-validation">
                        <span class="input-group-text" id="inputGroupPrepend"></span>
                        <input type="text" name="username" class="form-control" id="Username" placeholder="Username" required>
                        <small class="muted text-danger"><?= form_error('username');?></small>
                      </div>
                    </div>

                    <div class="col-12 mb-4 mt-3">
                      <label for="password" class="form-label">Password</label>
                      <input type="password" name="password" class="form-control" id="password" placeholder="Password" required>
                      <small class="muted text-danger"><?= form_error('password'); ?></small>
                    </div>

                    <div class="col-12">
                      <button class="btn btn-primary w-100" type="submit">Login</button>
                    </div>
                    
                  </form>

                </div>
              </div>

              <div class="credits">
                <!-- All the links in the footer should remain intact. -->
                <!-- You can delete the links only if you purchased the pro version. -->
                <!-- Licensing information: https://bootstrapmade.com/license/ -->
                <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
                Designed by <a href="">Arief Fathur Rohman</a>
              </div>

            </div>
          </div>
        </div>

      </section>

    </div>
  </main><!-- End #main -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/nice/assets/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="assets/nice/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/nice/assets/vendor/chart.js/chart.min.js"></script>
  <script src="assets/nice/assets/vendor/echarts/echarts.min.js"></script>
  <script src="assets/nice/assets/vendor/quill/quill.min.js"></script>
  <script src="assets/nice/assets/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="assets/nice/assets/vendor/tinymce/tinymce.min.js"></script>
  <script src="assets/nice/assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/nice/assets/js/main.js"></script>

</body>

</html>