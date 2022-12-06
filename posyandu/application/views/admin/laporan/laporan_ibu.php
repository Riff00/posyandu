<div class="container">
    <h4 class="text-center mt-3 mb-4">Laporan Data Ibu</h4>
    <small class="text-center">Perum Pesona laguna 2, Depok</small>
    <center><img src="<?php echo base_url(); ?>assets/img/melati.png" class="img-fluid rounded" width="220px"><br>
        <br><br>
        <div class="row">
            <div class="col-md">
                <table class="table table-bordered">
                    <tr>
                        <th>No</th>
                        <th>Nik ibu</th>
                        <th>Nama ibu</th>
                        <td>Tempat lahir</td>
                        <td>Tanggal Lahir</td>
                        <td>Nama Suami</td>
                        <td>Alamat</td>

                    </tr>
                    <?php $no = 1; foreach($ibu as $b) : ?>
                    <tr>
                        <td><?= $no++; ?></td>
                        <td><?= $b['nik_ibu']; ?></td>
                        <td><?= $b['nama_ibu']; ?></td>
                        <td><?= $b['tempat_lahir']; ?></td>
                        <td><?= $b['tgl_lahir']; ?></td>

                        <td><?= $b['nama_suami']; ?> </td>
                        <td><?= $b['alamat']; ?> </td>

                    </tr>
                    <?php endforeach; ?>
                </table>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4 offset-md-8">
                <table>
                    <tr>
                        <td></td>
                        <td>
                            <?php $tgl = date_create(date('d-m-Y')); ?>
                            <p>Depok, <?= date_format($tgl, 'd M Y'); ?>
                                <br>
                                Administrator<br><br>
                                ______________________
                            </p>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
</div>

<script>
window.print();
</script>