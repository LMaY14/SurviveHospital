<?php
require_once('connect.php');
session_start(); 
$UserID = $_SESSION['UserID'];
$BookingID = $_POST['BookingID'];

if(isset($_POST['book'])){
        $BookingDate = $_POST['BookingDate'];
		$BookingTime = $_POST['BookingTime'];
		$BookingDetail = $_POST['BookingDetail'];
        $sql = "UPDATE bookappointment SET BookingDate = '$BookingDate', BookingTime = '$BookingTime', BookingDetail = '$BookingDetail'
        WHERE BookingID = $BookingID;";
        $result1=$mysqli->query($sql);
		if(!$result1){
			echo "INSERT failed. Error: ".$mysqli->error ;
			return false;
			}
		header("Location: bookappointment_user.php");
}

?>