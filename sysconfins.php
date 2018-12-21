<!DOCTYPE HTML>
<html>
<body>
<?php
 session_start();
 //include('dbconnect.php'); // include the connection object from the DBConnection.php
 include('config.php');
if ($_SERVER['REQUEST_METHOD'] == 'POST')
{ 
 $initemno =  $_POST["sitemno"]; // as the method type in the form is "post" we are using $_POST otherwise it would be $_GET[]
 $initemmake = $_POST["sitemmake"]; 
 $initemname = $_POST["sitemname"];
 $initemdesc =  $_POST["sitemdesc"];

$stmt = $link->prepare("INSERT INTO system_confi (SYS_CONFI_NO,MAKE,ITEM_NAME,ITEM_CONFI1) VALUES(?, ?, ?, ?)"); //Fetching all the records with input credentials
$stmt->bind_param("ssss", $initemno,$initemmake,$initemname,$initemdesc);
$stmt->execute();
$v_result = $stmt->affected_rows;
if($v_result > 0)// && $stid >0)
{
      header("location: system_conf.php"); // user will be taken to the success page
      }else {
            echo "Error updating record: " . mysqli_error();
         }
}
 ?>
</body> 
</html>