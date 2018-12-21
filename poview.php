<?php 
include('config.php'); 
session_start();
$username = $_SESSION['username'];

$sql_c = mysqli_query($link, "SELECT SESS_ID FROM USERS WHERE USERID='$username'");
$row_c = mysqli_num_rows($sql_c);
$row_c = mysqli_fetch_array($sql_c);
if($row_c['SESS_ID'] !== $_SESSION['sess_id']){
  session_destroy();
  header("Location: login.php");
}

if(!isset($username)){
  session_destroy();
  header("Location: login.php");
}
// if($host !== 'pur'){
//   session_destroy();
//   header("Location: login.php");
// }
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

 
           <link href="datepicker/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
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

      <?php
        
        if(($_SESSION['sess_id'] == "RCC") or ($_SESSION['sess_id'] == "USER")) {
          echo "<li class='nav-item' data-toggle='tooltip' data-placement='right' title='Dashboard'>";
          echo "<a class='nav-link' href='poview.php'>";
          echo "<i class='fa fa-fw fa-dashboard'></i>";
          echo "<span class='nav-link-text'>PO Item</span>";
          echo "</a>";
          echo "</li>";
      }
      ?>

        <?php
        
        if(($_SESSION['sess_id'] == "RCC")) {
        echo "<li class='nav-item' data-toggle='tooltip' data-placement='right' title='Product'>";
        echo "<a class='nav-link' href='Product.php'>";
        echo "<i class='fa fa-check-square'></i>";
        echo "<span class='nav-link-text'> Add PO Item</span>";
        echo "</a>";
        echo "</li>";
        
    
        echo "<li class='nav-item' data-toggle='tooltip' data-placement='right' title='Charts'>";
        echo "<a class='nav-link' href='vendor.php'>";
        echo "<i class='fa fas fa-user'></i>";
        echo "<span class='nav-link-text'> Add Vendor</span>";
        echo "</a>";
        echo "</li> ";

        // echo "<li class='nav-item' data-toggle='tooltip' data-placement='right' title='Charts'>";
        // echo "<a class='nav-link' href='system_conf.php'>";
        // echo "<i class='fa fas fa-user'></i>";
        // echo "<span class='nav-link-text'> Add System Conf</span>";
        // echo "</a>";
        // echo "</li> ";
      }
      ?>
      <!--CEG-->
           <!-- <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Components">
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseceg" data-parent="#exampleAccordion">
            <i class="fa fa-fw fa-wrench"></i>
            <span class="nav-link-text">CEG</span>
          </a>
          <ul class="sidenav-second-level collapse" id="collapseceg"> -->
          <!-- ?php
          
          $sql = "SELECT DISTINCT DEPARTMENT from RCC_PURCHASE WHERE CAMPUS='CEG'";
          if($result = mysqli_query($link, $sql)){
          if(mysqli_num_rows($result) > 0){
          while ($row = mysqli_fetch_array($result)) { ? -->
            <!-- <li>
              <a href="">-->
              <!--?php echo $row['DEPARTMENT'] ?-->
              <!--</a>
            </li> -->
            <!-- ?php
            }
                  }
            }
            ? -->
          <!-- </ul>
        </li>  -->
      
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
 </li>  -->
     
     <!--FROM CPC-->
     <?php
        
        if(($_SESSION['sess_id'] == "RCC") or ($_SESSION['sess_id'] == "RCCADMIN")) {

     echo "<li class='nav-item' data-toggle='tooltip' data-placement='right' title='Components'>";
     echo "<a class='nav-link nav-link-collapse collapsed' data-toggle='collapse' href='#oldcollapseComponents' data-parent='#exampleAccordion'>";
     echo "<i class='fa fa-fw fa-wrench'></i>";
     echo "<span class='nav-link-text'> Search Data</span>";
     echo "</a>";
     echo "<ul class='sidenav-second-level collapse' id='oldcollapseComponents'>";
     //sidenav-second-level collapse
   
      $sql = "SELECT DISTINCT ITEM_NAME from rcc_pur_from_babu  ORDER BY ITEM_NAME";
      if($result = mysqli_query($link, $sql)){
        if(mysqli_num_rows($result) > 0){
      while ($row = mysqli_fetch_array($result)) {
            echo "<li><a href=datafromcpc.php?itemcode=".$row['ITEM_NAME'].">". $row['ITEM_NAME']." </a></li>";
            
           }
           }
            }
            echo "</ul>";
          echo "</li> ";
          }
          ?>   
    
        <!-- <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Desktop">
          <a class="nav-link" href="desktop.php?ITEMCODE=Desktop">
            <i class="fa fas fa-user"></i>
            <span class="nav-link-text">Desktop</span>
          </a>
        </li>  -->

        <!-- <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Desktop">
          <a class="nav-link" href="desktop.php?ITEMCODE=Server">
            <i class="fa fas fa-user"></i>
            <span class="nav-link-text">Server</span>
          </a>
        </li>  -->

        <!-- <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Desktop">
          <a class="nav-link" href="desktop.php?ITEMCODE=Laptop">
            <i class="fa fas fa-user"></i>
            <span class="nav-link-text">Laptop</span>
          </a>
        </li>  -->

        <!-- <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Desktop">
          <a class="nav-link" href="desktop.php?ITEMCODE=Workstation">
            <i class="fa fas fa-user"></i>
            <span class="nav-link-text">Workstation</span>
          </a>
        </li>  -->

        <!-- <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Desktop">
          <a class="nav-link" href="desktop.php?ITEMCODE=Printer">
            <i class="fa fas fa-user"></i>
            <span class="nav-link-text">Printer</span>
          </a>
        </li>  -->


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
          </a> -->
