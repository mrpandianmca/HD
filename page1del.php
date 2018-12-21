<!DOCTYPE HTML>
<html>
<body>
<?php
include("config.php");

if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    if ($link->connect_error) {
        die("Connection failed: " . $link->connect_error);
    } 

    
    $ind1id = $_POST["d1id"]; 

$sql = "DELETE FROM page_1 WHERE ID='$ind1id'";

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