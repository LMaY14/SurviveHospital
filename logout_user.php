<?php
session_start();
unset($_SESSION["UserFName"]);
unset($_SESSION["UserLName"]);
unset($_SESSION["UserID"]);
header("Location: login.php");
?>