<?php 
use App\Models\Product;
use App\Models\Order;
use App\Cart;
use App\Models\User;
use App\Models\Orderdetail;

//them
if(isset($_REQUEST['addcat']))
{
    $id=$_REQUEST['addcat'];
    $product = Product::find($id);
    // print_r($product);
    $cart_item = array(
        'id' => $product->id,
        'qty' => 1,
    );
    
    if ($product->pricesale < $product->price) {
        $cart_item['price'] = $product->pricesale;
        $cart_item['amount'] = $product->pricesale * $cart_item['qty'];
    } else {
  
        $cart_item['price'] = $product->price;
        $cart_item['amount'] = $product->price * $cart_item['qty'];
    }
    //kiem tra
    // unset($_SESSION['contentcart'])
    if(isset($_SESSION['contentcart'])){
        $carts=$_SESSION['contentcart'];
        if((Cart::cart_exists($carts,$id)==true)){
            $carts= Cart::cart_update($carts,$id,1);
        }else{
            $carts[]=$cart_item;
        }
        $_SESSION['contentcart']=  $carts;
        // var_dump(cart_exists($carts,$id)) ;//true
    }else
    {
        $carts[]=$cart_item;//2 chiều
        $_SESSION['contentcart']=  $carts;
    }
    header("location:index.php?opt=cart");
}

if(isset($_REQUEST['delcart']))
{
   $id=$_REQUEST['delcart'];
   if(isset($_SESSION['contentcart']))
   {
    $carts=$_SESSION['contentcart'];
     $carts = Cart::cart_delete($carts,$id);
     $_SESSION['contentcart']= $carts;
   }
header("location:index.php?opt=cart");
}
if(isset($_POST['updateCart']))
{
    $arr_qty=$_POST['qty'];
    foreach($arr_qty as $id=>$number)
{
    $carts=$_SESSION['contentcart'];
    $carts= Cart::cart_update($carts,$id,$number,"update");
    $_SESSION['contentcart']= $carts;
}
header("location:index.php?opt=cart");
}
if (isset($_REQUEST['checkoutCart']))
{
    $date =getdate();
    $order = new order();
    $order->code = $date[0];
    $order->deliveryaddress =(isset($_POST['deliveryaddress']) ? $_POST['deliveryaddress']: $user['address']);
    $order->deliveryname=(isset($_POST['deliveryname']) ? $_POST['deliveryname']: $user['name']);
    $order->deliveryphone=(isset($_POST['deliveryphone']) ? $_POST['deliveryphone']: $user['phone']);
    $order->deliveryemail = (isset($_POST['deliveryemail']) ? $_POST['deliveryemail']: $user['email']);
    $order->created_at= date('Y-m-d H:i:s');
    $order->status = 2;
    if($order->save()) {
        $carts = $_SESSION['contentcart'];
        foreach ($carts as $cart) {
            $orderdetail = new Orderdetail();
            $orderdetail->order_id=$order->id;
            $orderdetail->product_id = $cart['id'];
            $orderdetail->price= $cart['price'];
            $orderdetail->qty=$cart['qty'];
            $orderdetail->amount= $cart ['amount'];
            $orderdetail->save();
        }
}
    unset($_SESSION['contentcart']);
    $_SESSION['message_alert']="successOder";
    header ("location:index.php?opt=cart");
}

if(isset($_REQUEST['checkout']))
{
require_once('views/sites/cart-checkout.php');
}
else{
    require_once('views/sites/cart-content.php');
}

