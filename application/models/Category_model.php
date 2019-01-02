<?php
  class Category_model extends CI_Model {
    public function __construct() {
      $this->load->database();
    }

    public function get_categories() {
      $this->db->order_by('name');
      $query = $this->db->get('Category');
      return $query->result_array();
    }

    public function create_category() {
      $data = array(
        'name' => $this->input->post('name')
      );

      return $this->db->insert('Category', $data);
    }

    public function get_category($id) {
      $query = $this->db->get_where('Category', array('id' => $id));

      return $query->row();
    }
  }