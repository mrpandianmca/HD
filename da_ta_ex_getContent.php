<?php
if(!empty($_GET['id'])){
    //DB details
    // $dbHost = 'localhost';
    // $dbUsername = 'root';
    // $dbPassword = '*****';
    // $dbName = 'codexworld';
    
    include('config.php'); 
    $query ="SELECT * FROM RCC_PURCHASE WHERE ITEM_NO={$_GET['id']}";  
    $result = mysqli_query($link, $query); 
    
    while($row = mysqli_fetch_array($result)){  
        echo '  
<div class="form-row">
  <div class="form-group col-md-6">
<label>Item No</label>
<input type="text" class="form-control" name="eitemno" value='.$row["ITEM_NO"].' id="eitemno" size="15" placeholder="Enter Item No"  required>
</div>

<div class="form-group col-md-6">
<label>Item Name</label>
<input type="text" class="form-control" name="eitemname"  value='.$row["ITEM_NAME"].' id="eitemname" size="15" placeholder="Enter Item Name" required>
</div>
</div>

<div class="form-row">
<div class="form-group col-md-12">
  <label>Item Description</label>
  <input type="text"  class="form-control" name="eitemdesc"  value='.$row["ITME_DESCRIPTION"].' id="eitemdesc" size="160" placeholder="Enter Item Description" required>
</div>
</div>


<div class="form-row">
<div class="form-group col-md-6">
  <label>PO Value</label>
  <input type="text" class="form-control"  name="epovalue"  value='.$row["PRICE_PER_ITEM"].' id="epovalue" size="15" placeholder="Enter Purchase Order Value" required>
</div>

<div class="form-group col-md-6">
  <label>Quantity of Item</label>
  <input type="text" class="form-control"  name="equantityitem"  value='.$row["NO_OF_ITEM"].' id="equantityitem" size="15" placeholder="Enter Quantity of Item" required>
</div>
</div>

<div class="form-row">
<div class="form-group col-md-6">
  <label>Warranty Expiry Date</label>

  <input type="text"  class="form-control" name="ewarrantydate"  value='.$row["WARRANTY_EXPIRE_DATE"].' id="ewarrantydate" size="15" placeholder="Enter Purchase Order Date" required>
  <span class="add-on"><i class="icon-remove"></i></span>
  <span class="add-on"><i class="icon-th"></i></span>

</div>

<div class="form-group col-md-6">
    <label>Vendor</label>
    <input type="text" class="form-control" name="xvendor"  value='.$row["VENDOR"].'  id="xvendor" size="15" placeholder="Enter Vendor Details" required>
    </div>
    </div>

    <button type="button" class="btn btn-default update" data-id="'.$row["ITEM_NAME"].'" data-column="last_name">Update</button>
    
              ';  
            }  
}else{
    echo 'Content not found....';
}
?>