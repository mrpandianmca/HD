<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>ICT Support System, RCC, AU</title>
    <link rel="icon" href="./img/aulogo.png">
    <link rel="stylesheet" href="./css/bootstrap.css">
    <link rel="stylesheet" href="./css/hstyle.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <style type="text/css">
        .wrapper{
            width: 550px;
            margin: 0 auto;
        }
        .page-header h2{
            margin-top: 0;
        }
        table tr td:last-child a{
            margin-right: 15px;
        }
    </style>

   <style>

.w3-panel {
	padding:0.01em 16px;
	}

.w3-panel {
	margin-top:16px;margin-bottom:6px;
	}

.w3-note {
	background-color:#ffffcc;
	border-left:6px solid #1abc9c;
	}

 /* img {
	display: inline-block;
    position: absolute;
     left: 170px;
    top: 10px;
    z-index: 0; 
}   */

.sticky {
  position: fixed;
  top: 0;
  width: 100%;
}

.sticky + .content {
  padding-top: 102px;
}

  
  #section1 {padding-top:0px;height:150px;color: #fff; background-color: #00bcd4;}
  #section2 {padding-top:0px;height:150px;color: #fff; background-color: #009688;}
  #section3 {padding-top:0px;height:150px;color: #fff; background-color: #ff9800;}
  #section41 {padding-top:0px;height:150px;color: #fff; background-color: #1E88E5;}
  #section42 {padding-top:0px;height:150px;color: #fff; background-color: #673ab7;}
</style>


    <script type="text/javascript">
        $(document).ready(function(){
            $('[data-toggle="tooltip"]').tooltip();   
        });
    </script>
    
</head>
<body>

<div class="header p-3 mb-2 bg-primary text-white">
<p><image  src="./img/aulogo.png" alt="Smiley face" width="70" height="70" align="left">
<h3>ICT Support System</h3>
<br></p>
</div>


<nav class="navbar navbar-inverse " id="hdnavid" >
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="./index.php">Welcome</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="./index.php">Home</a></li>
        <!-- <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Page 1-1</a></li>
            <li><a href="#">Page 1-2</a></li>
            <li><a href="#">Page 1-3</a></li>
          </ul>
        </li>
        <li><a href="#">Page 2</a></li>
        <li><a href="#">Page 3</a></li> -->
      </ul>
      
      <ul class="nav navbar-nav navbar-right">
        <!-- <li><input class="form-control" id="myInput" type="text" placeholder="Search.."></li> -->
        <li><a href="./login.php" target="_blank"><span class="glyphicon glyphicon-log-in"></span> Admin Login</a></li>
        <li><a href="./login.php" target="_blank"><span class="glyphicon glyphicon-log-in"></span> Service Engg Login</a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="side well well-sm">
<marquee behavior="slide" direction="left" scrolldelay="100"  onmouseover="this.stop();" onmouseout="this.start();"><b>Your slide-in text goes here Your slide-in text goes here Your slide-in text goes here</b></marquee>
</div

<div class="container-fluid" id="myTable">
<div class="row">
<div class="main">

<div class="col-sm-3" >
<div class="panel panel-primary" style="border-color:#149289a">
<div class="panel-heading" style='font-size:16px;font-weight:bold;background-color:#149289a'>
<center><font face='Georgia, Times New Roman, Times, serif' size='3' color="white">..</font></center>
</div>
<div class="panel-body form-group has-success has-feedback">
<?php
require_once 'config.php';
$sql = "SELECT PAGE_CONTENT FROM PAGE_1 ORDER BY ID";
if($result = mysqli_query($link, $sql)){
  if(mysqli_num_rows($result) > 0){
    while($row = mysqli_fetch_array($result)){
  echo "<ul>";
  echo "<li>". $row['PAGE_CONTENT'] ."</li><br>";
  echo "</ul>";
    }
  }
}
?>
</div> 
</div> 
</div> 

