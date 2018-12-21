
<?php 
include('config.php'); 
session_start();
$username = $_SESSION['username'];
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
    
    <!--datatable-editor-->

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
          <a class="nav-link" href="dashboard.php">
            <i class="fa fa-fw fa-dashboard"></i>
            <span class="nav-link-text">Dashboard</span>
          </a>
        </li>
        <!-- <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Charts">
          <a class="nav-link" href="charts.html">
            <i class="fa fa-check-square"></i>
            <span class="nav-link-text">Create Products</span>
          </a>
        </li> -->
        
          <!-- <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Charts">
          <a class="nav-link" href="register.php">
            <i class="fa fas fa-user"></i>
            <span class="nav-link-text">Register Users</span>
          </a>
        </li> -->
          
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
          <!--ss-->
            <!-- <a class="nav-link dropdown-toggle mr-lg-2" id="messagesDropdown" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fa fa-fw fa-envelope"></i>
            <span class="d-lg-none">Messages
              <span class="badge badge-pill badge-primary">12 New</span>
            </span>
            <span class="indicator text-primary d-none d-lg-block">
              <i class="fa fa-fw fa-circle"></i>
            </span>
          </a>  
           <div class="dropdown-menu" aria-labelledby="messagesDropdown">
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
          </a> 

           <div class="dropdown-menu" aria-labelledby="alertsDropdown">
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
          </div> -->
          <!--ss-->
        </li> 
        <li class="nav-item">
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
        </li>
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
        <li class="breadcrumb-item active">Product Page</li>
      </ol>
      <!-- Example DataTables Card--> 
      <?php
      require_once 'config.php';
      $rec_limit=5;
      
      $sql = "SELECT count(*) from RCC_PURCHASE";

      $retval = mysqli_query( $link, $sql);
      $row = mysqli_fetch_array($retval, MYSQLI_NUM );
      $_SESSION['row']=$row[0];
      $rec_count = $row[0];

      if( isset($_GET{'page'}) ) {
      $page = $_GET{'page'};
		  $page = (float)$page + 1;
      $offset = $rec_limit * $page ;
      $left_rec = $rec_count - ($page * $rec_limit);
      $sql = "SELECT * from RCC_PURCHASE ORDER BY ITEM_NO ASC LIMIT $offset, $rec_limit";
    }
    else
    {
      $page = 0;
      $offset = 0;
      $sql = "SELECT * from RCC_PURCHASE ORDER BY ITEM_NO ASC LIMIT $offset, $rec_limit";
    }
   echo "<input type='text' name='fname' id='fname'>";
   echo "<button class='btn btn-primary float-right' onclick=document.getElementById('editmodal').style.display='block'>Item</button>" ;
    echo "<div class='card mb-3'>";
    echo "<div class='card-header'>";
    echo "<i class='fa fa-table'></i> Purchase Item <a data-toggle='modal' data-target='#Add-New-Item-Modal'><button class='btn btn-primary float-right'>Add New Item</button></a></div>";
    echo "<div class='card-body'>";
    echo "<div class='table-responsive'>";
    //echo "<table class='table table-bordered ' id='sqltable' width='100%' cellspacing='0'>";
    echo "<table id='table' class='table table-bordered table-striped'>";
    echo "<thead>";
    echo "<tr>";
    echo "<th>Item No</th>";
    echo "<th>PO Date</th>";
    echo "<th>Name</th>";
    echo "<th>Description</th>";
    echo "<th>Campus</th>";
    echo "<th>Price</th>";
    echo "<th>No of Item</th>";
    echo "</tr>";
    echo "</thead>";

    //$sql = "SELECT * from RCC_PURCHASE ORDER BY ITEM_NO ASC LIMIT $offset, $rec_limit";
    if($result = mysqli_query($link, $sql)){
      if(mysqli_num_rows($result) > 0){
    while ($row = mysqli_fetch_array($result)) { 
      echo "<tbody id='myTable'>";
      echo "<tr>";
      echo "<th>";
                              echo $row['ITEM_NO'];
                              echo "</th>";
                              echo "<td>";
                              echo $row['PUR_DATE'];
                              echo "</td>";
                              echo "<td>";
                              echo $row['ITEM_NAME'];
                              echo "</td>";
                              echo "<td>";
                              echo $row['ITME_DESCRIPTION'];
                              echo "</td>";
                              echo "<td>";
                              echo $row['CAMPUS'];
                              echo "</td>";
                              echo "<td>";
                              echo $row['PRICE_PER_ITEM'];
                              echo "</td>";
                              echo "<td>";
                              echo $row['NO_OF_ITEM'];
                              echo "</tr>";
                              echo "</tbody>";
                        
}
      }
}
echo "</table>";
echo "</div>";
echo "</div>";
      
        $pag1=$offset+1;
        $pag2=$offset+5;
        $pag3=$rec_count;
        if ($pag3<=$pag2){
          $pag2=$pag3;
        }
        ?>
          <div class="form-row right">
         <div class="card-footer small text-muted">Showing <?php echo $pag1." to ".$pag2." of ".$pag3." "  ?></div> 
     
       
         <?php
        if( $page > 0 && $left_rec > $rec_limit) {
            $last = $page - 2;
            
            echo "<h4><li class='form-control'><a href =?page=$last><< Previous</a></li></h4> ";
            echo "<h4><li class='form-control'><a href =?page=$page>Next >></a></li></h4>";
         } else if( $page > 0 && $left_rec <= $rec_limit ) {
		        $last = $page - 2;
            echo "<h4><li class='form-control'><a href =?page=$last><< Previous</a></li></h4>  ";
	      } else if( $page == 0 ) {
            echo "<h4><li class='form-control'><a href =?page=$page>Next >></a></li></h4>";
         } else if( $left_rec < $rec_limit ) {
            $last = $page - 2;
            echo "<h4><li class='form-control'><a href =?page=$last><< Previous</a></li></h4>";
         }
        ?>
 
   
      </div> 
      </div> 
    </div>


    <!-- /.container-fluid-->
    <!-- /.content-wrapper-->
    <footer class="sticky-footer">
      <div class="container">
        <div class="text-center">
          <small>Copyright © RCC 2018</small>
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
              <span aria-hidden="true">×</span>
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


   <!-- Add-New-Item-Modal-->
   <div class="modal fade bd-example-modal-lg" id="Add-New-Item-Modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Add New Item</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <div class="modal-body">Product Purchase Entry Form</div>

