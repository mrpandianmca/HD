<!DOCTYPE HTML>
<html>
<body>
<?php
 session_start();
 include('dbconnect.php'); // include the connection object from the DBConnection.php
 include('config.php');
if ($_SERVER['REQUEST_METHOD'] == 'POST')
{ 
 $initemno = $_POST["itemno"]; // as the method type in the form is "post" we are using $_POST otherwise it would be $_GET[]
 $initemname = $_POST["itemname"];
 $initemdesc = $_POST["itemdesc"];
 //$inpodate = $_POST["podate"];
 //$incampus = $_POST["campus"];
 //$indept = $_POST["dept"];
 $inpovalue = $_POST["povalue"];
 $inquantityitem = $_POST["quantityitem"];
 $inwarrantydate = $_POST["warrantydate"];
 $invendor = $_POST["vendor"];
 $invendor2 = $_POST["vendor2"];
 $invendor3 = $_POST["vendor3"];
 $initemake = $_POST["itemmake"];
 $inamc = $_POST["amc"];
 //$stid = oci_parse($connect, "INSERT INTO RCC_PURCHASE (SLNO,ITEM_NO,ITEM_NAME,ITME_DESCRIPTION,PUR_DATE,CAMPUS,DEPARTMENT,PRICE_PER_ITEM,NO_OF_ITEM,WARRANTY_EXPIRE_DATE,VENDOR) VALUES (rcc_pur_seq.nextval,'$initemno','$initemname','$initemdesc','$inpodate','$incampus','$indept','$inpovalue','$inquantityitem', '$inwarrantydate','$invendor')");
 //oci_execute($stid); // The row is committed and immediately visible to other users
//  if($stid > 0)
//  {
//  header("location: product.php"); // user will be taken to the success page
//  //header("location: comregpdf.php");
//  }


//if(isset($_POST['reg_p']))
//{
      //$file = rand(1000,100000)."-".$_FILES['file']['name'];
      $file = $initemno."-".$_FILES['file']['name'];
      $file_loc = $_FILES['file']['tmp_name'];
   $file_size = $_FILES['file']['size'];
   $file_type = $_FILES['file']['type'];
   $folder="pdf_file/";
   
   move_uploaded_file($file_loc,$folder.$file);
  // $sql="INSERT INTO tbl_uploads(item_no,file,type,size) VALUES('$initemno','$file','$file_type','$file_size')";
   //mysqli_query($link,$sql); 
//}


// $file='';
// $file_type='';
// $file_size='';
//PUR_DATE,CAMPUS,DEPARTMENT,
//$inpodate,$incampus,$indept,
//, ?, ?, ?

$stmt = $link->prepare("INSERT INTO RCC_PURCHASE (ITEM_NO,AMC,MAKE,ITEM_NAME,ITME_DESCRIPTION,PRICE_PER_ITEM,NO_OF_ITEM,WARRANTY_EXPIRE_DATE,VENDOR,VENDOR2,VENDOR3,FILE_NAME,FILE_TYPE,FILE_SIZE) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"); //Fetching all the records with input credentials
$stmt->bind_param("ssssssssssssss", $initemno,$inamc,$initemake,$initemname,$initemdesc,$inpovalue,$inquantityitem, $inwarrantydate,$invendor,$invendor2,$invendor3,$file,$file_type,$file_size); //Where s indicates string type. You can use i-integer, d-double
$stmt->execute();
$v_result = $stmt->affected_rows;
if($v_result > 0)// && $stid >0)
{
      header("location: product.php"); // user will be taken to the success page
      }
}
 ?>
</body> 
</html>