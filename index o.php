
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
$error="";
if($_SERVER["REQUEST_METHOD"] == "POST") {

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
    //echo 'Password = blank';
    $error = "Password Null";
    //header("location: login.php"); 
}

if ($inPassword == $password_r)
{
    //echo 'Logged In';
    $_SESSION['username']=$inUsername;
    $_SESSION['host']="pur";
    header("location: Dashboard.php"); 
}
else
{
    //echo 'Login Failed';
    $error = "Invalied Username and Passowrd";
   // if (empty($username)) { array_push($errors, "Username is required"); }
  
    //header("location: login.php"); 
}
  
 } 
       ?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>RCC, Anna University, Chennai</title>
  <!-- Bootstrap core CSS-->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">
</head>

<body class="bg-dark">

  <div class="container">
    <div class="card card-login mx-auto mt-5">
      <div class="card-header">Login</div>
      <div class="card-body">
        <form method="post" action="">
           <!-- ?php include('errors.php'); ? -->
          <div class="form-group">
            <label for="exampleInputEmail1">Username</label>
            <input class="form-control"  type="text"  name="username">
          </div>
          <div class="form-group">
            <label for="exampleInputPassword1">Password</label>
            <input class="form-control"  type="password" name="password">
          </div>
          <!-- <div class="form-group">
            <div class="form-check">
              <label class="form-check-label">
                <input class="form-check-input" type="checkbox"> Remember Password</label>
            </div>
          </div> -->
        

          <button type="submit" class="btn btn-primary btn-block" name="login_user">Login</button>
        </form>
        <div style = "font-size:11px; color:#cc0000; margin-top:10px"><?php echo $error; ?></div>
        <div class="text-center">
          <!-- <a class="d-block small mt-3" href="register.php">Register an Account</a> -->
       <!--   <a class="d-block small" href="forgot-password.php">Forgot Password?</a>-->
        </div>
      </div>
    </div>
  </div>
  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
</body>

</html>
