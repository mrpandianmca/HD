<?php
include("config.php");
session_start();
//$vi_d_code=$_SESSION['$vicode'];

// if(isset($_POST['c_id'])) {
//   //$sql = "select * from rcc_purchase where campus=".mysqli_real_escape_string($link, $_POST['c_id']);
//   $sql = "select * from rcc_purchase where campus='CEG'";
//   $res = mysqli_query($link, $sql);
//   if(mysqli_num_rows($res) > 0) {
//     echo "<option value=''>------- Select --------</option>";
//     while($row = mysqli_fetch_object($res)) {
//       echo "<option value='".$row->department."'>".$row->department."</option>";
//     }
//   }
// } else {
//   header('location: ./');
// }


if (isset($_POST['PSearch'])){
 $r_id=$_POST['PSearch'];
 //$v_id_r=$_SESSION['$r_id'];
 $sql_c = mysqli_query($link, "SELECT COUNT(*) CNT FROM rcc_purchase  WHERE  ((ITEM_NO like '%".$r_id."%') or (ITEM_NAME like '%".$r_id."%') or (ITME_DESCRIPTION  like '%".$r_id."%') or (DATE_FORMAT(PUR_DATE, '%d-%m-%Y')  like '%".$r_id."%') or (CAMPUS  like '%".$r_id."%') or (DEPARTMENT  like '%".$r_id."%') or (PRICE_PER_ITEM  like '%".$r_id."%') or (NO_OF_ITEM  like '%".$r_id."%') or (DATE_FORMAT(WARRANTY_EXPIRE_DATE, '%d-%m-%Y')  like '%".$r_id."%') or (MAKE  like '%".$r_id."%') or (VENDOR  like '%".$r_id."%') or (VENDOR2  like '%".$r_id."%') or (VENDOR3  like '%".$r_id."%')) ORDER BY DATE_FORMAT(PUR_DATE, '%Y %m %d') ASC");
 $row_c = mysqli_num_rows($sql_c);
 $row_c = mysqli_fetch_array($sql_c);
 $_SESSION['PSearch']=$row_c['CNT'];


   $sql = mysqli_query($link, "SELECT FILE_NAME,ITEM_NO,MAKE,VENDOR2,VENDOR3,ITEM_NAME,ITME_DESCRIPTION,DATE_FORMAT(PUR_DATE, '%d-%m-%Y') PUR_DATE,CAMPUS,DEPARTMENT,PRICE_PER_ITEM,NO_OF_ITEM,WARRANTY_EXPIRE_DATE,VENDOR FROM rcc_purchase  WHERE  ((ITEM_NO like '%".$r_id."%') or (ITEM_NAME like '%".$r_id."%') or (ITME_DESCRIPTION  like '%".$r_id."%') or (DATE_FORMAT(PUR_DATE, '%d-%m-%Y')  like '%".$r_id."%') or (CAMPUS  like '%".$r_id."%') or (DEPARTMENT  like '%".$r_id."%') or (PRICE_PER_ITEM  like '%".$r_id."%') or (NO_OF_ITEM  like '%".$r_id."%') or (DATE_FORMAT(WARRANTY_EXPIRE_DATE, '%d-%m-%Y')  like '%".$r_id."%') or (MAKE  like '%".$r_id."%') or (VENDOR  like '%".$r_id."%') or (VENDOR2  like '%".$r_id."%') or (VENDOR3  like '%".$r_id."%')) ORDER BY DATE_FORMAT(PUR_DATE, '%Y %m %d') ASC");
     $row = mysqli_num_rows($sql);
  if(mysqli_num_rows($sql)>0){
    echo "<table class='table table-bordered' id='dftable1' width='100%' cellspacing='0'>";
    echo "<thead>";
    echo "<tr  class='card-header' align='center'>";
    //echo "<th>Item No<a href=?sorting=Item_No>  <i class='fa fa-sort' aria-hidden='true'></i></a></th>";
    echo "<th>Item No</th>";
    echo "<th>Make</th>";
    echo "<th>Item Name</th>";
    echo "<th>Description</th>";
    //echo "<th>PO Date</th>";
    //echo "<th>Campus</th>";
    //echo "<th>Department</th>"; 
    echo "<th>PO Value</th>";
    echo "<th>No.of Item</th>"; 
    echo "<th>Warranty Year</th>"; 
    echo "<th>Vendor-I</th>";   
    echo "<th>Vendor-II</th>";   
    echo "<th>Vendor-III</th>";   
    echo "<th>PO Document</th>";   
    echo "</tr>";
    echo "</thead>";
    echo "<tbody id='dfTable1'>";
  while ($row = mysqli_fetch_array($sql)){
    //$data = $rows;
    //echo $row['ITEM_NO']."<br>";
                              
                              echo "<tr>";
                              echo "<td>". $row['ITEM_NO'] ."</td>";
                              echo "<td>". $row['MAKE'] ."</td>";
                              echo "<td>". $row['ITEM_NAME']."</td>";
                              echo "<td>". $row['ITME_DESCRIPTION']."</td>";
                              //echo "<td>". $row['PUR_DATE']."</td>";
                              //echo "<td>". $row['CAMPUS']."</td>";
                              //echo "<td>". $row['DEPARTMENT']."</td>";
                              echo "<td>". $row['PRICE_PER_ITEM']."</td>";
                              echo "<td>". $row['NO_OF_ITEM']."</td>";
                              echo "<td>". $row['WARRANTY_EXPIRE_DATE']."</td>";
                              echo "<td>". $row['VENDOR']."</td>";
                              echo "<td>". $row['VENDOR2']."</td>";
                              echo "<td>". $row['VENDOR3']."</td>";
                              //echo "<td>". $row['FILE_NAME']."</td>";
                              //echo "<td><a class='nav-link' href='pdf_file/'".$row['FILE_NAME']."target='_blank'><button class='btn btn-primary float-right'>View</button></a></td>";
                              ?>
                              <td><a class="nav-link" href="pdf_file/<?php echo $row['FILE_NAME']; ?>" target="_blank"><button class="btn btn-primary float-right">View</button></a>
                              <br>
                              <?php
                               if(($_SESSION['sess_id'] == "USER") ) {
                                echo "<a id='b-dept' data-toggle='modal' data-target='#Dept-Apply-Modal'><button class='btn btn-primary float-right'>Apply</button></a></td>";
                               }
                               ?>
                              <?php
                              echo "</tr>";             
  }
  echo "</tbody>";
  echo "</table>";
} 

}
?>
 <script>  
 $(document).ready(function(){  
      $('#dftable1').DataTable();  
 });  
 </script>  