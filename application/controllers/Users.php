<?php
  class Users extends CI_Controller {
    public function register() {
      if ($this->session->userdata('logged_in')) {
        redirect('posts');
      }
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

    public function login(){
      if ($this->session->userdata('logged_in')) {
        redirect('posts');
      }

      $data['title'] = 'Sign In';

      $this->form_validation->set_rules('username', 'Username', 'required');
      $this->form_validation->set_rules('password', 'Password', 'required');

      if(!$this->form_validation->run()){
        $this->load->view('templates/header');
        $this->load->view('users/login', $data);
        $this->load->view('templates/footer');
      } else {
        $username = $this->input->post('username');
        $password = md5($this->input->post('password'));

        $user_id = $this->user_model->login($username, $password);

        if($user_id){
          $user_data = array(
            'user_id' => $user_id,
            'username' => $username,
            'logged_in' => true
          );

          $this->session->set_userdata($user_data);
          $this->session->set_flashdata('user_loggedin', 'You are now logged in');

          redirect('posts');
        } else {
          $this->session->set_flashdata('login_failed', 'Login is invalid');
          redirect('users/login');
        }		
      }
    }

    public function logout(){
			// Unset user data
			$this->session->unset_userdata('logged_in');
			$this->session->unset_userdata('user_id');
			$this->session->unset_userdata('username');
			// Set message
			$this->session->set_flashdata('user_loggedout', 'You are now logged out');
			redirect('users/login');
		}
  }