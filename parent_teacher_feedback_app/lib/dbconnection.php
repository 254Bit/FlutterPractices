<?php

function dbconnection()
{
    $con=mysqli_connect("localhost", "root", " ", "my_scholar");
    return $con;
}

?>