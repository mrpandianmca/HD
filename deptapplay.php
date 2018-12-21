    <!-- Dept-New-Item-Modal-->
   <div class="modal fade bd-example-modal-lg" id="Dept-Apply-Modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Add New Product</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <!-- <div class="modal-body">Product Purchase Entry Form</div> -->

<form method="post" action="" enctype="multipart/form-data">

<div class="modal-body">

  <div class="form-row">
    <div class="form-group col-md-4">
  <label>PO.App.No</label>
  <?php
require_once 'config.php';
$v_max_no=0;
$sql = mysqli_query($link, "SELECT MAX(ITEM_NO) MAX_NO FROM rcc_pur_dept_apply");
$row = mysqli_num_rows($sql);
while ($row = mysqli_fetch_array($sql)){
$v_max_no=$row['MAX_NO']+1;
}
echo "<input type='text' class='form-control' id='itemno' name='itemno' size='15' placeholder='Enter Item No' autocomplete='off' readonly>";
?>
  </div>


<div class="form-group col-md-4">
    <label>Make</label>
    <input type="text" class="form-control"  id="itemmake" name="itemmake" size="15" placeholder="Enter Item Name" readonly>
</div>

<div class="form-group col-md-4">
    <label>Item Name</label>
    <input type="text" class="form-control"  id="itemname" name="itemname" size="15" placeholder="Enter Item Name" readonly>
    </div>
  
</div>

<div class="form-row">

<div class="form-group col-md-8">
    <label>Item Description</label>
    <textarea class="form-control" rows="7" id="itemdesc" name="itemdesc" readonly></textarea> 
  </div>

 
<div class="form-group col-md-4">
    <label>PO Value</label>
    <input type="text" class="form-control"   id="povalue"  name="povalue" size="15" placeholder="Enter Purchase Order Value" autocomplete="off" readonly>

    <label>Warranty Year</label>
    <input type="text" class="form-control" id="warrantydate" name="warrantydate" size="15" placeholder="Enter Warranty Expire Date" autocomplete="off" readonly>
  
    <label>AMC</label>
    <input type="text" class="form-control"  id="amc" name="amc" size="15" placeholder="Enter Warranty Expire Date" autocomplete="off" readonly>
  </div> 

  </div> 

    <div class="form-row">
<div class="form-group col-md-4">
    <label>Quantity of Item</label>
    <input type="text" class="form-control"  id="quantityitem" name="quantityitem" size="15" placeholder="Enter Quantity of Item" autocomplete="off" required>
  </div>

<!-- <div class="form-group col-md-4">
    <label>Vendor</label>
    <select name="vendor" class="form-control" style="text-transform: uppercase;">
    <option value="">Select</option> -->
<!-- ?php
require_once 'config.php';
$sql = mysqli_query($link, "SELECT vendor,vendor2,vendor3 FROM `rcc_purchase` where item_no='12'");
$row = mysqli_num_rows($sql);
while ($row = mysqli_fetch_array($sql)){
echo "<option value='". $row['vendor'] ."'>" .$row['vendor'] ."</option>" ;
echo "<option value='". $row['vendor2'] ."'>" .$row['vendor2'] ."</option>" ;
echo "<option value='". $row['vendor3'] ."'>" .$row['vendor3'] ."</option>" ;
}

?> -->
<!-- </select>
</div> -->

  <div class="form-group col-md-4">
    <label>Vendor</label>
    <select id="vendor" name="vendor" class="form-control" style="text-transform: uppercase;">>
    </select>
  </div>

<div class="form-group col-md-4">
    <label>Fund Head of Account</label>
    <input type="text" class="form-control"  id="fund" name="fund" size="15" placeholder="" autocomplete="off" required>
  </div>
  </div>

<div class="form-row">
<div class="form-group col-md-4">
    <label>Purchase By</label>
    <input type="text" class="form-control"  id="purby" name="purby" size="15" placeholder="" autocomplete="off" required>
  </div>

<div class="form-group col-md-4">
    <label>Purchase For</label>
    <input type="text" class="form-control"  id="purfor" name="purfor" size="15" placeholder="" autocomplete="off" required>
  </div>

<div class="form-group col-md-4">
    <label>PO Document Upload</label>
    <input type="file" class="form-control"  name="file" required>
  </div>
  </div> 

</div>
          <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
            <button type="submit" class="btn btn-primary" name="reg_p">Save</button>
            </form> 
          </div>
        </div>
      </div>
    </div>
    <!-- End-Dept-New-Item-Modal-->