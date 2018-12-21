<?php
//$connect = mysqli_connect("localhost", "root", "", "testing");
include('config.php'); 
if(isset($_POST["id"]))
{
 $value = mysqli_real_escape_string($link, $_POST["value"]);
 $query = "UPDATE RCC_PURCHASE SET ".$_POST["ITEM_NAME"]."='".$value."' WHERE id = '".$_POST["id"]."'";
 if(mysqli_query($connect, $query))
 {
  echo 'Data Updated';
 }
}
?>