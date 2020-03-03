<?php

session_start();
$con=mysqli_connect("localhost","root","root1234") or die("error in connect".mysqli_error($con));
$db=mysqli_select_db($con,"bolt") or die("error in db selection".mysqli_error($con));
$y="17BIT0370";


$content=$_POST['outdoubt'];


$q="select * from outdoubts;";
$recs=mysqli_query($con,$q) or die("error in selecting data".mysqli_error($con));

$row=mysqli_num_rows($recs);
if($row>0)
{
    while($rec=mysqli_fetch_row($recs))
    {
        $id=$rec[0];
    }
    $nlid=$nlid+1;
}
else
{
    $nlid=1;
}
echo "$nlid";

echo "$content";

file_put_contents('./outdoubts/'.$nlid."txt", "");
$link='./outdoubts/'.$nlid."txt";

$q="INSERT INTO 'outdoubts' ('TID','Regno', 'ID', 'Content', 'File', 'Status') VALUES ('$nlid','17','1950','$content','$link',0);";
mysqli_query($con,$q) or die("error in insertion".mysqli_error($con));

?>