<!--           
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
          </div>-->
        </li> 
    
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
          <a href="#">Dashboard</a>
        </li>
        <li class="breadcrumb-item active">PO Item</li>
      </ol>


  <!-- Icon Cards-->
  <!-- <div class="row"> -->

      <!-- <div class="col-xl-3 col-sm-6 mb-3">
          <div class="card text-white bg-success o-hidden h-100">
            <div class="card-body">
              <div class="card-body-icon">
               
              </div>
              <div class="mr-5">Purchase Product Report</div>
            </div>
            <a class="card-footer text-white clearfix small z-1" href="javascript:openInNewTab('')">
              <span class="float-left">View Report</span>
              <span class="float-right">
                <i class="fa fa-angle-right"></i>
              </span>
            </a>
          </div>
        </div> -->
      

        <!-- <div class="col-xl-3 col-sm-6 mb-3">
          <div class="card text-white bg-danger o-hidden h-100">
            <div class="card-body">
              <div class="card-body-icon">
             
              </div>
              <div class="mr-5">Report 2</div>
            </div>
            <a class="card-footer text-white clearfix small z-1" href="#">
              <span class="float-left">View Report</span>
              <span class="float-right">
                <i class="fa fa-angle-right"></i>
              </span>
            </a>
          </div>
        </div> -->
     
    
      
          <!-- <div class="col-xl-3 col-sm-6 mb-3">
          <div class="card text-white bg-primary o-hidden h-100">
            <div class="card-body">
              <div class="card-body-icon">
                 <i class="fa fa-fw fa-list"></i> 
              </div>
              <div class="mr-5">Report 3</div>
            </div>
            <a class="card-footer text-white clearfix small z-1" href="#">
              <span class="float-left">View Report</span>
              <span class="float-right">
                <i class="fa fa-angle-right"></i>
              </span>
            </a>
          </div>
        </div> -->
    
      

          <!-- <div class="col-xl-3 col-sm-6 mb-3">
          <div class="card text-white bg-warning o-hidden h-100">
            <div class="card-body">
              <div class="card-body-icon">
               <i class="fa fa-fw fa-list"></i> 
              </div>
              <div class="mr-5">Report 4</div>
            </div>
            <a class="card-footer text-white clearfix small z-1" href="#">
              <span class="float-left">View Report</span>
              <span class="float-right">
                <i class="fa fa-angle-right"></i>
              </span>
            </a>
          </div>
        </div>
   -->
      <!-- </div> -->


           <!-- Example DataTables Card--> 
           <!-- ?php
      require_once 'config.php';
      $rec_limit=10;
      
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
      $sql = "SELECT FILE_NAME,ITEM_NO,AMC,MAKE,VENDOR2,VENDOR3,ITEM_NAME,ITME_DESCRIPTION,DATE_FORMAT(PUR_DATE, '%d-%m-%Y') PUR_DATE,CAMPUS,DEPARTMENT,PRICE_PER_ITEM,NO_OF_ITEM, WARRANTY_EXPIRE_DATE,VENDOR from RCC_PURCHASE ORDER BY ITEM_NO ASC LIMIT $offset, $rec_limit";
    }
    else
    {
      $page = 0;
      $offset = 0;
      $sql = "SELECT FILE_NAME,ITEM_NO,AMC,MAKE,VENDOR2,VENDOR3,ITEM_NAME,ITME_DESCRIPTION,DATE_FORMAT(PUR_DATE, '%d-%m-%Y') PUR_DATE,CAMPUS,DEPARTMENT,PRICE_PER_ITEM,NO_OF_ITEM, WARRANTY_EXPIRE_DATE,VENDOR from RCC_PURCHASE ORDER BY ITEM_NO ASC LIMIT $offset, $rec_limit";
    }

    if( isset($_GET{'CAMPUS'} ) ) {
      $vcampus = $_GET{'CAMPUS'};
      if( isset($_GET{'DEPARTMENT'} ) ) {
        $vdept = $_GET{'DEPARTMENT'};

        $sql = "SELECT count(*) from RCC_PURCHASE  WHERE CAMPUS='$vcampus' AND DEPARTMENT='$vdept'";

      $retval = mysqli_query( $link, $sql);
      $row = mysqli_fetch_array($retval, MYSQLI_NUM );
      $_SESSION['row']=$row[0];
      $rec_count = $row[0];

      if( isset($_GET{'page'}) ) {
      $page = $_GET{'page'};
		  $page = (float)$page + 1;
      $offset = $rec_limit * $page ;
      $left_rec = $rec_count - ($page * $rec_limit);
      }

        $sql = "SELECT FILE_NAME,ITEM_NO,AMC,MAKE,VENDOR2,VENDOR3,ITEM_NAME,ITME_DESCRIPTION,DATE_FORMAT(PUR_DATE, '%d-%m-%Y') PUR_DATE,CAMPUS,DEPARTMENT,PRICE_PER_ITEM,NO_OF_ITEM,WARRANTY_EXPIRE_DATE,VENDOR from RCC_PURCHASE WHERE CAMPUS='$vcampus' AND DEPARTMENT='$vdept' ORDER BY ITEM_NO  LIMIT $offset, $rec_limit";
      }
    }

      ?> -->

   

