<?php
  class Users extends CI_Controller {
    public function register() {
      $data['title'] = 'Sign Up';

      $this->form_validation->set_rules('name', 'Name', 'required');
      $this->form_validation->set_rules('username', 'Username', 'required|is_unique[User.username]');
      $this->form_validation->set_rules('email', 'Email', 'required|is_unique[User.email]');
      $this->form_validation->set_rules('password', 'Password', 'required');
      $this->form_validation->set_rules('password2', 'ConfirmPassword', 'matches[password]');

      if (!$this->form_validation->run()) {
        $this->load->view('templates/header');
        $this->load->view('users/register', $data);
        $this->load->view('templates/footer');
      } else {
        // Encrypt password
        $enc_password = md5($this->input->post('password'));

        $this->user_model->register($enc_password);

        // Set message
        $this->session->set_flashdata('user_registered', 'You are now registered and can log in');

        redirect('posts');
      }
    }
  }