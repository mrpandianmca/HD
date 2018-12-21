<!DOCTYPE HTML>
<html>
<body>
<?php 
 //include_once("config.php"); 
 $db = "(DESCRIPTION =
 (ADDRESS = (PROTOCOL = TCP)(HOST = aclab26.rccad.annauniv3.edu)(PORT = 1521))
 (CONNECT_DATA =
   (SERVER = DEDICATED)
   (SERVICE_NAME = rccpur)
 )
)" ; 
$connect = oci_connect("RCCPURCHASE", "RCCPURCHASE", $db);
       ?>
 </body> 
 </html>