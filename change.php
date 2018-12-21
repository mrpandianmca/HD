<?php
include('config.php');

//collect the passed id
$id = $_GET['xvendor'];

//run a query 
$sql = mysqli_query($link, "SELECT VENDOR_NAME FROM VENDOR WHERE VENDOR_NAME=$id");
$row = mysqli_num_rows($sql);
while ($row = mysqli_fetch_array($sql)){
//loop through all returned rows
echo "<option value='". $row['VENDOR_NAME'] ."'>" .$row['VENDOR_NAME'] ."</option>" ;
}
?>