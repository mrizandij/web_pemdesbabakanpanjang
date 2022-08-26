<?php
$web = $this->model_utama->view_where('identitas',array('id_identitas' => 1))->row_array();
?>
<strong>Copyright &copy; 2020 - <?php echo date('Y'); ?> <a target='_BLANK' href="<?php echo $web['url'];?>"> <?php echo $web['nama_website'];?></a>.</strong> All rights reserved. 