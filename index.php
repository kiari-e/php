<!DOCTYPE html>
<html>
  <head>
    <title>CUSTOMER DETAILS</title>
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>    
  <link rel="stylesheet" href="style.css">
</head>

<body>

<div style="background-color: grey;">
  <div class="container">
  <h1>CUSTOMER DETAILS</h1>
<form  required action="" method="GET">
    <div class="input-group mb-3">
      <input type="text" name="search" value="
      <?php if(isset($_GET['search'])){echo $_GET['search']; } ?>" class="form-control" placeholder="Search data">
      <button type="submit" class="btn btn-warning">Search</button>
    </div>
</form>
  </div>
</div>


<div class="col-md-12" >
  <table class="table">
   <thead>
    <tr>
      <th>ACC</th>
      <th>FIRST NAME</th>
      <th>LAST NAME</th>
      <th>PHONE NO</th>
      <th>ADDRESS</th>
    </tr>
   </thead>
		<?php 
        include("connection.php");

          if(isset($_GET['search']))
           {                         
            $acquire= $_GET['search'];
            $analize = "SELECT * FROM details WHERE CONCAT(first_name,last_name) LIKE '%$acquire%' ";
            $analize_run = mysqli_query($conn, $analize);

            if(mysqli_num_rows($analize_run) > 0)
            {
            foreach($analize_run as $theDetails){  ?>                                             
            
              <tr>
                <td><?= $theDetails['acc_no']; ?></td>
                <td><?= $theDetails['first_name']; ?></td>
                <td><?= $theDetails['last_name']; ?></td>
                <td><?= $theDetails['phone_no']; ?></td>
                <td><?= $theDetails['address']; ?></td>
                </tr>
                <?php
                }                             
                  }
                  else
                  {
                  ?>
                  <tr>
                   <td colspan="4">No Record Found</td>
                    </tr>
                    <?php
                      }
                      }
     ?>
</div>

</table>

  </body>
</html>