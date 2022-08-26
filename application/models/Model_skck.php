<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Model_skck extends CI_Model
{
    // Tabel job 
    public function get_skck()
    {
        $this->db->select('*');
        $this->db->from('skck');
        $query = $this->db->get();
        return $query->result();
    }
    public function create_skck($data)
    {
        $this->db->insert('skck', $data);
    }
    public function hapus_skck($id)
    {
        $this->db->where('id', $id);
        $this->db->delete('skck');
    }
    public function ambil_satu_data($id)
    {
        $this->db->select('*');
        $this->db->from('skck');
        $this->db->where('id', $id);
        $query = $this->db->get();
        return $query->row();
    }
    public function Update_job($data)
    {
        $this->db->where('id', $data['id']);
        $this->db->update('skck', $data);
    }
}
