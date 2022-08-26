<div id="main">
    <?php echo validation_errors() ?>
    <marquee behavior="" direction="" bgcolor="#000080" style="color: #FFFFFF; font-family: Book Antiqua">Cetak Surat dan Datang Ke Kantor Desa Untuk Meminta Tanda Tangan</marquee>

    <section id="intro" class="main">
        <div class="spotlight">
            <div class="content">
                <header class="major">

                    <h2>Cetak Surat SKCK Yang Sudah Anda Buat</h2>
                </header>
                <!-- <p><?= $satu_data_apply->jobstart ?>sampai<?= $satu_data_apply->jobend ?></p>
                <p>Location:<?= $satu_data_apply->jobloc ?></p> -->
                <p>Pastikan Nama Anda Sudah Terdata Dalam Tabel, Jika sudah Silahkan Klik Tombol Cetak Surat </p>

            </div>
            <img src="<?= base_url() ?>asset/images/bg-fix.jpg" class="landing" />
        </div>
    </section>

    <section id="first" class="main special">
        <!-- <header class="major">
            <h2>Daftar Posisi Ini</h2>
        </header> -->

        <section id="second" class="main special">
            <header class="major">
                <h2><strong>Cetak Surat Pengantar SKCK</strong></h2>
            </header>
            <div class="table-wrapper">
                <table class="alt">
                    <thead>
                        <tr>
                            <th> No</th>
                            <th>
                                <center> Nama </center>
                            </th>
                            <th>
                                <center>Jenis Kelamin</center>
                            </th>
                            <th>
                                <center> Alamat </center>
                            </th>
                            <!-- <th>tipe magang</th> -->
                            <th>
                                <center>Aksi </center>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php $no = 1;
                        foreach ($skck as $key => $value) : ?>
                            <tr>
                                <td><?= $no++ ?></td>
                                <td><?= $value->nama ?></td>
                                <td><?= $value->kelamin ?></td>
                                <td><?= $value->alamat ?>



                                <td><a href="<?= base_url('Surat/view_surat_pdf/' . $value->id); ?>" class="btn btn-primary">Cetak Surat</a></td>
                            </tr>

                        <?php endforeach ?>
                    </tbody>
                </table>
            </div>
        </section>