<!-- <div class="card mb-3">
        <div class="card-header"> -->

          <!-- <i class="fa fa-table"></i> Purchase Item  -->
          <!-- <li class="fa">
          <form method="get" action="" class="form-inline my-2 my-lg-0 mr-lg-2">
            <div class="input-group">
              <input class="form-control" type="text" id="PSearch" name="PSearch" placeholder="Search for..."  autocomplete="off">
              <span class="input-group-append">
                <button class="btn btn-primary" type="submit" value="search" type="button">
                  <i class="fa fa-search"></i>
                </button>
              </span>
            </div>
          </form>
        </li> -->

      <?php
        // if( isset($_GET{'PSearch'} ) ) {
      
        //   $page = 0;
        //   $offset = 0;     

        // $PSearch = $_GET{'PSearch'};
        $sql = "SELECT FILE_NAME,ITEM_NO,AMC,MAKE,VENDOR2,VENDOR3,ITEM_NAME,ITME_DESCRIPTION,DATE_FORMAT(PUR_DATE, '%d-%m-%Y') PUR_DATE,CAMPUS,DEPARTMENT,PRICE_PER_ITEM,NO_OF_ITEM,WARRANTY_EXPIRE_DATE ,VENDOR from RCC_PURCHASE  ORDER BY ITEM_NO";//   LIMIT $offset, $rec_limit";
        // }      
      ?>

          <a data-toggle="modal" data-target="#Add-New-Item-Modal">
            <!-- <button class="btn btn-primary float-right">Add New Product</button> -->
          </a>
        </div>
      
          <div id="Tshow">
          <div class="card-body">
          <div class="table-responsive">
            
            <table class="table table-bordered " id="pvtable">
              <thead>
                <tr  class="card-header" align="center">
                  <th>PO No</th>
                  <th>Make</th>
                  <th>Item Name</th>
                  <th>Description</th>
                  <!-- <th>PO Date</th>
                  <th>Campus</th>
                  <th>Department</th>  -->
                  <th>PO Value</th> 
                  <th>No.of Item</th> 
                  <th>Warranty Year</th> 
                  <th>AMC</th> 
                  <th>Vendor-I</th> 
                  <th>Vendor-II</th> 
                  <th>Vendor-III</th> 
                  <th>PO Document</th> 
                </tr>
              </thead>
            
