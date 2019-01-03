<?php

  class Posts extends CI_Controller {
    public function __construct() {
      parent::__construct();
      if (!$this->session->userdata('logged_in')) {
        redirect('users/login');
      }
    }

    public function index() {
      $data['title'] = 'Latest posts';
      $data['posts'] = $this->post_model->get_posts();

      $this->load->view('templates/header');
      $this->load->view('posts/index', $data);
      $this->load->view('templates/footer');
    }

    public function view($slug = NULL) {
      $data['post'] = $this->post_model->get_posts($slug);
      $post_id = $data['post']['id'];
      $data['comments'] = $this->comment_model->get_comments($post_id);

      if (empty($data['post'])) {
        show_404();
      }

      $data['title'] = $data['post']['title'];

      $this->load->view('templates/header');
      $this->load->view('posts/view', $data);
      $this->load->view('templates/footer');
    }

    public function create() {
      $data['title'] = 'Create post';
      $data['categories'] = $this->post_model->get_categories();

      $this->form_validation->set_rules('title', 'Title', 'required');
      $this->form_validation->set_rules('body', 'Body', 'required');

      if (!$this->form_validation->run()) {
        $this->load->view('templates/header');
        $this->load->view('posts/create', $data);
        $this->load->view('templates/footer');
      } else {
        // Upload image
        $config['upload_path'] = './assets/images/posts';
        $config['allowed_types'] = 'gif|jpg|png';
        $config['max_size'] = 2048;
        $config['max_width'] = 2000;
        $config['max_height'] = 2000;

        $this->load->library('upload', $config);

        $this->upload->initialize($config);

        if (!$this->upload->do_upload('userfile')) {
          $errors = array('error' => $this->upload->display_errors());
          $post_image = 'noimage.jpg';
        } else {
          $data = array('upload_data' => $this->upload->data());
          $post_image = str_replace(' ', '_', $_FILES['userfile']['name']);
        }

        $this->post_model->create_post($post_image);

        $this->session->set_flashdata('post_created', 'Your post has been created');

        redirect('posts');
      }
    }

    public function delete($id) {
      $this->post_model->delete_post($id);

      $this->session->set_flashdata('post_deleted', 'Your post has been deleted');

      redirect('posts');
    }

    public function edit($slug) {
      $data['post'] = $this->post_model->get_posts($slug);
      $data['categories'] = $this->post_model->get_categories();

      // Check right user
      if ($this->session->userdata('user_id') !== $data['post']['user_id']) {
        redirect('posts');
      }

      if(empty($data['post'])){
				show_404();
      }

      $data['title'] = 'Edit post';

      $this->load->view('templates/header');
      $this->load->view('posts/edit', $data);
      $this->load->view('templates/footer');
    }

    public function update() {
      $this->post_model->update_post();

      $this->session->set_flashdata('post_updated', 'Your post has been updated');

      redirect('posts');
    }
  }