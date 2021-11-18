<?php
require('connect.php');
session_start();
$_SESSION['test'] = 1;
if (isset($_SESSION['test'])) {
  $firstname = $_SESSION['StaffFName'];
  $lastname = $_SESSION['StaffLName'];
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
  <title>Welcome Page</title>
</head>

<body>
  <div class="py-5" style="background-color: #b8e3ff;">
    <div class="container" style="background-color: #f0f7ff;">
      <div class="row">
        <div class="col-md-12" style="background-color: #0583d2;">
        <h2 class="display-4" style="color: white;font-family: 'Segoe Print';"><img src="image/hospital.png" width="50px" height="50px"> Survive Hospital</h2>
        </div>
      </div>
      <div class="container ">
      <br><h2 style="color: #095971;font-family: 'Lucida Handwriting';">Welcome Staff <img src="image/healthcare.png" width="25px" height="25px"><h2>
      <h3 style="color: #0c4876;font-family: 'Bahnschrift';font-size:30px;position: relative; left: 70px;">  
      <?php
      echo "${firstname}  ${lastname}<h3>";
      ?>
      </div>
      <div class="py-5 text-center" style="background-color: #f0f7ff;">
        <div class="container">
          <div class="row">
            <div class="mx-auto col-lg-10">
              <a class="btn btn-warning" href="bookappointmentinfo.php" style="color:white;font-family: 'Lucida Sans';font-size: 16px;">View appointment</a>
            </div>
          </div>
        </div>
        <div class="col-md-12">
          <div class="col-md-9 p-3">
          </div>
          <div class="col-md-3 align-items-center d-flex justify-content-center p-3"> <a class="btn btn-primary btn-lg" href="logout_staff.php" style="color:white;font-family: 'Lucida Sans';font-size: 16px;">Log out</a>
          </div>
        </div>
      </div>
    </div>
  </div>
  </div>
  </div>
  </div>


</body>

</html>