<?php
    //$sql = "SELECT * from RCC_PURCHASE ORDER BY ITEM_NO ASC LIMIT $offset, $rec_limit";
    if($result = mysqli_query($link, $sql)){
      if(mysqli_num_rows($result) > 0){
    while ($row = mysqli_fetch_array($result)) { ?>
                        <!-- <tbody id="PTable"> -->
                           <tr>
                              <th>
                              <?php echo $row['ITEM_NO'] ?>
                              </th>
                              <th>
                              <?php echo $row['MAKE'] ?>
                              </th>
                              <td>
                              <?php echo $row['ITEM_NAME'] ?>
                              </td>
                              <td>
                              <?php echo $row['ITME_DESCRIPTION'] ?>
                              </td>
                              <!-- <td width="110"> -->
                              <!-- ?php echo $row['PUR_DATE'] ?> -->
                              <!-- </td>
                              <td> -->
                              <!-- ?php echo $row['CAMPUS'] ?> -->
                              <!-- </td>
                              <td> -->
                              <!-- ?php echo $row['DEPARTMENT'] ?> -->
                              <!-- </td> -->
                              <td>
                              <?php echo $row['PRICE_PER_ITEM'] ?>
                              </td>
                              <td width="50">
                              <?php echo $row['NO_OF_ITEM'] ?>
                              </td>
                              <td width="110">
                              <?php echo $row['WARRANTY_EXPIRE_DATE'] ?>
                              </td>
                              <td width="110">
                              <?php echo $row['AMC'] ?>
                              </td>
                              <td>
                              <?php echo $row['VENDOR'] ?>
                              </td>
                              <td>
                              <?php echo $row['VENDOR2'] ?>
                              </td>
                              <td>
                              <?php echo $row['VENDOR3'] ?>
                              </td>
                               <td>
                               <a class="nav-link" href="pdf_file/<?php echo $row['FILE_NAME'] ?>" target="_blank"> <button class="btn btn-primary float-right">View</button> </a>
                               <br> <br>
                               <?php
                               if(($_SESSION['sess_id'] == "USER") ) {
                                echo "<a id='b-dept' data-toggle='modal' data-target='#Dept-Apply-Modal'><button class='btn btn-primary float-right'>Apply</button></a>";
                               }
                               ?>
                             
                                </td>
                                <!-- <td>  -->
                                 <!-- <a data-toggle="modal" data-target="#Dept-New-Item-Modal"><button class="btn btn-primary float-right">Edit</button></a>  -->
                               <!-- <a data-toggle="modal" data-target="pdf_file/<?php echo $row['FILE_NAME'] ?>"><button class="btn btn-primary float-right">View</button></a> -->
                               <!-- <button class="btn btn-success pull left" onclick=document.getElementById('Dept-New-Item-Modal').style.display="block">Edit</button> -->
                               <!-- </td>  -->
                           </tr>
                        <!-- </tbody> -->
                        <?php
}
      }
//}
//} else {
//echo '0 results';
}
?> 
</table>
          </div>
        </div>
        </div>


<div id="show">
<div class="card-body">
          <div class="table-responsive">
 <!--SHOW AJAX TABLE-->           
