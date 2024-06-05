<?php
require('inc/essentials.php');
require('inc/db_config.php');
adminLogin();

// Handle image upload
if(isset($_POST['add_image'])) {
  // Check if the file was uploaded without errors
  if(isset($_FILES['gallery_image']) && $_FILES['gallery_image']['error'] == 0) {
      $file_tmp = $_FILES['gallery_image']['tmp_name'];
      $image_data = file_get_contents($file_tmp); // Read the image data

      // Insert the image data into the database
      $stmt = $con->prepare("INSERT INTO gallery (image_data) VALUES (?)");
      $stmt->bind_param("b", $image_data);

      if($stmt->execute()) {
          // Redirect back to gallery_img.php after image upload
          header("Location: gallery_img.php");
          exit(); // Make sure to exit after redirecting
      } else {
          echo "Error: Could not save image to database.";
      }

      $stmt->close();
  } else {
      echo "Error: " . $_FILES['gallery_image']['error'];
  }
}

?>

