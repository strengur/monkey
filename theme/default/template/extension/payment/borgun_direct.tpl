<?php

  $total = 0;

?>

<form action="<?php echo $action; ?>" method="post">

<?php $i = 1; ?>

  <?php foreach ($products as $product) { 

  $price = $product['price'];

  $quantity = $product['quantity'];

  ?>

  <input type="hidden" name="itemdescription_<?php echo $i; ?>" value="<?php echo $product['name']; ?>" />

  <input type="hidden" name="itemunitamount_<?php echo $i; ?>" value="<?php echo $product['price']; ?>" />
  
  <input type="hidden" name="itemamount_<?php echo $i; ?>" value="<?php echo $product['price']*$product['quantity']; ?>" />

  <input type="hidden" name="itemcount_<?php echo $i; ?>" value="<?php echo $product['quantity']; ?>" />

  <?php $i++; ?>

  <?php 

    if($price > 0){

      $total += $price * $quantity;

    }

  } 

  ?>

  <input type="hidden" name="merchantid" value="<?php echo $merchantid; ?>" />

  <input type="hidden" name="amount" value="<?php echo $total; ?>" />

  <input type="hidden" name="customField" value="<?php echo $total; ?>" />

  <input type="hidden" name="pagetype" value="0" />

  <input type="hidden" name="skipreceiptpage" value="1" />

  <input type="hidden" name="paymentgatewayid" value="<?php echo $paymentgatewayid; ?>" />

  <input type="hidden" name="checkhash" value="<?php echo $checkhash; ?>" />

  <input type="hidden" name="orderid" value="<?php echo $orderid; ?>" />

  <input type="hidden" name="currency" value="<?php echo $currency_code; ?>" />

  <input type="hidden" name="language" value="<?php echo $lc; ?>" />

  <input type="hidden" name="buyername" value="<?php echo $first_name.' '.$last_name; ?>" />

  <input type="hidden" name="buyeremail" value="<?php echo $email; ?>" />

  <input type="hidden" name="merchantemail" value="<?php echo $business; ?>" />

  <input type="hidden" name="returnurlsuccess" value="<?php echo $return; ?>" />

  <input type="hidden" name="returnurlerror" value="<?php echo $error_url; ?>" />

  <input type="hidden" name="returnurlcancel" value="<?php echo $cancel_return; ?>" />

  <input type="hidden" name="returnurlsuccessserver" value="<?php echo $returnurlsuccessserver; ?>" />

  <div class="buttons">

    <div class="pull-right">

      <input type="submit" value="<?php echo $button_confirm; ?>" id="button-confirm" class="btn btn-primary" />

    </div>

  </div>

</form>