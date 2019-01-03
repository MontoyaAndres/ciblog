<?php
  class User_model extends CI_Model {
    public function __construct() {
      $this->load->database();
    }

    public function register($enc_password) {
      $data = array(
        'name' => $this->input->post('name'),
        'email' => $this->input->post('email'),
        'username' => $this->input->post('username'),
        'password' => $enc_password,
        'zipcode' => $this->input->post('zipcode')
      );

      return $this->db->insert('User', $data);
    }
  }