<div class="col-sm-6" >
<div id="section1" class="container-fluid"> 
  <h3>Section 1</h3>
  <p>Try to scroll this section and look at the navigation bar while scrolling! Try to scroll this section and look at the navigation bar while scrolling!</p>
  <p>Try to scroll this section and look at the navigation bar while scrolling! Try to scroll this section and look at the navigation bar while scrolling!</p>
</div>
<div id="section2" class="container-fluid">
  <h3>Section 2</h3>
  <p>Try to scroll this section and look at the navigation bar while scrolling! Try to scroll this section and look at the navigation bar while scrolling!</p>
  <p>Try to scroll this section and look at the navigation bar while scrolling! Try to scroll this section and look at the navigation bar while scrolling!</p>
</div>
<div id="section3" class="container-fluid">
  <h3>Section 3</h3>
  <p>Try to scroll this section and look at the navigation bar while scrolling! Try to scroll this section and look at the navigation bar while scrolling!</p>
  <p>Try to scroll this section and look at the navigation bar while scrolling! Try to scroll this section and look at the navigation bar while scrolling!</p>
</div>
</div>                    


<div class="col-sm-3 side well well-lg" >
<marquee  behavior="scroll" direction="up" scrolldelay="200" onmouseover="this.stop();" onmouseout="this.start();">
<ul>
  <li><p><a href="">Your upward scrolling text goes here</a></p></li>
  <li><p>Try to scroll this section and look at the navigation bar while scrolling! Try to scroll this section and look at the navigation bar while scrolling!</p></li>
</ul>
</marquee>
</center>
</div>

<div class="col-sm-3 side well well-lg" >
<!-- <div class="side well well-lg"> -->
<!-- <marquee  behavior="scroll" direction="up">Your upward scrolling text goes here</marquee> -->
<label for="email"><b>Enter the Ticket No. to Check Status :</b></label>
<input type="text" class="form-control"  placeholder="Enter Ticket No." name="search" required>
<input class="btn btn-success pull left" onclick="validation()" type="submit" value="Search">
<input class="btn btn-success pull-right" type="reset" value="Reset">
<br><br>
</center>
</div>

</div>                    
</div>
</div>      
    

<div class="navbar navbar-inverse">
<br>
<p style="color:white;">&nbsp&nbspCopyright 2018 | All Rights Reserved | Designed and Maintained by Ramanujan Computing Centre, Anna University, Chennai-25 </p>
</div>

</body>

<script>
// $(document).ready(function(){
//   $("#myInput").on("keyup", function() {
//     var value = $(this).val().toLowerCase();
//     $("#myTable").filter(function() {
//       $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
//     });
//   });
// });


// $(document).ready(function(){
//  $('#myInput').keyup(function(){
//   // Search text
//   var text = $(this).val();
//   // Hide all content class element
//   $('.container-fluid').hide();
//   // Search and show
//   $('.container-fluid:contains("'+text+'")').show();
//  });
// });

$(document).ready(function(){
 $('#myInput').keyup(function(){
 
  // Search text
  var text = $(this).val();
 
  // Hide all content class element
  $('.container-fluid').hide();

  // Search 
  $('.container-fluid:contains("'+text+'")').closest('.container-fluid').show();

 });
});

$.expr[":"].contains = $.expr.createPseudo(function(arg) {
  return function( elem ) {
   return $(elem).text().toUpperCase().indexOf(arg.toUpperCase()) >= 0;
  };
});


</script>

<!-- <style>
 .sticky {
  position: fixed;
  top: 0;
  width: 100%;
}

.sticky + .content {
  padding-top: 102px;
}
</style>
<script>
window.onscroll = function() {myFunction()};

var header = document.getElementById("hdnavid");
var sticky = header.offsetTop;

function myFunction() {
  if (window.pageYOffset > sticky) {
    header.classList.add("sticky");
  } else {
    header.classList.remove("sticky");
  }
}
</script> -->

</html>