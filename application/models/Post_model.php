<?php
  class Post_model extends CI_Model {
    public function __construct() {
      $this->load->database();
    }

    public function get_posts($slug = FALSE, $limit = FALSE, $offset = FALSE) {
      if ($limit) {
        $this->db->limit($limit, $offset);
      }

      if (!$slug) {
        $this->db->order_by('Post.id', 'DESC');
        $this->db->join('Category', 'Category.id = Post.category_id');
        $query = $this->db->get('Post');
        return $query->result_array();
      }

      $query = $this->db->get_where('Post', array('slug' => $slug));
      return $query->row_array();
    }

    public function create_post($post_image) {
      $slug = url_title($this->input->post('title'));
      $data = array(
        'title' => $this->input->post('title'),
        'slug' => $slug,
        'body' => $this->input->post('body'),
        'category_id' => $this->input->post('category_id'),
        'user_id' => $this->session->userdata('user_id'),
        'post_image' => $post_image
      );

      return $this->db->insert('Post', $data);
    }

    public function delete_post($id) {
      $image_file_name = $this->db->select('post_image')->get_where('Post', array('id' => $id))->row()->post_image;

      if ($image_file_name !== "noimage.jpg") {
        $image_file_path = APPPATH."../assets/images/posts/".$image_file_name;
        unlink($image_file_path);
      }

      $this->db->where('id', $id);
      $this->db->delete('Post');
      return true;
    }

    public function update_post() {
      $slug = url_title($this->input->post('title'));
      $data = array(
        'title' => $this->input->post('title'),
        'slug' => $slug,
        'body' => $this->input->post('body'),
        'category_id' => $this->input->post('category_id')
      );

      $this->db->where('id', $this->input->post('id'));
      return $this->db->update('Post', $data);
    }

    public function get_categories() {
      $this->db->order_by('name');
      $query = $this->db->get('Category');
      return $query->result_array();
    }

    public function get_posts_by_category($category_id) {
      $this->db->order_by('Post.id', 'DESC');
      $this->db->join('Category', 'Category.id = Post.category_id');
      $query = $this->db->get_where('Post', array('category_id' => $category_id));
			return $query->result_array();
    }
  }