<?php

session_start();
$con=mysqli_connect("localhost","root","123456") or die("error in connect".mysqli_error($con));
$db=mysqli_select_db($con,"bolt") or die("error in db selection".mysqli_error($con));
$y=$_SESSION["ID"];

$content=$_POST['comment'];

