<?php  
 //$connect = mysqli_connect("localhost", "root", "", "testing");  
 include('config.php'); 
 $query ="SELECT * FROM RCC_PURCHASE ORDER BY ITEM_NO ASC";  
 $result = mysqli_query($link, $query);  
 ?>  
 <!DOCTYPE html>  
 <html>  
      <head>  
           <title>Webslesson Tutorial | Datatables Jquery Plugin with Php MySql and Bootstrap</title>  
           <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>  
           <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />  
           <script src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>  
           <script src="https://cdn.datatables.net/1.10.12/js/dataTables.bootstrap.min.js"></script>            
           <link rel="stylesheet" href="https://cdn.datatables.net/1.10.12/css/dataTables.bootstrap.min.css" />

  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
      </head>  
      <body>  
           <br /><br />  
           <div class="container">  
                <h3 align="center">Datatables Jquery Plugin with Php MySql and Bootstrap</h3>  
                <br />  
                <div class="table-responsive">  
                     <table id="employee_data" class="table table-striped table-bordered">  
                          <thead>  
                               <tr>  
                                    <td>ITEM_NO</td>  
                                    <td>ITEM_NAME</td>  
                                    <td>ITME_DESCRIPTION</td>  
                                    <td>DEPARTMENT</td>  
                                    <td>PRICE_PER_ITEM</td>  
                                    <td>FILE_NAME</td>
                               </tr>  
                          </thead>  
                          <?php  
                          while($row = mysqli_fetch_array($result))  
                          {  
                               echo '  
                               <tr>  
                                    <td>'.$row["ITEM_NO"].'</td>  
                                    <td>'.$row["ITEM_NAME"].'</td>  
                                    <td>'.$row["ITME_DESCRIPTION"].'</td>  
                                    <td>'.$row["DEPARTMENT"].'</td>  
                                    <td>'.$row["PRICE_PER_ITEM"].'</td>  
                                    <td>
                                    <a id="b-dept" data-toggle="modal" data-target="#Dept-Apply-Modal"><button class="btn btn-primary float-right">Apply</button></a>
                                    <a class="nav-link" href="pdf_file/'.$row["FILE_NAME"].'" target="_blank"><button class="btn btn-primary float-right">View</button></a>
                                    <button type="button" name="edit" class="btn btn-xs edit" id="'.$row["ITEM_NO"].'">Edit</button>
                                    <button type="button" name="open" class="btn btn-xs open" id="'.$row["ITEM_NO"].'">Open</button>
                                    <a href="javascript:void(0);" data-href="da_ta_ex_getContent.php?id='.$row["ITEM_NO"].'" class="openPopup"><button class="btn btn-primary float-right">About Us</button></a>
                                    </td>
                                    </tr>  
                               ';  
                          }  
                          ?>  
                     </table>  
                </div>  
           </div>  



<!-- Modal -->
<div class="modal fade bd-example-modal-lg" id="myModal" role="dialog">
<div class="modal-dialog modal-lg" role="document">
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Modal with Dynamic Content</h4>
            </div>
            <div class="modal-body">
             </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button> 
            </div>
        </div>
    </div>
</div>



      </body>  
 </html>  
 
<script>
$(document).ready(function(){
    $('.openPopup').on('click',function(){
        var dataURL = $(this).attr('data-href');
        $('.modal-body').load(dataURL,function(){
            $('#myModal').modal({show:true});
        });
    }); 
});
</script>

<!-- <script>
$('.openPopup').on('click',function(){
    $('.modal-body').load('da_ta_ex_getContent.php?id=2',function(){
        $('#myModal').modal({show:true});
    });
});
</script> -->


 <script type="text/javascript" language="javascript" >
 $(document).ready(function(){
    $(document).on('click', '.open', function(){
    var id = $(this).attr("id");
        $("#exampleModal").modal();
    });
});
</script>

 <script>  
 $(document).ready(function(){  
      $('#employee_data').DataTable();  
 });  
 </script>  

 <script type="text/javascript" language="javascript" >
 $(document).ready(function(){

    function update_data(id, column_name, value)
  {
   $.ajax({
    url:"da_ta_ex_update.php",
    method:"POST",
    data:{id:id, column_name:column_name, value:value},
    success:function(data)
    {
     $('#alert_message').html('<div class="alert alert-success">'+data+'</div>');
     $('#user_data').DataTable().destroy();
     fetch_data();
    }
   });
   setInterval(function(){
    $('#alert_message').html('');
   }, 5000);
  }

$(document).on('blur', '.update', function(){
   var id = $(this).data("id");
   var column_name = $(this).data("column");
   var value = $(this).text();
   update_data(id, column_name, value);
  });

 });
</script>

<script type="text/javascript" language="javascript" >
 $(document).ready(function(){
 $(document).on('click', '.edit', function(){
   var id = $(this).attr("id");
   if(confirm("Are you sure you want to remove this?"))
   {
    $.ajax({
     url:"delete.php",
     method:"POST",
     data:{id:id},
     success:function(data){
      $('#alert_message').html('<div class="alert alert-success">'+data+'</div>');
      $('#user_data').DataTable().destroy();
      fetch_data();
     }
    });
    setInterval(function(){
     $('#alert_message').html('');
    }, 5000);
   }
  });
 });
</script>