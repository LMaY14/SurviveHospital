<?php
session_start();
unset($_SESSION["StaffFName"]);
unset($_SESSION["StaffLName"]);
unset($_SESSION["StaffID"]);
header("Location: login.php");
?>