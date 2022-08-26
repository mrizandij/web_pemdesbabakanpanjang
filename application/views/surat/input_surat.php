<div id="main">
    <?php echo validation_errors() ?>
    <marquee behavior="" direction="" bgcolor="#000080" style="color: #FFFFFF; font-family: Book Antiqua">Silahkan isi Kolom DI Bawah ini Dengan Identitas Lengkap Anda Kemudian Cetak Surat dan Datang Ke Kantor Desa Untuk Meminta Tanda Tangan </marquee>

    <section id="intro" class="main">
        <div class="spotlight">
            <div class="content">
                <header class="major">

                    <h2>Layanan Input Pengantar Surat SKCK</h2>
                </header>
                <!-- <p><?= $satu_data_apply->jobstart ?>sampai<?= $satu_data_apply->jobend ?></p>
                <p>Location:<?= $satu_data_apply->jobloc ?></p> -->
                <p>Silahkan isi Kolom DI Bawah ini Dengan Identitas Lengkap Anda Kemudian Cetak Surat dan Datang Ke Kantor Desa Untuk Meminta Tanda Tangan </p>

            </div>
            <img src="<?= base_url() ?>asset/images/bg-fix.jpg" class="landing" />
        </div>
    </section>

    <section id="first" class="main special">
        <header class="major">
            <h2>Surat Pengantar SKCK</h2>
        </header>


        <form action="<?php echo base_url('Surat/post_skck'); ?>" method="post" enctype="multipart/form-data">
            <div class="row gtr-uniform">
                <div class="col-6 col-12-xsmall">
                    Nama
                    <input type="text" name="nama" id="name" placeholder="Nama" />
                </div>
                <div class="col-6 col-12-xsmall">
                    Bin/Binti
                    <input type="text" name="binti" id="binti" placeholder="Bin/Binti" />
                </div>
                <div class="col-6 col-12-xsmall">
                    NIK
                    <input type="text" name="nik" id="nik" placeholder="Nik" />
                </div>
                <div class="col-6 col-12-xsmall">
                    Jenis Kelamin
                    <select name="kelamin">
                        <option value="Laki-laki">Laki-laki</option>
                        <option value="Perempuan">Perempuan</option>
                    </select>
                </div>
                <div class="col-6 col-12-xsmall">
                    Negara
                    <input type="text" name="negara" id="negara" placeholder="Kewarganegaraan" />
                </div>
                <div class="col-6 col-12-xsmall">
                    Tempat Lahir
                    <input type="text" name="tempat" id="tempat" placeholder="Tempat Lahir" />
                </div>
                <div class="col-6 col-12-xsmall">
                    Tanggal Lahir
                    <input type="date" class="form-control" name="tgl" id="tgl">
                </div>
                <div class="col-6 col-12-xsmall">
                    Status Perkawinan
                    <input type="text" class="form-control" name="kawin" id="Status Perkawinan">
                </div>
                <!-- <div class="col-6 col-12-xsmall">
                    Telepon (Whatsapp) jangan dihapus angka 62 yang sudah ada<br> Contoh : 62085667XXXX
                    <input type="text" name="telepon" id="telepon" min="1" value="62" required>
                </div> -->
                <div class="col-6 col-12-xsmall">
                    Agama
                    <input type="text" name="agama" id="agama" placeholder="Agama" />
                </div>
                <div class="col-6 col-12-xsmall">
                    Pekerjaan
                    <input type="text" name="pekerjaan" id="pekerjaan" placeholder="Pekerjaan" />
                </div>
                <!-- <div class="form-group">
                    <label for="exampleInputPassword1">Foto Surat Keterangan Magang dari Sekolah/Kampus</label>
                    <input type="file" name="foto" class="form-control">
                </div> -->
                <div class="col-12">
                    Alamat
                    <textarea name="alamat" id="alamat" placeholder="Enter your message" rows="6"></textarea>
                </div>
                <div class="col-6 col-12-xsmall">
                    Tanggal Sekarang
                    <input type="date" class="form-control" name="tgl_skrg" id="tgl_skrg">
                </div>

                <div class="modal-footer">
                    <a type="button" href="<?= base_url('Main'); ?> " class=" btn btn-danger">Close</a>
                    <button type="submit" name="submit" class="primary">Daftar</button>
                </div>
            </div>
        </form>
    </section>
</div>