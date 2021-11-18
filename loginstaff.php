
<?php
require_once('connect.php');
session_start();

?>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
        type="text/css">
    <link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
</head>

<body>
    <div class="text-center py-5 " style="background-image:url(https://www.tc.columbia.edu/media/news/images/2020/may/covid-doctors-istock.jpg);height:720px">
        <div class="container" >
            <div class="row">
                <div class="mx-auto col-md-6 col-10  p-5 border-primary" style="background-color: #ebeced;">
                <div class="mb-4" style="color: #4c586f;font-family: 'Segoe Print';font-size:36px;"><img src="image/hospital.png" width="50px" height="50px"> Survive Hospital Staff</div>
                    <form action="loginstaff_process.php" method="post">
                        <div class="form-group"> <input type="text" class="form-control" style="color: #0c4876;font-family: 'Bahnschrift';font-size:16px;" placeholder="Enter Username"
                                id="form9" name= 'staffname'> </div>
                        <div class="form-group mb-3"> <input type="password" class="form-control" style="color: #0c4876;font-family: 'Bahnschrift';font-size:16px;" placeholder="Enter Password"
                                id="form10" name= 'staffpass'> <small class="form-text text-muted text-right"></small> 
                        </div> 
                        <button type="submit" class="btn btn-primary" name ='login' style="font-family: 'Lucida Sans';font-size: 18px">Login</button>
                        <br><br><a style="color: #0583d2;font-family: 'Lucida Sans';font-size: 16px;" href="login.php">Back to Patient</a>     
                    </form>
                </div>
            </div>
        </div>
    </div>
    
</body>
</html>