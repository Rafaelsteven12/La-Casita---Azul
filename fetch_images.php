<?php
require('inc/essentials.php');
require('inc/db_config.php');
adminLogin();

$result = $con->query("SELECT id, image_path FROM gallery");
$images = array();

while ($row = $result->fetch_assoc()) {
    $images[] = $row;
}

echo json_encode($images);
?>
