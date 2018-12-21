<!DOCTYPE HTML>
<html>
<body>
<?php
include("config.php");

 session_start();
	if (isset($_SESSION['username'])){
 	$uname = $_SESSION['username'];
	}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
 

if ($link->connect_error) {
    die("Connection failed: " . $link->connect_error);
} 



 $inp1id = $_POST["p1id"]; 
 $invname = $_POST["vname"];

if ($innyc != '#')
{

$sql = "UPDATE page_1 SET PAGE_CONTENT='$invname',ID='$inp1id'  WHERE ID='$inp1id'";
 }

if ($link->query($sql) === TRUE) {
    echo "Record updated successfully";
} else {
    echo "Error updating record: " . $link->error;
}

$link->close();

header("location: page1.php");

}
?>
</body> 
</html>