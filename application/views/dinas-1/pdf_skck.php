<?php

/* setting zona waktu */
date_default_timezone_set('Asia/Jakarta');
$this->fpdf->FPDF("P", "cm", "Legal"); //set kertas F4
$this->fpdf->SetMargins(1.5, 1.2, 1, 0.8); //set margin kiri, atas, kanan, bawah 1cm
$this->fpdf->AliasNbPages(); //fungsi page number/total page pada footer 
$this->fpdf->AddPage(); //fungsi buat halaman baru 
foreach ($rs_desa as $dt_ds) {
	$hasil[] = $dt_ds;
} //panggil database 
foreach ($rs_desa as $dt_desa) {
	$hasil[] = $dt_desa;
} //panggil database 
foreach ($rs_kec as $dt_kec) {
	$hasil[] = $dt_kec;
} //panggil database 
foreach ($rs_kab as $dt_kab) {
	$hasil[] = $dt_kab;
} //panggil database 
foreach ($rs as $dk) {
	$hasil[] = $dk;
} //panggil database 
foreach ($rs_skck as $da) {
	$hasil[] = $da;
} //panggil database 
foreach ($rs_banjar as $dkk) {
	$hasil[] = $dkk;
}
foreach ($rs_kop as $dtkop) {
	$hasil[] = $dtkop;
}

