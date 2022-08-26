<?php
// foreach($rs->result()as $r){
// echo "<center><h1>Nama:  ".$r->nama."</h1></center>";
// }

// error_reporting(0);



// error_reporting(0);

// AGAR ERROR MASALAH VERSI PHP TIDAK MUNCUL


$pdf = new FPDF('P', 'mm', 'Legal');
$pdf->AddPage();


$pdf->SetFont('helvetica', 'B', 12);
$pdf->Cell(0, 7, 'PEMERINTAH KABUPATEN SUKABUMI ', 0, 1, 'C');
$pdf->Cell(0, 7, 'KECAMATAN NAGRAK', 0, 1, 'C');
$pdf->Cell(0, 7, 'DESA BABAKAN PANJANG ', 0, 1, 'C');
$pdf->SetFont('helvetica', '', 12);
$pdf->Cell(0, 7, 'Kp. Babakan RT 02 RW 04 KM. 06 Kecamatan Nagrak Kode Pos 43356 ', 0, 1, 'C');
$pdf->SetFont('helvetica', 'U', 12);
$pdf->Cell(0, 7, '                                                                                                                                                           ', 0, 1, 'C');
$pdf->SetFont('helvetica', '', 12);
$pdf->Cell(0, 7, '', 0, 1, 'C');
$pdf->SetFont('helvetica', 'B', 12);
$pdf->Cell(0, 7, 'SURAT PENGANTAR ', 0, 1, 'C');
$pdf->SetFont('helvetica', 'UB', 12);
$pdf->Cell(0, 7, 'KETERANGAN CATATAN KEPOLISIAN ', 0, 1, 'C');
$pdf->SetFont('helvetica', '', 12);
$pdf->Cell(0, 7, 'NO :   /    /    /2021 ', 0, 1, 'C');
$pdf->SetFont('helvetica', '', 12);
$pdf->Cell(0, 7, '', 0, 1, 'C');
$pdf->SetFont('helvetica', '', 12);
$pdf->Cell(20, 7, ' ', 0,  'C');
$pdf->MultiCell(210, 7, 'Kepala Desa Babakan Panjang Kecamatan Nagrak Kabupaten Sukabumi, dengan ini 
menerangkan bahwa :', 0, 'J');

$pdf->Ln();
$pdf->Cell(30, 7, '', 0);
$pdf->Cell(50, 8, 'Nama ',  0, 'J');
$pdf->Cell(100, 8, ': ' . $data->nama, 0, 'C');

$pdf->Ln();
$pdf->Cell(30, 7, '', 0);
$pdf->Cell(50, 8, 'Bin / Binti',  0, 'J');
$pdf->Cell(100, 8, ': ' . $data->binti, 0, 'C');

$pdf->Ln();
$pdf->Cell(30, 7, '', 0);
$pdf->Cell(50, 8, 'Tempat, tanggal lahir',  0, 'J');
$pdf->Cell(20, 8, ': ' . $data->tempat, 0, 'C');


$pdf->Cell(1, 7, '', 0);
// $pdf->Cell(50, 8, '',  1, 'J');
$pdf->Cell(100, 8, ', ' . $data->tgl, 0, 'C');

$pdf->Ln();
$pdf->Cell(30, 7, '', 0);
$pdf->Cell(50, 8, 'Jenis Kelamin',  0, 'J');
$pdf->Cell(20, 8, ': ' . $data->kelamin, 0, 'C');

$pdf->Ln();
$pdf->Cell(30, 7, '', 0);
$pdf->Cell(50, 8, 'Kewarganegaraan',  0, 'J');
$pdf->Cell(20, 8, ': ' . $data->negara, 0, 'C');

$pdf->Ln();
$pdf->Cell(30, 7, '', 0);
$pdf->Cell(50, 8, 'Agama',  0, 'J');
$pdf->Cell(20, 8, ': ' . $data->agama, 0, 'C');

$pdf->Ln();
$pdf->Cell(30, 7, '', 0);
$pdf->Cell(50, 8, 'Status Perkawinan',  0, 'J');
$pdf->Cell(20, 8, ': ' . $data->kawin, 0, 'C');

$pdf->Ln();
$pdf->Cell(30, 7, '', 0);
$pdf->Cell(50, 8, 'Pekerjaan',  0, 'J');
$pdf->Cell(20, 8, ': ' . $data->pekerjaan, 0, 'C');

$pdf->Ln();
$pdf->Cell(30, 7, '', 0);
$pdf->Cell(50, 8, 'Alamat',  0, 'J');
$pdf->Cell(20, 8, ': ' . $data->alamat, 0, 'C');

$pdf->Ln();
$pdf->Cell(30, 7, '', 0);
$pdf->Cell(50, 8, 'NIK',  0, 'J');
$pdf->Cell(20, 8, ': ' . $data->nik, 0, 'C');

$pdf->Ln();
$pdf->Ln();
$pdf->SetFont('helvetica', '', 12);
$pdf->Cell(20, 7, ' ', 0,  'C');
$pdf->MultiCell(210, 7, 'Yang bersangkutan tersebut diatas benar warga desa kami dan berdasarkan catatan dan 
sepengetahuan kami :
1. Tidak Tersangku Kenakalan Remaja.
2. Tidak Tersangkut Kriminal Perkara Kepolisian.
3. Tidak Terlibat dalam Penggunaan / Pengedaran NARKOTIKA / Obat Terlarang Lainnya.

Surat keterangan ini dibuat untuk melengkapi persyaratan administrasi.
Demikian surat keterangan ini dibuat dengan sebenarnya dan dapat dipergunakan 
seperlunya.', 0, 'J');

$pdf->Ln();
$pdf->Cell(110, 7, '', 0);
$pdf->Cell(15, 8, 'Nagrak, ',  0, 'J');
$pdf->Cell(20, 8,  $data->tgl_skrg, 0, 'C');
$pdf->Ln();
$pdf->Cell(110, 7, '', 0);
$pdf->Cell(50, 8, 'Kepala Desa Babakan Panjang, ',  0, 'J');

$pdf->Ln();
$pdf->Ln();
$pdf->Ln();
$pdf->Ln();
$pdf->SetFont('helvetica', 'UB', 12);
$pdf->Cell(110, 7, '', 0);
$pdf->Cell(50, 8, 'JEJEN JAENUDIN',  0, 'J');


$pdf->Cell(10, 7, '', 0, 1);
$pdf->SetFont('Arial', '', 10);

$bar = './asset/logo/lambang.png';
$pdf->Image('./' . $bar, 15, 10, 23.5); {
    // $pdf->SetY(-3);

    //  $pdf->Cell(0, 6, $data->binti, 0, 1, 'C');
    // $pdf->Cell(0, 6, $data->kelamin, 0, 1, 'C');
    // $pdf->Cell(0, 6, $data->tempat, 0, 1, 'C');
    // $pdf->Cell(0, 6, $data->negara, 0, 1, 'C');
    // $pdf->Cell(0, 6, $data->tgl, 0, 1, 'C');
    // $pdf->Cell(0, 6, $data->kawin, 0, 1, 'C');
    // $pdf->Cell(0, 6, $data->agama, 0, 1, 'C');
    // $pdf->Cell(0, 6, $data->pekerjaan, 0, 1, 'C');
    // $pdf->Cell(0, 6, $data->alamat, 0, 1, 'C');
    // $pdf->Cell(0, 6, $data->nik, 0, 1, 'C');


}
$pdf->Output();
