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



 $inp1id = $_POST["a1id"]; 
 $invname = $_POST["aname"];



$sql = "INSERT INTO page_1 VALUES('$inp1id','$invname')";


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