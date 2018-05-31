<?php
/**
 * Created by PhpStorm.
 * User: Zaur
 * Date: 31/05/2018
 * Time: 22:00
 */


$data_az =  str_replace("'", '`', $_POST['data_az']);
$data_en =  str_replace("'", '`', $_POST['data_en']);

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "wp_grandterrace";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
	die("Connection failed: " . $conn->connect_error);
}
$conn->query("set names 'utf8'");


$sql = "UPDATE wp_menu SET content_az='" . $data_az . "', content_en='" . $data_en . "' WHERE id=1";



if ($conn->query($sql) === TRUE) {
	echo "Data updated successfully";
} else {
	echo "Error updating record: " . $conn->error;
}

$conn->close();