<h1><?= $title ?></h1>
<?php foreach ($posts as $post) : ?>
  <h3><?php echo $post['title']; ?></h3>
  <small class="post-date">Posted on: <?php echo $post['created_at']; ?></small>
  <?php echo $post['body']; ?>
  <br><br>
  <p><a class="btn" href="<?php echo site_url('/posts/'.$post['slug']); ?>">Read More</a></p>
<?php endforeach; ?>
