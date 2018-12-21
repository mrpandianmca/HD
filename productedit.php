<!DOCTYPE HTML>
<html>
<body>
<?php
 session_start();
 include('dbconnect.php'); // include the connection object from the DBConnection.php
 include('config.php');
if ($_SERVER['REQUEST_METHOD'] == 'POST')
{ 
 $initemno = $_POST["eitemno"]; // as the method type in the form is "post" we are using $_POST otherwise it would be $_GET[]
 $initemname = $_POST["eitemname"];
 $initemdesc = $_POST["eitemdesc"];
 $inpodate = $_POST["epodate"];
 $incampus = $_POST["ecampus"];
 $indept = $_POST["edept"];
 $inpovalue = $_POST["epovalue"];
 $inquantityitem = $_POST["equantityitem"];
 $inwarrantydate = $_POST["ewarrantydate"];
 $invendor = $_POST["xvendor"];

 //$stid = oci_parse($connect, "UPDATE RCC_PURCHASE SET ITEM_NO='$initemno',ITEM_NAME=trim('$initemname'),ITME_DESCRIPTION=trim('$initemdesc'),PUR_DATE='$inpodate',CAMPUS=trim('$incampus'),DEPARTMENT=trim('$indept'),PRICE_PER_ITEM=trim('$inpovalue'),NO_OF_ITEM='$inquantityitem',WARRANTY_EXPIRE_DATE='$inwarrantydate',VENDOR=trim('$invendor')");
 //oci_execute($stid); // The row is committed and immediately visible to other users
//  if($stid > 0)
//  {
//  header("location: product.php"); // user will be taken to the success page
//  //header("location: comregpdf.php");
//  }


// if(isset($_POST['reg_p']))
// { 
//       $file = rand(1000,100000)."-".$_FILES['file']['name'];
//       $file_loc = $_FILES['file']['tmp_name'];
//    $file_size = $_FILES['file']['size'];
//    $file_type = $_FILES['file']['type'];
//    $folder="pdf_file/";
   
//    move_uploaded_file($file_loc,$folder.$file);
//    $sql="INSERT INTO tbl_uploads(file,type,size) VALUES('$file','$file_type','$file_size')";
//    mysqli_query($link,$sql); 
// }
$file='';
$file_type='';
$file_size='';
//> 0 && $stid >0

$sql="UPDATE RCC_PURCHASE SET ITEM_NAME=trim('$initemname'),ITME_DESCRIPTION=trim('$initemdesc'),PUR_DATE=trim('$inpodate'),CAMPUS=trim('$incampus'),DEPARTMENT=trim('$indept'),PRICE_PER_ITEM=trim('$inpovalue'),NO_OF_ITEM=trim('$inquantityitem'),WARRANTY_EXPIRE_DATE=trim('$inwarrantydate'),VENDOR=trim('$invendor') WHERE ITEM_NO='$initemno'";
if (mysqli_query($link, $sql)) {
      echo "Record updated successfully";
      header("location: product.php"); // user will be taken to the success page
   } else {
      echo "Error updating record: " . mysqli_error($link);
   }
      


}
 ?>
</body> 
</html>