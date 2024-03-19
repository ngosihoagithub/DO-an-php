<?php

use App\Models\Post;

$posts = Post::where('status', '!=', 0)
   ->orderBy('created_at', 'DESC')
   ->get(); // Seclect * from post
$id = $_REQUEST['id'];
$post = Post::find($id);
?>
<?php require_once "../views/admin/header.php"; ?>
               <!--CONTENT  -->
               <div class="content">
                  <section class="content-header my-2">
                     <h1 class="d-inline">Chi tiết</h1>
                     <div class="row mt-2 align-items-center">
                        <div class="col-md-12 text-end">
                           <a href="index.php?opt=post" class="btn btn-primary btn-sm">
                              <i class="fa fa-arrow-left"></i> Về danh sách
                           </a>
                           <a href="index.php?opt=post&cat=edit&id<?= $post->id;?>" class="btn btn-success btn-sm">
                              <i class="fa fa-edit"></i> Sửa
                           </a>
                           <a href="index.php?opt=post&cat=delete&id<?= $post->id;?>" class="btn btn-danger btn-sm">
                              <i class="fa fa-trash"></i> Xóa
                           </a>
                        </div>
                     </div>
                  </section>
                  <section class="content-body my-2">

                     <table class="table table-bordered">
                        <thead>
                           <tr>
                              <th style="width:180px">Tên trường</th>
                              <th>Giá trị</th>
                           </tr>
                        </thead>
                        <tbody>
                           <tr>
                              <td> <?= $post->title; ?></td>
                              <td> <?= $post->id; ?></td>
                           </tr>
                        </tbody>
                     </table>

                  </section>
               </div>
               <!--END CONTENT-->
               <?php require_once "../views/admin/footer.php"; ?>