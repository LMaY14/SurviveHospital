<!--?php require_once('connect.php'); ?-->
<?php
require_once('connect.php');
session_start();
$BookingID = $_GET['BookingID'];

?>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Edit Book appointment </title>
</head>

<body>
    <div class="py-5" style="background-color: #adc5d8;">
        <div class="container" style="background-color: white;">
            <div class="row">
                <div class="col-md-12" style="background-color: #608fb7;">

                    <h1 class="display-4" style="color: white;font-family: 'Segoe Print';"><img style="position: relative; left: 14px;" src="image/calendar.png" width="50px" height="50px"> Edit Booking appointment</h1>
                </div>
            </div>
            <br>
            <form action="update_bookappointment.php" method="post">

                <div class="container" style="background-color: white;">
                    <div class="row">
                        <div class="mx-auto col-lg-10" style="color: #0c4876;font-family: 'Bahnschrift';font-size:28px;">
                            <label>Date </label>
                            <input type="date" id="date" name="BookingDate" style="color: #0c4876;font-family: 'Bahnschrift';font-size:20px;">
                            <br>
                            <label>Time </label>
                            <input type="time" id="Time" name="BookingTime" style="color: #0c4876;font-family: 'Bahnschrift';font-size:20px;">
                            <br>
                            <label>Medical concern </label>
                            <input type="text" id="text" name="BookingDetail" style="color: #0c4876;font-family: 'Bahnschrift';font-size:20px;">
                            <button class="btn btn-success" type="submit" name="book">Book</button>
                            <?php
                            echo "<input type='hidden' name='BookingID' value=$BookingID>";
                            ?>
                        </div>
                    </div>
                </div>
                <div class="py-5" style="background-color: white;">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-10">
                                <a class="btn btn-primary" type="button" href="bookappointment_user.php">Back</a>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>

    </div>

</body>

</html>