$form = $this->uri->segment(5);
$kop = $dtkop->kop;
if ($kop == "Y") {
	if ($form == "F.1") {
		$jab = "Kepala Desa";
		$ttd = "Kepala Desa";
		$nomor = $da->nomor;
		$nama = $this->app_model->find_namakades($dt_ds->idds);
		$bar = './asset/images/garuda.png';
		$this->fpdf->Image('./' . $bar, 9.5, 1, 2.5);
		//Mulai judul
		$this->fpdf->Ln(2.7);
		$this->fpdf->SetFont('helvetica', 'B', 16); //set ulang font 
		$this->fpdf->Cell(19, 0.6, 'DESA ' . strtoupper($dt_ds->namads) . ' ', 0, 0, 'C');
		$this->fpdf->Ln();

		$this->fpdf->SetFont('helvetica', 'B', 14); //set ulang font 
		$this->fpdf->Cell(19, 0.6, 'KECAMATAN ' . strtoupper($dt_kec->namakec) . ' KABUPATEN ' . strtoupper($dt_kab->namakab), 0, 0, 'C');
	} elseif ($form == "F.2") {
		$jab = "Kepala Desa";
		$ttd = "a.n. Kepala Desa";
		$nomor = $da->nomor;
		// $nama=$this->app_model->find_namasekdes($dk->desa_idds);
		$nama = "___________________________";
		//logo pemda custome
		$logo = $dt_ds->logo;
		if ($logo != "") {
			$bar = './asset/foto/' . $dt_ds->logo;
		} else {
			$bar = './asset/images/logo_pemda.jpg';
		}
		$this->fpdf->Image('./' . $bar, 1.5, 1.2, 2.0);
		$this->fpdf->SetFont('helvetica', 'B', 14); //set ulang font 
		$this->fpdf->Cell(2.0, 0.7, ' ', '', 0, 'C', 0);
		$this->fpdf->Cell(16, 0.6, strtoupper($dtkop->line1), '', 0, 'C', 0);
		$this->fpdf->Ln();
		$this->fpdf->SetFont('helvetica', 'B', 14); //set ulang font 
		$this->fpdf->Cell(2.0, 0.7, ' ', '', 0, 'C', 0);
		$this->fpdf->Cell(16, 0.6, strtoupper($dtkop->line2), '', 0, 'C', 0);
		$this->fpdf->SetFont('helvetica', 'B', 18); //set ulang font 
		$this->fpdf->Ln();
		$this->fpdf->Cell(2.0, 0.7, ' ', '', 0, 'C', 0);
		$this->fpdf->Cell(16, 0.6, strtoupper($dtkop->line3), '', 0, 'C', 0);
		$this->fpdf->Ln();
		$this->fpdf->SetFont('helvetica', '', 10); //set ulang font 
		$this->fpdf->Cell(2.0, 0.5, ' ', '', 0, 'C', 0);
		$this->fpdf->Cell(16, 0.5, '' . $dtkop->line4, '', 0, 'C', 0);
		$this->fpdf->Ln();
		/* Fungsi Line untuk membuat garis */
		$this->fpdf->Line(1, 3.6, 20, 3.6);
		$this->fpdf->SetLineWidth(0.05);
		$this->fpdf->Line(1, 3.69, 20, 3.69);
	} elseif ($form == "F.3") {
		$jab = "Kepala Desa";
		$ttd = "Kepala Desa";
		$nomor = $da->nomor;
		$nama = $this->app_model->find_namakades($dt_ds->idds);
		//logo pemda custome
		$logo = $dt_ds->logo;
		if ($logo != "") {
			$bar = './asset/foto/' . $dt_ds->logo;
		} else {
			$bar = './asset/images/logo_pemda.jpg';
		}
		$this->fpdf->Image('./' . $bar, 1.5, 1.2, 2.0);
		$this->fpdf->SetFont('helvetica', 'B', 14); //set ulang font 
		$this->fpdf->Cell(2.0, 0.7, ' ', '', 0, 'C', 0);
		$this->fpdf->Cell(16, 0.6, strtoupper($dtkop->line1), '', 0, 'C', 0);
		$this->fpdf->Ln();
		$this->fpdf->SetFont('helvetica', 'B', 14); //set ulang font 
		$this->fpdf->Cell(2.0, 0.7, ' ', '', 0, 'C', 0);
		$this->fpdf->Cell(16, 0.6, strtoupper($dtkop->line2), '', 0, 'C', 0);
		$this->fpdf->SetFont('helvetica', 'B', 18); //set ulang font 
		$this->fpdf->Ln();
		$this->fpdf->Cell(2.0, 0.7, ' ', '', 0, 'C', 0);
		$this->fpdf->Cell(16, 0.6, strtoupper($dtkop->line3), '', 0, 'C', 0);
		$this->fpdf->Ln();
		$this->fpdf->SetFont('helvetica', '', 10); //set ulang font 
		$this->fpdf->Cell(2.0, 0.5, ' ', '', 0, 'C', 0);
		$this->fpdf->Cell(16, 0.5, '' . $dtkop->line4, '', 0, 'C', 0);
		$this->fpdf->Ln();
		/* Fungsi Line untuk membuat garis */
		$this->fpdf->Line(1, 3.6, 20, 3.6);
		$this->fpdf->SetLineWidth(0.05);
		$this->fpdf->Line(1, 3.69, 20, 3.69);
	}
} else {
	if ($form == "F.1") {
		$jab = "Kepala Desa";
		$ttd = "Kepala Desa";
		$nomor = $da->nomor;
		$nama = $this->app_model->find_namakades($dt_ds->idds);
		$this->fpdf->Ln(2.8);
	} elseif ($form == "F.2") {
		$jab = "Kepala Desa/Lurah";
		$ttd = "a.n. Kepala Desa/Lurah";
		$nomor = $da->nomor;
		$this->fpdf->Ln(2.8);
		// $nama=$this->app_model->find_namasekdes($dk->desa_idds);
		$nama = "___________________________";
	} elseif ($form == "F.3") {
		$jab = "Kepala Desa";
		$ttd = "Kepala Desa";
		$nomor = $da->nomor;
		$this->fpdf->Ln(2.8);
		$nama = $this->app_model->find_namakades($dt_ds->idds);
	}
}
/* ————– Header Halaman selesai ————————————————*/
$this->fpdf->Ln(1.2);
$this->fpdf->SetFont('helvetica', 'B', 14); // Setting Font : String Family, String Style, Font size
$this->fpdf->Cell(19, 0.5, 'SURAT PENGANTAR', 0, 0, 'C'); //mulai judul center 
$this->fpdf->Ln(); //fungsi garis baru 
$this->fpdf->SetFont('helvetica', 'UB', 14);
$this->fpdf->Cell(19, 0.5, 'SURAT KETERANGAN CATATAN KEPOLISIAN', 0, 0, 'C'); //mulai judul center 
$this->fpdf->Ln(); //fungsi garis baru
$this->fpdf->SetFont('helvetica', '', 11); //set ulang font 
foreach ($rs_skck as $da) {
	$hasil[] = $da;
}
$this->fpdf->Cell(19, 0.5, 'Nomor: ' . $nomor, 0, 0, 'C'); //mulai judul center 
$this->fpdf->Ln(); //fungsi garis baru

