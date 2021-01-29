<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Person_model extends CI_Model
{
    public function getjoinProdi()
    {
        $this->db->select(' fakultas.*, prodi.id_fakultas
                         AS id_prodi, prodi.nama_prodi, mahasiswa.* 
                         ');
        $this->db->join('prodi', 'fakultas.id_fakultas = prodi.id_fakultas');
        $this->db->join('mahasiswa', 'prodi.id_prodi = mahasiswa.id_prodi');
        $this->db->from('fakultas');
        $query = $this->db->get();
        return $query->result();
    }
}
