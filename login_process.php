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
if(isset($_POST['login'])) {
    $uname = $_POST["username"];
    $pass = $_POST["userpass"];
    

    $q="SELECT UserUsername,UserPassword,UserFName,UserLName,UserID FROM user
        WHERE UserUsername = '$uname'
        AND   UserPassword = '$pass'
    ";
    $result=$mysqli->query($q);
    $count = $result->num_rows;
    if ($count ==1){        
        $row = $result->fetch_array();
        echo"fetch complete"; 
        $_SESSION['UserFName'] = $row["UserFName"];
        $_SESSION['UserLName'] = $row["UserLName"];
        $_SESSION['UserID'] = $row["UserID"];
        header('Location: welcome.php');
}
    else{ 
        echo'<div class="text-center py-5 h-100" style="background-image: url(https://uae.bumrungrad.com/Bumrungrad.Dubai/media/ConditionAndTreatmentIcons/ATMOSPHERE-AT-MAIN-BUILDING_003_re.jpg);">';
        echo'<div class="container " style="background-color: #b8e3ff;">';
        echo'<div class="mx-auto col-md-8 col-10 p-5 border-primary" >';
        echo'<class"wrongpass text-center"> <h2 style="font-family: \'Segoe Print\';font-size: 30px"><img src="image/warning.png" width="30px" height="30px"> Wrong Username or Password<br><br></h2>';
        echo'<a href="login.php"><button class ="btn btn-danger"style="font-family: \'Lucida Sans\';font-size: 18px">Back</button></a>';
        echo'</div>';

    }
}
?>
</body>
