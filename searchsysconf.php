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
 $sql_c = mysqli_query($link, "SELECT COUNT(*) CNT FROM system_confi  WHERE  ((ITEM_NAME like '%".$r_id."%') or (MAKE like '%".$r_id."%') or (ITEM_CONFI1  like '%".$r_id."%')  or (ITEM_CONFI2  like '%".$r_id."%') or (ITEM_CONFI3  like '%".$r_id."%') or (ITEM_CONFI4  like '%".$r_id."%') or (ITEM_CONFI5  like '%".$r_id."%')) ORDER BY ITEM_NAME ASC");
 $row_c = mysqli_num_rows($sql_c);
 $row_c = mysqli_fetch_array($sql_c);
 $_SESSION['PSearch']=$row_c['CNT'];


   $sql = mysqli_query($link, "SELECT SYS_CONFI_NO,ITEM_NAME,MAKE,ITEM_CONFI1,ITEM_CONFI2,ITEM_CONFI3,ITEM_CONFI4,ITEM_CONFI5 FROM system_confi  WHERE  ((ITEM_NAME like '%".$r_id."%') or (MAKE like '%".$r_id."%') or (ITEM_CONFI1  like '%".$r_id."%')  or (ITEM_CONFI2  like '%".$r_id."%') or (ITEM_CONFI3  like '%".$r_id."%') or (ITEM_CONFI4  like '%".$r_id."%') or (ITEM_CONFI5  like '%".$r_id."%')) ORDER BY ITEM_NAME ASC");
     $row = mysqli_num_rows($sql);
  if(mysqli_num_rows($sql)>0){
    echo "<table class='table table-bordered' id='dftable1' width='100%' cellspacing='0'>";
    echo "<thead>";
    echo "<tr  class='card-header' align='center'>";
    //echo "<th>Item No<a href=?sorting=Item_No>  <i class='fa fa-sort' aria-hidden='true'></i></a></th>";
    echo "<th>Item Name</th>";
    echo "<th>Make</th>";
    echo "<th>Description</th>";
    echo "</tr>";
    echo "</thead>";
    echo "<tbody id='dfTable1'>";
  while ($row = mysqli_fetch_array($sql)){
    //$data = $rows;
    //echo $row['ITEM_NO']."<br>";
                              
                              echo "<tr>";
                              echo "<td>". $row['ITEM_NAME'] ."</td>";
                              echo "<td>". $row['MAKE']."</td>";
                              echo "<td>". $row['ITEM_CONFI1'].", ".$row['ITEM_CONFI2'].", ".$row['ITEM_CONFI3'].", ".$row['ITEM_CONFI4'].", ".$row['ITEM_CONFI5']."</td>";
                              //echo "<td><a class='nav-link' href='pdf_file/'".$row['FILE_NAME']."target='_blank'><button class='btn btn-primary float-right'>View</button></a></td>";
                               ?>
                              <!-- <td><a class="nav-link" href="pdf_file/<?php echo $row['FILE_NAME']; ?>" target="_blank"><button class="btn btn-primary float-right">View</button></a></td> -->
                               <?php
                              echo "</tr>";             
  }
  echo "</tbody>";
  echo "</table>";
} 

}
?>