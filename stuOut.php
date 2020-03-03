
<?php
session_start();
$con=mysqli_connect("localhost","root","root1234") or die("error in connect".mysqli_error($con));
$db=mysqli_select_db($con,"bolt") or die("error in db selection".mysqli_error($con));
$y=$_SESSION["ID"];

$q="select * from outdoubts where regno='$y';";
$recs=mysqli_query($con,$q) or die("error in search".mysqli_error($con));

while($rec=mysqli_fetch_row($recs))
    {
        $reg=$rec[1];
        $q2="select Name from student where id='$reg';";
        $recs2=mysqli_query($con,$q2) or die("error in search".mysqli_error($con));
        $name=mysqli_fetch_row($recs2);
        echo "$name[0]";
        echo "<br>";
        echo $rec[3];
    }

?>




