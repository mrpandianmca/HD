<?php 
include('config.php'); 
session_start();
$username = $_SESSION['username'];

$sql_c = mysqli_query($link, "SELECT SESS_ID FROM USERS WHERE USERID='$username'");
$row_c = mysqli_num_rows($sql_c);
$row_c = mysqli_fetch_array($sql_c);
if($row_c['SESS_ID'] !== "RCC"){
  session_destroy();
  header("Location: login.php");
}

//$host = $_SESSION['host'];
if(!isset($username)){
  session_destroy();
  header("Location: login.php");
}

?>
 
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>RCC, Anna University, Chennai</title>
<!-- Bootstrap core CSS-->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Page level plugin CSS-->
  <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">

   <!-- <link rel="stylesheet" href="//cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css"/> -->
    <script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
    <script src="//cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>

    <script src="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.2/css/buttons.dataTables.min.css"></script>
</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top">
  <!-- Navigation-->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
    <a class="navbar-brand" href="dashboard.php">RCC, Anna University, Chennai</a>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Dashboard">
          <a class="nav-link" href="poview.php">
            <i class="fa fa-fw fa-dashboard"></i>
            <span class="nav-link-text">PO Item</span>
          </a>
        </li>
         <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Product">
          <a class="nav-link" href="Product.php">
            <i class="fa fa-check-square"></i>
            <span class="nav-link-text">Add PO Item</span>
          </a>
        </li>
        
           <li class="nav-item" data-toggle="tooltip" data-placement="right" title="vendor">
          <a class="nav-link" href="vendor.php">
            <i class="fa fas fa-user"></i>
            <span class="nav-link-text">Add Vendor</span>
          </a>
        </li>

           <li class="nav-item" data-toggle="tooltip" data-placement="right" title="vendor">
          <a class="nav-link" href="page1.php">
            <i class="fa fas fa-user"></i>
            <span class="nav-link-text">Page-I</span>
          </a>
        </li>
            <!-- <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Vendor">
          <a class="nav-link" href="system_conf.php">
            <i class="fa fas fa-user"></i>
            <span class="nav-link-text">Add System Conf</span>
          </a>
        </li> -->
          <!-- <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Desktop">
          <a class="nav-link" href="desktop.php?ITEMCODE=Desktop">
            <i class="fa fas fa-user"></i>
            <span class="nav-link-text">Desktop</span>
          </a>
        </li> 

        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Desktop">
          <a class="nav-link" href="desktop.php?ITEMCODE=Server">
            <i class="fa fas fa-user"></i>
            <span class="nav-link-text">Server</span>
          </a>
        </li> 

        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Desktop">
          <a class="nav-link" href="desktop.php?ITEMCODE=Laptop">
            <i class="fa fas fa-user"></i>
            <span class="nav-link-text">Laptop</span>
          </a>
        </li> 

        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Desktop">
          <a class="nav-link" href="desktop.php?ITEMCODE=Workstation">
            <i class="fa fas fa-user"></i>
            <span class="nav-link-text">Workstation</span>
          </a>
        </li> 

        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Desktop">
          <a class="nav-link" href="desktop.php?ITEMCODE=Printer">
            <i class="fa fas fa-user"></i>
            <span class="nav-link-text">Printer</span>
          </a>
        </li>  -->
        <!--CAMPUS-->
        <!-- <a class="nav-link text-center" id="">
            <li class="breadcrumb-item active">____</li>
          </a> -->

                 <!--CAMPUS-->
                 <!-- <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Components">
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#newcollapseComponents" data-parent="#exampleAccordion">
            <i class="fa fa-fw fa-wrench"></i>
            <span class="nav-link-text">Search Data</span>
          </a>
          <ul class="sidenav-second-level collapse" id="newcollapseComponents"> -->

      <!-- ?php
      $sql = "SELECT DISTINCT ITEM_NAME from ITEM ORDER BY ITEM_NAME";
      if($result = mysqli_query($link, $sql)){
        if(mysqli_num_rows($result) > 0){
      while ($row = mysqli_fetch_array($result)) {?> -->
            <!-- <li><a href="desktop.php?itemcode=<?php echo $row['ITEM_NAME'] ?>"><?php echo $row['ITEM_NAME'] ?></a></li>
             -->
            
            <!-- ?php
            }
      }
    }
    ?> -->
     <!-- </ul>
 </li> -->
          <!--FROM CPC-->
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Components">
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseComponents" data-parent="#exampleAccordion">
            <i class="fa fa-fw fa-wrench"></i>
            <span class="nav-link-text">Search Data</span>
          </a>
          <ul class="sidenav-second-level collapse" id="collapseComponents">

      <?php
      $sql = "SELECT DISTINCT ITEM_NAME from rcc_pur_from_babu  ORDER BY ITEM_NAME";
      if($result = mysqli_query($link, $sql)){
        if(mysqli_num_rows($result) > 0){
      while ($row = mysqli_fetch_array($result)) {?>
            <li><a href="datafromcpc.php?itemcode=<?php echo $row['ITEM_NAME'] ?>"><?php echo $row['ITEM_NAME'] ?></a></li>
            <?php
            }
      }
    }
    ?>    

          </ul>
        </li> 


      </ul>
      <ul class="navbar-nav sidenav-toggler">
        <li class="nav-item">
          <a class="nav-link text-center" id="sidenavToggler">
            <i class="fa fa-fw fa-angle-left"></i>
          </a>
        </li>
      </ul>
      <ul class="navbar-nav ml-auto">
        <li class="nav-item dropdown">
           <!-- <a class="nav-link dropdown-toggle mr-lg-2" id="messagesDropdown" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fa fa-fw fa-envelope"></i>
            <span class="d-lg-none">Messages
              <span class="badge badge-pill badge-primary">12 New</span>
            </span>
            <span class="indicator text-primary d-none d-lg-block">
              <i class="fa fa-fw fa-circle"></i>
            </span>
          </a>  -->
          <!-- <div class="dropdown-menu" aria-labelledby="messagesDropdown">
            <h6 class="dropdown-header">New Messages:</h6>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <strong>David Miller</strong>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">Hey there! This new version of SB Admin is pretty awesome! These messages clip off when they reach the end of the box so they don't overflow over to the sides!</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <strong>Jane Smith</strong>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">I was wondering if you could meet for an appointment at 3:00 instead of 4:00. Thanks!</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <strong>John Doe</strong>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">I've sent the final files over to you for review. When you're able to sign off of them let me know and we can discuss distribution.</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item small" href="#">View all messages</a>
          </div>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle mr-lg-2" id="alertsDropdown" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fa fa-fw fa-bell"></i>
            <span class="d-lg-none">Alerts
              <span class="badge badge-pill badge-warning">6 New</span>
            </span>
            <span class="indicator text-warning d-none d-lg-block">
              <i class="fa fa-fw fa-circle"></i>
            </span>
          </a> -->

          <!-- <div class="dropdown-menu" aria-labelledby="alertsDropdown">
            <h6 class="dropdown-header">New Alerts:</h6>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <span class="text-success">
                <strong>
                  <i class="fa fa-long-arrow-up fa-fw"></i>Status Update</strong>
              </span>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">This is an automated server response message. All systems are online.</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <span class="text-danger">
                <strong>
                  <i class="fa fa-long-arrow-down fa-fw"></i>Status Update</strong>
              </span>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">This is an automated server response message. All systems are online.</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <span class="text-success">
                <strong>
                  <i class="fa fa-long-arrow-up fa-fw"></i>Status Update</strong>
              </span>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">This is an automated server response message. All systems are online.</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item small" href="#">View all alerts</a>
          </div>
        </li> -->
        <!-- <li class="nav-item">
          <form class="form-inline my-2 my-lg-0 mr-lg-2">
            <div class="input-group">
              <input class="form-control" type="text" placeholder="Search for...">
              <span class="input-group-append">
                <button class="btn btn-primary" type="button">
                  <i class="fa fa-search"></i>
                </button>
              </span>
            </div>
          </form>
        </li> -->
        <li class="nav-item">
          <a class="nav-link" data-toggle="modal" data-target="#exampleModal">
            <i class="fa fa-fw fa-sign-out"></i><?php echo $username ?> Logout</a>
        </li>
      </ul>
    </div>
  </nav>
  <div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="dashboard.php">Dashboard</a>
        </li>
        <li class="breadcrumb-item active">Add Vendor</li>
        


      </ol>


      <!-- <div class="row">
        <div class="col-12">
          <h1>Create Product </h1>
        </div> 
         
         <div class="col-md-8">
            
