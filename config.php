<?php
/* Database credentials. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
define('DB_SERVER', 'q57yawiwmnaw13d2.cbetxkdyhwsb.us-east-1.rds.amazonaws.com');
define('DB_USERNAME', 'b89j1waxhxwrcsi6');
define('DB_PASSWORD', '');
define('DB_NAME', 'co8wp6olsaxilld3');
 
/* Attempt to connect to MySQL database */
$link = mysqli_connect(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_NAME);
 
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
?>
