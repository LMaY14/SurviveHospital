<?php
require_once('connect.php');
session_start(); 
$UserID = $_SESSION['UserID'];



if(isset($_POST['book'])){
        $BookingDate = $_POST['BookingDate'];
		$BookingTime = $_POST['BookingTime'];
		$BookingDetail = $_POST['BookingDetail'];
        $DocterID = $_POST['DoctorID'];        

        $sql = "INSERT INTO bookappointment(UserID,BookingDate,BookingTime,BookingDetail,DoctorID) VALUES ('$UserID','$BookingDate','$BookingTime','$BookingDetail','$DocterID')";
        $result1=$mysqli->query($sql);
		if(!$result1){
			echo "INSERT failed. Error: ".$mysqli->error ;
			return false;
			}
		header("Location: bookappointment_user.php");
}


?>