<form method="post" action="product.php">

  <div class="form-group">
    <label>Product Name</label>
    <input type="text" class="form-control" name="pname" required>
  </div>

  <div class="form-group">
    <label>Product Price</label>
    <input type="text" class="form-control"  name="pirce" required>
  </div>

 <div class="form-group">
    <label>Product Catgory</label>
    <input type="text" class="form-control" name="pcat" required>
  </div>

  <div class="form-group">
    <label>Product Details</label>
    <textarea class="form-control" name="pdetails" required></textarea>
  </div>

  <button type="submit" class="btn btn-primary" name="reg_p">Submit</button>
</form> 

         </div>
      </div> 
    </div>-->

    <!-- ?php
    $query = "SELECT * from RCC_PURCHASE";
    $result = oci_parse($connect, $query);
    oci_execute($result);

    while (oci_fetch($result)) {
        echo oci_result($result, 'PUR_DATE') . " | ";
        echo oci_result($result, 'ITEM_NAME') . " | ";
        echo oci_result($result, 'ITME_DESCRIPTION') . " | ";
        echo oci_result($result, 'PO_YEAR') . " | ";
        echo oci_result($result, 'PRICE_PER_ITEM') .  "<br>\n";
    }
? -->


<div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-table"></i> Vendor List
          <!-- <li class="nav-item"> class="nav-link" -->
          <a data-toggle="modal" data-target="#Add-Modal">
          <button class="btn btn-primary float-right">Add New Vendor</button></a>
        <!-- </li> -->
          </div>

        <div class="card-body">
          <div class="table-responsive">
            <table id="p1table"  class="table table-bordered" width="100%" cellspacing="0">
            <thead>
            <tr>
                  <th align="center">ID</th>
                  <th align="center">PAGE-I CONTENT</th>
                  <th align="center">Edit</th>
                  <th align="center">Delete</th>
            </tr>
            </thead>
        <tbody>
