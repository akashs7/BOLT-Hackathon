<?php

$con=mysqli_connect("localhost","root","root1234") or die("error in connect".mysqli_error($con));
$db=mysqli_select_db($con,"bolt") or die("error in db selection".mysqli_error($con));
$q="SELECT * from outdoubts";
$x=mysqli_query($con,$q) or die("error in selecting data".mysqli_error($con));
$row = mysqli_fetch_array($x);

echo "<table id=\"exam\" align=\"center\" border=1>";
		echo"<tr><th>ID</th>";
		echo"<th>Register Number</th>";
		echo"<th>Faculty ID</th>";
		echo"<th>Doubt</th>";
	if(mysqli_num_rows($x)!=NULL)
	{
		$i = 1;
		while($y = mysqli_fetch_row($x))
		{
			echo"<tr><td>$y[0]</td><td>$y[1]</td><td>$y[2]</td><td>$y[3]</td></tr>";
			$i++;
		}

	}
	echo"<br>";

?>


