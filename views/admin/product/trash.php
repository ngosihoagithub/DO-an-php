<?php

use App\Models\Category;
use App\Models\Product;

$products = Product::where('status', '=', 0)
   ->orderBy('created_at', 'DESC')
   ->get(); // Seclect * from product
   
?>
<?php require_once "../views/admin/header.php"; ?>
<!--CONTENT  -->
<div class="content">
   <section class="content-header my-2">
      <h1 class="d-inline">Thùng rác sản phẩm</h1>
      <div class="row mt-3 align-items-center">
         <div class="col-6">
            <ul class="manager">
               <li><a href="index.php?opt=product">Tất cả (123)</a></li>
               <li><a href="#">Xuất bản (12)</a></li>
               <li><a href="">Rác (12)</a></li>
            </ul>
         </div>
         <div class="col-6 text-end">
            <input type="text" class="search d-inline" />
            <button class="d-inline btnsearch">Tìm kiếm</button>
         </div>
      </div>
      <div class="row mt-1 align-items-center">
         <div class="col-md-8">
            <select name="" class="d-inline me-1">
               <option value="">Hành động</option>
               <option value="">Bỏ vào thùng rác</option>
            </select>
            <button class="btnapply">Áp dụng</button>
            <select name="" class="d-inline me-1">
               <option value="">Tất cả danh mục</option>
            </select>
            <select name="" class="d-inline me-1">
               <option value="">Tất cả thương hiệu</option>
            </select>
            <button class="btnfilter">Lọc</button>
         </div>
         <div class="col-md-4 text-end">
            <nav aria-label="Page navigation example">
               <ul class="pagination pagination-sm justify-content-end">
                  <li class="page-item disabled">
                     <a class="page-link">&laquo;</a>
                  </li>
                  <li class="page-item"><a class="page-link" href="#">1</a></li>
                  <li class="page-item"><a class="page-link" href="#">2</a></li>
                  <li class="page-item"><a class="page-link" href="#">3</a></li>
                  <li class="page-item">
                     <a class="page-link" href="#">&raquo;</a>
                  </li>
               </ul>
            </nav>
         </div>
      </div>
   </section>
   <section class="content-body my-2">
      <?php require_once '../views/admin/message.php'; ?>

      <table class="table table-bordered">
         <thead>
            <tr>
               <th class="text-center" style="width:30px;">
                  <input type="checkbox" id="checkboxAll" />
               </th>
               <th class="text-center" style="width:130px;">Hình ảnh</th>
               <th>Tên sản phẩm</th>
               <th>Tên danh mục</th>
               <th>Tên thương hiệu</th>
               <th class="text-center" style="width:30px;">ID</th>
            </tr>
         </thead>
         <tbody>
            <?php foreach ($products as $product) : ?>

               <tr class="datarow">
                  <td>
                     <input type="checkbox" id="checkId" />
                  </td>
                  <td>
                     <img class="img-fluid" src="../public/images/product/<?= $product->image; ?>" alt="<?= $product->image; ?>">
                  </td>
                  <td>
                     <div class="name">
                        <a href="index.php?opt=product&cat=edit&id=<?= $product->id; ?>">
                           <?= $product->name; ?>
                        </a>
                     </div>
                     <div class="function_style">
                        <a href="index.php?opt=product&cat=restore&id=<?= $product->id; ?>" class="btn btn-primary btn-sm">
                           <i class="fa fa-undo"></i>
                        </a>
                        <a href="index.php?opt=product&cat=destroy&id=<?= $product->id; ?>" class="btn btn-danger btn-sm">
                           <i class="fa fa-trash"></i>
                        </a>
                     </div>
                  </td>
                  <td><?= $product->category_id; ?></td>
                  <td><?= $product->brand_id; ?></td>
                  <td class="text-center"><?= $product->id; ?></td>
               </tr>
            <?php endforeach; ?>
         </tbody>
      </table>

   </section>
</div>
<!--END CONTENT-->
<?php require_once "../views/admin/header.php"; ?>