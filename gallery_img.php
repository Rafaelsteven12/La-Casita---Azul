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
            echo "Image uploaded and saved to database successfully.";
        } else {
            echo "Error: Could not save image to database.";
        }

        $stmt->close();
    } else {
        echo "Error: " . $_FILES['gallery_image']['error'];
    }
}

// Delete image
if(isset($_GET['delete_image'])) {
    $id = $_GET['delete_image'];
    $stmt = $con->prepare("DELETE FROM gallery WHERE id=?");
    $stmt->bind_param("i", $id);
    if($stmt->execute()) {
        echo "Image deleted successfully.";
    } else {
        echo "Error: Could not delete image.";
    }
    $stmt->close();
}

// Fetch images from database
$result = $con->query("SELECT * FROM gallery");
?>

<!DOCTYPE html>
<html lang="en">  
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Admin Panel - Gallery</title>
    <meta name='viewport' content='width=device-width, initial-scale=1.0'>
    <?php require('inc/links.php'); ?>
</head>
<body class="bg-light">
    <?php require('inc/header.php'); ?>

    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-10 ms-auto p-4 overflow-hidden">
                <h3 class="mb-4">GALLERY</h3>

                <div class="card border-0 shadow-sm mb-4">
                    <div class="card-body">
                        <div class="d-flex align-items-center justify-content-between mb-3">
                            <h5 class="card-title m-0">Gallery</h5>
                            <button type="button" class="btn btn-dark shadow-none btn-sm" data-bs-toggle="modal" data-bs-target="#gallery-s">
                                <i class="bi bi-plus-square"></i>Add
                            </button>
                        </div>

                        <div class="table-responsive-md" style="350px; overflow-y: scroll;">
                            <table class="table table-hover border">
                                <thead>
                                    <tr class="bg-dark text-light">
                                        <th scope="col">#</th>
                                        <th scope="col">Image</th>
                                        <th scope="col">Action</th>
                                    </tr>
                                </thead>
                                <tbody id="gallery-data">
                                    <?php
                                    if ($result->num_rows > 0) {
                                        while($row = $result->fetch_assoc()) {
                                            echo "<tr>";
                                            echo "<th scope='row'>" . $row['id'] . "</th>";
                                            echo "<td><img src='data:image/jpeg;base64," . base64_encode($row['image_data']) . "' alt='Gallery Image' style='width: 100px;'></td>";
                                            echo "<td><a href='?delete_image=" . $row['id'] . "' class='btn btn-danger btn-sm'>Delete</a></td>";
                                            echo "</tr>";
                                        }
                                    } else {
                                        echo "<tr><td colspan='3'>No images found</td></tr>";
                                    }
                                    ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

                <div class="modal fade" id="gallery-s" data-bs-backdrop="static" data-bs-keyboard="true" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <form id="gallery_s_form" enctype="multipart/form-data" method="POST" action="<?php echo $_SERVER['PHP_SELF']; ?>">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title">Add Image</h5>
                                </div>
                                <div class="modal-body">
                                    <div class="mb-3">
                                        <label class="form-label fw-bold">Image</label>
                                        <input type="file" name="gallery_image" class="form-control shadow-none" required>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="reset" class="btn text-secondary shadow-none" data-bs-dismiss="modal">CANCEL</button>
                                    <button type="submit" name="add_image" class="btn custom-bg text-white shadow-none">SUBMIT</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>

                <?php require('inc/script.php'); ?>
                <script src="scripts/gallery.js"></script>
            </div>
        </div>
    </div>
</body>
</html>
