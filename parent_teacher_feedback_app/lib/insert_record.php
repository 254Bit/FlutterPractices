<?php

include("dbconnection.php");
$con =dbconnection();

if(isset($_POST["name"]))
{
    $name = $POST["name"];
}
else return;
if(isset($_POST["email"]))
{
    $email = $POST["email"];
}
else return;
if(isset($_POST["password"]))
{
    $password = $POST["password"];
}
else return;

$query="INSERT INTO `parent_table`(`parent_id`, `parent_name`, `parent_email`, `parent_password`) 
VALUES ('$name','$email','$password')";
$exe=mysqli_query($con,$query);

$arr =[];
if($exe)
{
    $arr["success"]=true;
}
else{
    $arr["success"]=false;
}

print(json_encode($arr));


?>