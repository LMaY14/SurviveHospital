<?php
require_once('connect.php');
session_start();

?>
<header>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
</header>

<body>
    <?php
    if (isset($_POST['login'])) {
        $uname = $_POST["staffname"];
        $pass = $_POST["staffpass"];

        $q = "SELECT StaffUsername,StaffPassword,StaffFName,StaffLName,StaffID FROM staff
        WHERE StaffUsername = '$uname'
        AND   StaffPassword = '$pass'
    ";
        $result = $mysqli->query($q);
        $count = $result->num_rows;
        if ($count == 1) {
            $row = $result->fetch_array();
            echo "fetch complete";
            $_SESSION['StaffFName'] = $row["StaffFName"];
            $_SESSION['StaffLName'] = $row["StaffLName"];
            $uid = $row["StaffID"] = $row['StaffID'];
            header('Location: welcome_staff.php');
        } else {
        echo'<div class="text-center py-5 h-100" style="background-image: url(https://www.tc.columbia.edu/media/news/images/2020/may/covid-doctors-istock.jpg);height:720px">';
        echo'<div class="container " style="background-color: #b8e3ff;">';
        echo'<div class="mx-auto col-md-8 col-10 p-5 border-primary" >';
        echo'<class"wrongpass text-center"> <h2 style="font-family: \'Segoe Print\';font-size: 30px"><img src="image/warning.png" width="30px" height="30px">Wrong Username or Password<br><br></h2>';
        echo'<a href="loginstaff.php"><button class ="btn btn-danger"style="font-family: \'Lucida Sans\';font-size: 18px">Go back</button><br><br></a>';
        echo'<a href="login.php" style="color: blue;font-family: \'Lucida Sans\';font-size: 18px">Go back as Patient</button></a>';
        echo'</div>';
        echo'</div>';
        echo'</div>';
        }
    }
    ?>
</body>