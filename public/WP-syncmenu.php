<?php
/**
 * Created by PhpStorm.
 * User: Zaur
 * Date: 31/05/2018
 * Time: 22:00
 */

error_reporting(0);
 
header('Access-Control-Allow-Origin: '.$_SERVER['HTTP_ORIGIN']);
header('Access-Control-Allow-Methods: POST');
header('Access-Control-Max-Age: 1000');
header('Access-Control-Allow-Headers: Content-Type, Authorization, X-Requested-With');

 
$data_az =  str_replace("'", '`', trim($_POST['data_az']));
$data_en =  str_replace("'", '`', trim($_POST['data_en']));



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

if (($data_az != '') || ($data_en != '')) {

	if ($conn->query($sql) === TRUE) {
		echo "Data updated successfully <br>";
	} else {
		echo "Error updating record: " . $conn->error;
	}
}
else {
		echo "Error: object was empty";
}

$conn->close();