$this->fpdf->Ln(1.0);
$this->fpdf->Cell(1, 0.5, '', 0);
$this->fpdf->MultiCell(17, 0.5, 'Yang bertanda tangan dibawah ini ' . $jab .
	' ' . ucwords(strtolower($this->app_model->find_desa($dt_ds->idds))) .
	' Kecamatan ' . ucwords(strtolower($this->app_model->find_kec(substr($dk->desa_idds, 0, 6)))) .
	' Kabupaten ' . ucwords(strtolower($this->app_model->find_kab(substr($dk->desa_idds, 0, 4)))) .
	' dengan ini menerangkan bahwa:', 0, 'J'); //mulai judul center 
$this->fpdf->Cell(1, 1.5, '', 0);
$this->fpdf->Ln(0.5);
$this->fpdf->Cell(2, 0.5, '', 0);
foreach ($rs as $dk) {
	$hasil[] = $dk;
} //panggil database 
$this->fpdf->SetFont('helvetica', '', 11); //set ulang font 
$this->fpdf->Cell(4, 0.7, 'Nama ', 0, 0, 'L');
$this->fpdf->Cell(0.5, 0.7, ': ', 0, 0, 'L');
$this->fpdf->SetFont('helvetica', 'B', 11); //set ulang font 
$this->fpdf->Cell(11, 0.7, $dk->nama, 0, 0, 'L');
$this->fpdf->SetFont('helvetica', '', 11); //set ulang font 
$this->fpdf->Ln();
$this->fpdf->Cell(2, 0.7, '', 0);
$this->fpdf->Cell(4, 0.7, 'Tempat/Tgl Lahir', 0, 0, 'L');
$this->fpdf->Cell(0.5, 0.7, ': ', 0, 0, 'L');
$this->fpdf->Cell(11, 0.7, ucwords(strtolower($dk->t_lahir)) . ', ' . $this->app_model->tgl_indo($dk->tgl_lahir), 0, 0, 'L');
$this->fpdf->Ln();
$this->fpdf->Cell(2, 0.7, '', 0);
$this->fpdf->Cell(4, 0.7, 'Jenis Kelamin ', 0, 0, 'L');
$this->fpdf->Cell(0.5, 0.7, ': ', 0, 0, 'L');
$this->fpdf->Cell(11, 0.7, $this->app_model->find_jk($this->app_model->jk($dk->jk)), 0, 0, 'L');
$this->fpdf->Ln();
$this->fpdf->Cell(2, 0.7, '', 0);
$this->fpdf->Cell(4, 0.7, 'Status Perkawinan ', 0, 0, 'L');
$this->fpdf->Cell(0.5, 0.7, ': ', 0, 0, 'L');
$this->fpdf->Cell(11, 0.7, $this->app_model->status($dk->status), 0, 0, 'L');
$this->fpdf->Ln();
$this->fpdf->Cell(2, 0.7, '', 0);
$this->fpdf->Cell(4, 0.7, 'Agama ', 0, 0, 'L');
$this->fpdf->Cell(0.5, 0.7, ': ', 0, 0, 'L');
$this->fpdf->Cell(11, 0.7, $this->app_model->agama($dk->agama), 0, 0, 'L');
$this->fpdf->Ln();
$this->fpdf->Cell(2, 0.7, '', 0);
$this->fpdf->Cell(4, 0.7, 'Kewarganegaraan ', 0, 0, 'L');
$this->fpdf->Cell(0.5, 0.7, ': ', 0, 0, 'L');
$this->fpdf->Cell(11, 0.7, $dk->warga, 0, 0, 'L');
$this->fpdf->Ln();
$this->fpdf->Cell(2, 0.7, '', 0);
$this->fpdf->Cell(4, 0.7, 'Pekerjaan ', 0, 0, 'L');
$this->fpdf->Cell(0.5, 0.7, ': ', 0, 0, 'L');
$this->fpdf->Cell(11, 0.7, $this->app_model->pekerjaan($dk->pekerjaan), 0, 0, 'L');
$this->fpdf->Ln();
$this->fpdf->Cell(2, 0.7, '', 0);
$this->fpdf->Cell(4, 0.7, 'Alamat ', 0, 0, 'L');
$this->fpdf->Cell(0.5, 0.7, ': ', 0, 0, 'L');
$this->fpdf->MultiCell(11.2, 0.7, ucwords(strtolower($dk->alamat)) . ' RT. ' . $dk->rtrw . ' Desa ' . ucwords(strtolower($this->app_model->find_desa($dk->desa_idds)))
	. ' Kecamatan ' . ucwords(strtolower($this->app_model->find_kec(substr($dk->desa_idds, 0, 6))))
	. ' Kabupaten ' . ucwords(strtolower($this->app_model->find_kab(substr($dk->desa_idds, 0, 4)))), 0, 'J');
