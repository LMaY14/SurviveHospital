<?php
require_once('connect.php');

?>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
</head>

<body draggable="true">
    <form action='bookappoinment_insert.php' method='post'>
        <div class="py-5" style="background-color: #adc5d8;">
            <div class="container">
                <div class="row">
                    <div class="col-md-12" style="background-color: #608fb7;">
                        <h1 class="display-4" style="color: white;font-family: 'Segoe Print';"><img style="position: relative; left: 14px;" src="image/agenda.png" width="50px" height="50px"> Appointment List</h1>
                    </div>
                </div>
            </div>
            <br>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive" style="color: #0c4876;font-family: 'Bahnschrift';font-size:18px;">
                            <table class="table table-bordered " style="background-color: white;">
                                <thead class="thead-dark">
                                    <tr>
                                        <th>Firstname</th>
                                        <th>Lastname</th>
                                        <th>Date</th>
                                        <th>Time</th>
                                        <th>Medical Concern</th>
                                        <th>Doctor</th>
                                        <th>Delete</th>


                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $q = "select * from bookappointment , user WHERE bookappointment.UserID=user.UserID ORDER BY bookappointment.BookingDate;";
                                    $result = $mysqli->query($q);
                                    if (!$result) {
                                        echo "Select failed. Error: " . $mysqli->error;
                                        return false;
                                    }
                                    while ($row = $result->fetch_array()) {?>
                                        <tr>
                                        <td><?=$row['UserFName']?></td>
                                        <td><?=$row['UserLName']?></td>
                                        <td><?=$row['BookingDate']?></td>
                                        <td><?=$row['BookingTime']?></td>
                                        <td><?=$row['BookingDetail']?></td>
                                        <td><?=$row['DoctorID']?></td>
                                        <td><a href='deleteappointment.php?BookingID=<?=$row['BookingID']?>'><img src="image/delete.png" width="24" height="24"></a></td>
                                    </tr>
                                    <?php
                                    }
                                    ?>
                                </tbody>

                            </table>
                        </div>
                    </div>
                </div>
            </div>
</form>
    <div class="container">
        <div class="row">
            <div> <a class="btn btn-primary btn-lg" href="welcome_staff.php" style="color:white;font-family: 'Lucida Sans';font-size: 16px;">Back</a>
            </div>
        </div>
    </div>
</body>

</html>



