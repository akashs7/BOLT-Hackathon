<?php
$v = $_POST["regno"];

if (strlen($v)>5){
    include 'studentlanding.html';
}
else{
    include 'teacherlanding.html';
}
?>