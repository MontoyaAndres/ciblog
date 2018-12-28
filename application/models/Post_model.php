<?php
  class Post_model extends CI_Model {
    public function __construct() {
      $this->load->database();
    }

    public function get_posts($slug = FALSE) {
      if (!$slug) {
        $query = $this->db->get('Post');
        return $query->result_array();
      }

      $query = $this->db->get_where('Post', array('slug' => $slug));
      return $query->row_array();
    }
  }