<?php
$sel_query="Select ID,PAGE_CONTENT from PAGE_1 ORDER BY id ASC;";
$result = mysqli_query($link,$sel_query);
while($row = mysqli_fetch_assoc($result)) { ?>
<tr>
<td align="center"><?php echo $row["ID"]; ?></td>
<td align="left"><?php echo $row["PAGE_CONTENT"]; ?></td>
<td align="center">
<a href data-toggle="modal" data-target="#Edit-Modal">Edit</a>
</td>
<td align="center">
<a href data-toggle="modal" data-target="#Delete-Modal">Delete</a>
</td> 
</tr>
<?php  } ?>
</tbody>
</table>
</div>
</div>

    </div> 
    </div>
    </div>
<!-- <script type="text/javascript">
    $(document).ready(function () {
        $('#vendortable').DataTable({
            "columns": [
                {"data": "VENDOR_NAME"},
                {"data": "VENDOR_ADDRESS"},
                {"data": "VENDOR_CONTACT_NAME"},
                {"data": "VENDOR_WEB"},
                {"data": "VENDOR_MAIL"},
                {"data": "VENDOR_PHONE"}
            ],
            "processing": true,
            "serverSide": true,
            "ajax": {
                url: 'vendortable.php',
                type: 'POST'
            }
        });
    });
