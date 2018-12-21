<!DOCTYPE HTML>
<html>
<body>
<?php 
 include_once("config.php"); 
//  $db = "(DESCRIPTION =
//  (ADDRESS = (PROTOCOL = TCP)(HOST = aclab26.rccad.annauniv3.edu)(PORT = 1521))
//  (CONNECT_DATA =
//    (SERVER = DEDICATED)
//    (SERVICE_NAME = rccpur)
//  )
// )" ;
// $connect = oci_connect("RCCPURCHASE", "RCCPURCHASE", $db);

 session_start(); //always start a session in the beginning 

//  if (!$connect)  {
//     echo "An error occurred connecting to the database"; 
//     exit; 
// }

 $password_r='#';
 $inUsername = $_POST["username"]; // as the method type in the form is "post" we are using $_POST otherwise it would be $_GET[] 
 $inPassword = $_POST["password"]; 

$query = "SELECT USERID , PASSWORD FROM USERS WHERE  USERID =  '$inUsername' ";//Fetching all the records with input credentials
// $result = oci_parse($connect, $query);
// if(!$result)
// {
//     echo "An error occurred in parsing the sql string.\n"; 
//     exit; 
// }
// oci_execute($result);

// while(oci_fetch_array($result))
// {
//     $password_r = oci_result($result,"PASSWORD");
// }
$sql = mysqli_query($link,$query);
$row = mysqli_num_rows($sql);
while ($row = mysqli_fetch_array($sql)){
    $password_r = $row['PASSWORD'];
}

if ($password_r == "")
{
    echo 'Password = blank';
    
    header("location: login.php"); 
}

if ($inPassword == $password_r)
{
    if (isset($_SESSION['username'])) {
        unset($_SESSION['username']);
        session_destroy();
      }
    $_SESSION['username']=$inUsername;
    $_SESSION['host']="pur";
    header("location: Dashboard.php"); 
}
else
{
    //echo 'Login Failed';
    $error = "Login Failed";
   // if (empty($username)) { array_push($errors, "Username is required"); }
    header("location: login.php"); 
}
  
 //} 
       ?>
 </body> 
 </html>