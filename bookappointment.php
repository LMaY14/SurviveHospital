<!--?php require_once('connect.php'); ?-->
<?php
require_once('connect.php');
session_start();

?>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
    <title>Book appointment </title>
</head>

<body>
    <div class="py-5" style="background-color: #adc5d8;">
        <div class="container" style="background-color: white;">
            <div class="row">
                <div class="col-md-12" style="background-color: #608fb7;">
                    <h1 class="display-4" style="color: white;font-family: 'Segoe Print';"><img style="position: relative; left: 14px;" src="image/calendar.png" width="50px" height="50px"> Booking appointment</h1>
                </div>
            </div>
            <br>
            <form action="bookappointment_insert.php" method="post">
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
                                <br>
                                <label>Select doctor (optional) </label>
                                <select name="DoctorID" style="color: #0c4876;font-family: 'Bahnschrift';font-size:20px;">doctor list
                                    <?php
                                    $q = 'select DoctorID,DoctorFName,DoctorLName from doctor';
                                    if ($result = $mysqli->query($q)) {
                                        while ($row = $result->fetch_array()) {
                                            echo '<option value="' . $row[0] . '">' . $row[1] . ' ' . $row[2] . '</option>';
                                        }
                                    } else {
                                        echo 'Query error: ' . $mysqli->error;
                                    }
                                    ?>
                                </select>
                                <button class="btn btn-secondary" type="submit" name="book" style="color:white;font-family: 'Lucida Sans';font-size: 16px;">Book</button>
                            </div>
                        </div>
                    </div>
                    <div class="py-5" style="background-color: white;">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-10">
                                    <a class="btn btn-primary" type="button" href="welcome.php" style="color:white;font-family: 'Lucida Sans';font-size: 16px;">Back</a>
                                </div>
                            </div>
                        </div>
                    </div>

            </form>
        </div>

    </div>
</body>

</html>