</script> -->

    <!-- /.container-fluid-->
    <!-- /.content-wrapper-->
    <footer class="sticky-footer">
      <div class="container">
        <div class="text-center">
          <small>Copyright � RCC 2018</small>
        </div>
      </div>
    </footer>
    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fa fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">�</span>
            </button>
          </div>
          <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
          <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
            <a class="btn btn-primary" href="logout.php">Logout</a>
          </div>
        </div>
      </div>
    </div>
    </div>

    

   <!-- Edit-New-Item-Modal-->
   <div class="modal fade bd-example-modal-lg" id="Edit-Modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Vendor Form
            </h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">�</span>
            </button>
          </div>
<form method="post" action="page1upd.php" autocomplete="off"> 
<div class="modal-body">
  <div class="form-row">
    <div class="form-group col-md-12">
    <label>ID</label>
  <input type="text" class="form-control" name="p1id" id="p1id" size="50">
</div>
<div class="form-group col-md-12">
  <label>Page-I Content</label>
  <input type="text" class="form-control" name="vname" id="vname" size="50">
  </div>
</div>
          <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
            <button type="submit" class="btn btn-primary">Edit</button>
             </form> 
        </div>
      </div>
    </div>
    </div>
    </div>
<!-- End-Edit-New-Item-Modal-->


<!-- Delete Modal-->
<div class="modal fade bd-example-modal-lg" id="Delete-Modal" tabindex="-1" role="dialog" aria-labelledby="DeleteModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="DeleteModalLabel">Ready to Leave?</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">�</span>
            </button>
          </div>
          <form method="post" action="page1del.php" autocomplete="off">
<div class="modal-body">
  <div class="form-row">
    <div class="form-group col-md-12">
    <label>ID</label>
  <input type="text" class="form-control" name="d1id" id="d1id" size="50">
</div>
<div class="form-group col-md-12">
  <label>Page-I Content</label>
  <input type="text" class="form-control" name="dname" id="dname" size="50">
  </div>
</div>
          <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
            <button type="submit" class="btn btn-primary">Delete</button>
            </form> 
      </div>
    </div>
  </div>
  </div>
</div>


<!-- Add Modal-->
<div class="modal fade bd-example-modal-lg" id="Add-Modal" tabindex="-1" role="dialog" aria-labelledby="AddModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="AddModalLabel">Ready to Leave?</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">�</span>
            </button>
          </div>
          <form method="post" action="page1add.php" autocomplete="off">
<div class="modal-body">
  <div class="form-row">
    <div class="form-group col-md-12">
    <label>ID</label>
  <input type="text" class="form-control" name="a1id" id="a1id" size="50">
</div>
<div class="form-group col-md-12">
  <label>Page-I Content</label>
  <input type="text" class="form-control" name="aname" id="aname" size="50">
  </div>
</div>
          <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
            <button type="submit" class="btn btn-primary">Add</button>
            </form> 
      </div>
    </div>
  </div>
  </div>
</div>


<script>
var table = document.getElementById('p1table');
for(var i = 1; i < table.rows.length; i++)
                {
                    table.rows[i].onclick = function()
                    {
      document.getElementById("p1id").value = this.cells[0].innerHTML;  
      document.getElementById("vname").value = this.cells[1].innerHTML;  

      document.getElementById("d1id").value = this.cells[0].innerHTML;  
      document.getElementById("dname").value = this.cells[1].innerHTML;  
      // document.getElementById('#Add-New-Item-Modal').style.display='block';

                    };
                }
</script>


   <!-- Bootstrap core JavaScript-->
   <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
    <!-- Page level plugin JavaScript-->
    <script src="vendor/chart.js/Chart.min.js"></script>
    <script src="vendor/datatables/jquery.dataTables.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.js"></script>
    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin.min.js"></script>
    <!-- Custom scripts for this page-->
    <script src="js/sb-admin-datatables.min.js"></script>
    <script src="js/sb-admin-charts.min.js"></script>
  </div>
</body>

</html>

 <!-- <script>  
 $(document).ready(function(){  
      $('#table').DataTable();  
 });  
 </script>  -->