$this->fpdf->Cell(2, 0.7, '', 0);
$this->fpdf->Cell(4, 0.7, 'N I K', 0, 0, 'L');
$this->fpdf->Cell(0.5, 0.7, ': ', 0, 0, 'L');
$this->fpdf->Cell(11, 0.7, $dk->nik, 0, 0, 'L');

$this->fpdf->Ln(1.0);
$this->fpdf->Cell(1, 0.9, '', 0);
$this->fpdf->MultiCell(17, 0.5, 'Berdasarkan Surat Pengantar RT. ' . $dk->rtrw . ' nama tersebut diatas benar salah seorang warga  yang datang  menghadap kepada kami dan berdomisili tersebut diatas.
Dan nama tersebut diatas tidak terlibat pidana ORPOL dan ORMAS lainnya serta surat keterangan ini di pergunakan untuk melengkapi persyaratan:', 0, 'J'); //mulai judul center 
$this->fpdf->Ln(0.2);
$this->fpdf->Cell(2, 0.5, '', 0);
$this->fpdf->SetFont('helvetica', 'B', 11); //set ulang font 
$this->fpdf->MultiCell(17, 0.5, $da->keperluan, 0, 'J');
$this->fpdf->SetFont('helvetica', '', 11); //set ulang font 
$this->fpdf->Ln(0.2);
$this->fpdf->Cell(1, 0.5, '', 0);
$this->fpdf->MultiCell(17, 0.5, 'Catatan: Apabila ada kekeliruan di kemudian hari, surat keterangan ini maka akan ditinjau kembali.', 0, 'J');
$this->fpdf->Cell(1, 1.5, '', 0);
$this->fpdf->Ln(0.2);
$this->fpdf->Cell(1, 0.5, '', 0);
$this->fpdf->MultiCell(17, 0.5, 'Demikian Surat Keterangan ini dibuat dengan sesungguhnya mengingat sumpah jabatan.', 0, 'J');
$this->fpdf->Cell(1, 1.5, '', 0);



$this->fpdf->Ln(0.7);
$this->fpdf->Cell(11, 0.5, '', 0);
$this->fpdf->Cell(3, 0.5, 'Dikeluarkan di ', 0, 'L');
$this->fpdf->Cell(17, 0.5, ': ' . ucwords(strtolower($this->app_model->find_desa($dk->desa_idds))), 0, 'J');
$this->fpdf->Ln();
$this->fpdf->Cell(1, 0.5, '', 0);
$this->fpdf->Cell(10, 0.5, '', 0);
$this->fpdf->Cell(3, 0.5, 'Pada Tanggal ', 0, 'L');
$this->fpdf->MultiCell(17, 0.5, ': ' . $this->app_model->tgl_indo($da->tgl), 0, 'J');
//$this->fpdf->Ln(0.3); 
$this->fpdf->Cell(11, 0.5, '', 0);
$this->fpdf->Cell(7.5, 0.5, '--------------------------------------------------', 0, 'L');
$this->fpdf->Cell(1, 1.5, '', 0);
$this->fpdf->Ln(0.5);
$this->fpdf->Cell(1, 0.5, '', 0);
$this->fpdf->Cell(7.0, 0.5, 'Camat ' . ucwords(strtolower($this->app_model->find_kec(substr($dk->desa_idds, 0, 6)))), 0, 0, 'L');
$this->fpdf->Cell(3, 0.5, '', 0);
$this->fpdf->Cell(5, 0.5, $jab . ' ' . ucwords(strtolower($this->app_model->find_desa($dk->desa_idds))), 0, 'L');
$this->fpdf->Ln(3);
$this->fpdf->SetFont('helvetica', 'BU', 12); //set ulang font 
$this->fpdf->Cell(1, 0.5, '', 0);
$this->fpdf->Cell(7.0, 0.5, '..............................................', '', 0, 'L');
$this->fpdf->Cell(3, 0.5, '', 0, 'L');
$this->fpdf->Cell(5, 0.5, $nama, 0, 'L');
$this->fpdf->Ln(1.0);
$this->fpdf->SetFont('helvetica', '', 12); //set ulang font 
$this->fpdf->Cell(1, 0.5, '', 0);
$this->fpdf->Cell(7.0, 0.5, 'Danramil ' . ucwords(strtolower($this->app_model->find_kec(substr($dk->desa_idds, 0, 6)))), 0, 0, 'L');
$this->fpdf->Cell(3, 0.5, '', 0);
$this->fpdf->Cell(5, 0.5, 'Kapolsek ' . ucwords(strtolower($this->app_model->find_kec(substr($dk->desa_idds, 0, 6)))), 0, 'L');
$this->fpdf->Ln(3);
$this->fpdf->SetFont('helvetica', 'BU', 12); //set ulang font 
$this->fpdf->SetFont('helvetica', 'BU', 12); //set ulang font 
$this->fpdf->Cell(1, 0.5, '', 0);
$this->fpdf->Cell(7.0, 0.5, '..............................................', '', 0, 'L');
$this->fpdf->Cell(3, 0.5, '', 0, 'L');
$this->fpdf->Cell(5, 0.5, '..............................................', 0, 'L');

//mulai judul center 
$this->fpdf->SetY(-5);  /* setting posisi footer 3 cm dari bawah */
//$this->fpdf->SetFont('Times','',10); /* setting font untuk footer */
/* setting cell untuk waktu pencetakan */
//$this->fpdf->Cell(9.5, 0.5, 'Printed on : '.date('d/m/Y H:i').'',0,'LR','L');
$this->fpdf->SetFont('helvetica', '', 10); //set ulang font 
if ($form == "F.1") {
	//$this->fpdf->Cell(19.5,0.5,'Alamat: '.$dt_ds->alamat.'',0,'LR','C');
} else {
	$this->fpdf->Cell(19.5, 0.5, '', 0, 'LR', 'C');
}

$this->fpdf->SetY(-3.7);  /* setting posisi footer 3 cm dari bawah */
$this->fpdf->SetFont('Times', 'I', 8); /* setting font untuk footer */
/* setting cell untuk waktu pencetakan */
//$this->fpdf->Cell(9.5, 0.5, 'Printed on : '.date('d/m/Y H:i').'',0,'LR','L');
$this->fpdf->SetTextColor(128, 128, 128);
$this->fpdf->Cell(9.5, 0.5, 'Printed by: ' . $title . ' ' . ucwords(strtolower($dt_desa->namads)), 0, 'LR', 'L');

$mobile = $this->uri->segment(13);
if (!$mobile) {
	$this->fpdf->Output('skck_' . $dk->nik . '.pdf', 'I');
} else {
	$this->fpdf->Output('skck_' . $dk->nik . '.pdf', 'D');
}
