<?php
require('inc/essentials.php');
require('inc/db_config.php');
adminLogin();

if (isset($_GET['id'])) {
    $id = $_GET['id'];

    // Get the image path to delete the file
    $stmt = $con->prepare("SELECT image_path FROM gallery WHERE id = ?");
    $stmt->bind_param("i", $id);
    $stmt->execute();
    $stmt->bind_result($image_path);
    $stmt->fetch();
    $stmt->close();

    // Delete the file from the server
    if (file_exists($image_path)) {
        unlink($image_path);
    }

    // Delete the record from the database
    $stmt = $con->prepare("DELETE FROM gallery WHERE id = ?");
    $stmt->bind_param("i", $id);

    if ($stmt->execute()) {
        echo "Image deleted successfully.";
    } else {
        echo "Error: Could not delete image.";
    }

    $stmt->close();
}
?>
