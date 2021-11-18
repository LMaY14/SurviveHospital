<?php
	$BookingID= $_GET['BookingID'];
	require_once('connect.php');
	if (isset($BookingID)) {
		$q="DELETE FROM bookappointment where BookingID=$BookingID";
			if(!$mysqli->query($q)){
				echo "DELETE failed. Error: ".$mysqli->error ;
		   }
		   $mysqli->close();
		   //redirect
		   header("Location: bookappointmentinfo.php");
	}
?>
