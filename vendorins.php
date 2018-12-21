<!DOCTYPE HTML>
<html>
<body>
<?php
 session_start();
 include('dbconnect.php'); // include the connection object from the DBConnection.php
 include('config.php');
if ($_SERVER['REQUEST_METHOD'] == 'POST')
{ 
 $invname = $_POST["vname"]; // as the method type in the form is "post" we are using $_POST otherwise it would be $_GET[]
 $invaddress = $_POST["vaddress"];
 $invcontactname = $_POST["vcontactname"];
 $invweb = $_POST["vweb"];
 $invmail = $_POST["vmail"];
 $invphone = $_POST["vphone"];


 $stid = oci_parse($connect, "INSERT INTO VENDOR (VENDOR_NAME,VENDOR_ADDRESS,VENDOR_CONTACT_NAME,VENDOR_WEB,VENDOR_MAIL,VENDOR_PHONE) VALUES ('$invname','$invaddress','$invcontactname','$invweb','$invmail','$invphone')");
 oci_execute($stid); // The row is committed and immediately visible to other users
//  if($stid > 0)
//  {
//  header("location: vendor.php"); // user will be taken to the success page
//  //header("location: comregpdf.php");
//  }

$stmt = $link->prepare("INSERT INTO VENDOR (VENDOR_NAME,VENDOR_ADDRESS,VENDOR_CONTACT_NAME,VENDOR_WEB,VENDOR_MAIL,VENDOR_PHONE) VALUES(?, ?, ?, ?, ?, ?)"); //Fetching all the records with input credentials
$stmt->bind_param("ssssss", $invname,$invaddress,$invcontactname,$invweb,$invmail,$invphone); //Where s indicates string type. You can use i-integer, d-double
$stmt->execute();
$v_result = $stmt->affected_rows;
if($v_result > 0 && $stid >0)
{
      header("location: vendor.php"); // user will be taken to the success page
      }
}
 ?>
</body> 
</html>