</div>
</div>
</div>


        <!-- ?php
        $pag1=$offset+1;
        $pag2=$offset+$rec_limit;
        $pag3=$rec_count;
        if ($pag3<=$pag2){
          $pag2=$pag3;
        }
        ?> -->
          <!-- <div id="pa_ne_pr" class="form-row right">
         <div class="card-footer small text-muted"><?php if(isset($_GET['PSearch'])) { echo  ""; } else { echo "Showing ". $pag1." to ".$pag2." of ".$pag3." "; } ?></div> 
      -->
       
        <!-- ?php
         if(isset($_GET['PSearch']))
         {
         echo "";
         } 
         else if( $page > 0 && $left_rec > $rec_limit) {
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
  -->
    <!-- </div> 
      </div>  
    </div>-->
    


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



<script>
  var windowObjectReference;
  var strWindowFeatures = "menubar=no,location=no,resizable=no,scrollbars=no,status=no,width=1200,height=650";

   function openInNewTab(url) {
   window.open('http://10.11.102.115:8889/reports/rwservlet?report=C:/DevSuiteHome_1/reports/RCC_PUR_REP1.rdf&destype=cache&desformat=pdf&userid=rccpurchase/rccpurchase@rcc',"_blank",strWindowFeatures);
   }
   </script>

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
            <a class="btn btn-primary" href="logout.php"> Logout</a>
          </div>
        </div>
      </div>
    </div>

    <script>
$(document).ready(function() {
  $("#show").html("");
})
</script> 
<script>
//Getting value from "ajax.php".
function fill(Value) {
   $('#PSearch').val(Value);//Assigning value to "search" div in "search.php" file. 
   $('#show').hide();//Hiding "display" div in "search.php" file.
   $('#Tshow').hide();
}
$(document).ready(function() {
   $("#PSearch").keyup(function() {//On pressing a key on "Search box" in "search.php" file. This function will be called.
       var ITEM_NAME = $('#PSearch').val();//Assigning search box value to javascript variable named as "name".
       if (ITEM_NAME == "") {  //Validating, if "name" is empty.
           $("#show").html(""); //Assigning empty value to "display" div in "search.php" file.
       }
       else {//If name is not empty.
           $.ajax({ //AJAX is called.
               type: "POST",  //AJAX type is "Post".
               url: "searchproduct.php", //Data will be sent to "ajax.php".
               data: {//Data, that will be sent to "ajax.php".
                PSearch: ITEM_NAME//Assigning value of "name" into "search" variable.
               },
               success: function(html) { //If result found, this funtion will be called.
                   $("#show").html(html).show();//Assigning result to "display" div in "search.php" file.
$("#Tshow").html("");
$("#pa_ne_pr").html("");
               }
           });
       }
   });
});

</script>


<script>
var table = document.getElementById('pvtable');
for(var i = 1; i < table.rows.length; i++)
    {
    table.rows[i].onclick = function()
    {
     
      document.getElementById('itemno').value = this.cells[0].innerHTML; 
      document.getElementById("itemmake").value = this.cells[1].innerHTML; 
      document.getElementById("itemname").value = this.cells[2].innerHTML; 
			document.getElementById("itemdesc").value = this.cells[3].innerHTML; 
      document.getElementById("povalue").value = this.cells[4].innerHTML; 
      document.getElementById("warrantydate").value = this.cells[6].innerHTML; 
      document.getElementById("amc").value = this.cells[7].innerHTML; 
      document.getElementById("quantityitem").value ='';
      document.getElementById("vendor").value ='';
      
                    };
                }
</script>

<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="js/ajax.js"></script>
<script type="text/javascript">
$(document).ready(function() {
  $("#quantityitem").keyup(function() {
    var itemno_id = document.getElementById("itemno").value;
    if(itemno_id != "") {
      $.ajax({
        url:"getdesktop.php",
        data:{itemno:itemno_id},
        type:'POST',
        success:function(response) {
          var resp = $.trim(response);
          $("#vendor").html(resp);
        }
      });
    } else {
      $("#venfor").html("<option value=''> Select --------</option>");
    }
  });
});
</script>

   <script>  
 $(document).ready(function(){  
      $('#pvtable').DataTable();  
 });  
 </script>  

 <!-- <script>
$('#Dept-New-Item-Modal').on('show.bs.modal', function(e) {  
var getIdFromRow = $(e.relatedTarget).data('id');
$("#itemdesc").val(getIdFromRow);
});
</script> -->


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