<form method="post" action="productins.php">

<div class="modal-body">

  <div class="form-row">
    <div class="form-group col-md-6">
  <label>Item No</label>
  <input type="text" class="form-control" name="itemno" size="15"placeholder="Enter Item No"  required>
  </div>

  <div class="form-group col-md-6">
  <label>Item Name</label>
  <input type="text" class="form-control" name="itemname" size="15" placeholder="Enter Item Name" required>
</div>
</div>

<div class="form-row">
<div class="form-group col-md-6">
    <label>Item Description</label>
    <input type="text"  class="form-control" name="itemdesc" size="15" placeholder="Enter Item Description" required>
  </div>

  <div class="form-group col-md-6">
    <label>PO Date</label>
    <input type="text"  class="form-control" name="podate" size="15" placeholder="Enter Purchase Order Date" required>
  </div>
  </div>
  
<div class="form-row">
<div class="form-group col-md-6">
    <label>Campus</label>
    <input type="text" class="form-control"  name="campus" size="15" placeholder="Enter Campus Details" required>
  </div>

<div class="form-group col-md-6">
    <label>Department</label>
    <input type="text" class="form-control"  name="dept" size="15" placeholder="Enter Department Details" required>
  </div>
</div>

<div class="form-row">
<div class="form-group col-md-6">
    <label>PO Value</label>
    <input type="text" class="form-control"  name="povalue" size="15" placeholder="Enter Purchase Order Value" required>
  </div>

<div class="form-group col-md-6">
    <label>Quantity of Item</label>
    <input type="text" class="form-control"  name="quantityitem" size="15" placeholder="Enter Quantity of Item" required>
  </div>
</div>


<div class="form-row">
<div class="form-group col-md-6">
    <label>Warranty Expiry Date</label>
    <input type="text" class="form-control"  name="warrantydate" size="15" placeholder="Enter Warranty Expire Date" required>
  </div>

<div class="form-group col-md-6">
    <label>Vendor</label>
    <input type="text" class="form-control"  name="vendor" size="15" placeholder="Enter Vendor Details" required>
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
    <!-- End-Add-New-Item-Modal-->


    <!-- Edit-modal-->

   <div class="modal fade bd-example-modal-lg" id="editmodal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Edit Item</h5>
            <button  class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <div class="modal-body">Product Purchase Entry Form</div>

<form method="post" action="productins.php">

<div class="modal-body">

  <div class="form-row">
    <div class="form-group col-md-6">
  <label>Item No</label>
  <input type="text" class="form-control" name="itemno" size="15"placeholder="Enter Item No"  required>
  </div>

  <div class="form-group col-md-6">
  <label>Item Name</label>
  <input type="text" class="form-control" name="itemname" size="15" placeholder="Enter Item Name" required>
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
<!--End-edit-modal-->

<script>
var table = document.getElementById('table');
for(var i = 1; i < table.rows.length; i++)
    {
    table.rows[i].onclick = function()
    {
      document.getElementById("fname").value = this.cells[0].innerHTML;
			document.getElementById("itemno").value = this.cells[0].innerHTML;  
			document.getElementById("itemname").value = this.cells[1].innerHTML;  
			// document.getElementById("desi").value = this.cells[2].innerHTML;  
			// document.getElementById("sta").value = this.cells[9].innerHTML;  
        document.getElementById('editmodal').style.display='block';
        
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
