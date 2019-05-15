<?php 
include "db.php";

#embeded variable
$array = array('password');
foreach($array as $variable)
{
	$$variable = isset($_GET[$variable]) ? $_GET[$variable] :'';
}
#$sql = "INSERT INTO students VALUES('$id', '$name', '$gender', '$major', '$address', '$phone')";
$sql = "UPDATE user_info SET password = '$password'";

if (mysqli_query($conn, $sql)){
	echo "Update successfully<br >";
	header("location:profile.php");
	//echo "<a href='guru.php'> Back</a>";
} else{
	echo "Error: " . $sql . "<br>" . mysqli_error($conn). "<br >";
}
mysqli_close($conn);
?>