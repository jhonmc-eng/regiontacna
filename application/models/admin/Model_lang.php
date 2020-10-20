<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Model_lang extends CI_Model 
{

	function get_auto_increment_id()
    {
        $sql = "SHOW TABLE STATUS LIKE 'tbl_lang'";
        $query = $this->db->query($sql);
        return $query->result_array();
    }
	
    function show() {
        $sql = "SELECT * FROM tbl_lang ORDER BY lang_id ASC";
        $query = $this->db->query($sql);
        return $query->result_array();
    }

    function make_all_empty($data)
    {
        $this->db->update('tbl_lang',$data);
    }

    function add($data) {
        $this->db->insert('tbl_lang',$data);
        return $this->db->insert_id();
    }

    function add_detail($data) {
        $this->db->insert('tbl_lang_detail',$data);
        return $this->db->insert_id();
    }

    function update($id,$data) {
        $this->db->where('lang_id',$id);
        $this->db->update('tbl_lang',$data);
    }

    function delete($id)
    {
        $this->db->where('lang_id',$id);
        $this->db->delete('tbl_lang');
    }
    function delete_detail($id)
    {
        $this->db->where('lang_id',$id);
        $this->db->delete('tbl_lang_detail');
    }

    function getData($id)
    {
        $sql = 'SELECT * FROM tbl_lang WHERE lang_id=?';
        $query = $this->db->query($sql,array($id));
        return $query->first_row('array');
    }

    function lang_check($id)
    {
        $sql = 'SELECT * FROM tbl_lang WHERE lang_id=?';
        $query = $this->db->query($sql,array($id));
        return $query->first_row('array');
    }

    function detail($id) {
        $sql = "SELECT * FROM tbl_lang_detail WHERE lang_id=?";
        $query = $this->db->query($sql,array($id));
        return $query->result_array();
    }

    function update_detail($id,$data) {
        $this->db->where('lang_detail_id',$id);
        $this->db->update('tbl_lang_detail',$data);
    }

}