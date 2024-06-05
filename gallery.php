<?php
// require('../admin/inc/db_config.php');
// require('inc/db_config.php');


?>

<!DOCTYPE html>

<html lang="en">
 <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name ="viewport" content="device-width, initial-scale=1.0">
    <title>LA CASITA HOTEL - GALLERY</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css"/>
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

    <?php require('inc/links.php'); ?>
    <style>
     .availability-form{
      margin-top: -50px;
      z-index: 2;
      position: relative;
     }

     @media screen and (max-width: 575px) {
      .availability-form{
      margin-top: 25px;
      padding: 0 35px;
     }
   
    }
    </style>
 </head>
 <body class="bg-light">
 <?php require('inc/header.php'); ?>

 <div class="my-5 px-4">
      <h2 class="fw-bold h-font text-center">GALLERY</h2>
      <div class="h-line bg-dark"></div>
    </div>

<section class="gallery">
  <div class="wrapper">
    <div class="gallery">
      <div class="image"><span><img src="images/gallery/img1.jpg" alt=""></span></div>
      <div class="image"><span><img src="images/gallery/img2.jpg" alt=""></span></div>
      <div class="image"><span><img src="images/gallery/img3.jpg" alt=""></span></div>
      <div class="image"><span><img src="images/gallery/img4.jpg" alt=""></span></div>
      <div class="image"><span><img src="images/gallery/img5.jpg" alt=""></span></div>
      <div class="image"><span><img src="images/gallery/img6.jpg" alt=""></span></div>
      <div class="image"><span><img src="images/gallery/img7.jpg" alt=""></span></div>
      <div class="image"><span><img src="images/gallery/img8.jpg" alt=""></span></div>
      <div class="image"><span><img src="images/gallery/img9.jpg" alt=""></span></div>
      
    </div>
  </div>
  <div class="preview-box">
    <div class="details">
      <span class="title">Image <p class="current-img"></p> of <p class="total-img"></p></span>
      <span class="icon fas fa-times"></span>
    </div>
    <div class="image-box">
      <div class="slide prev"><i class="fas fa-angle-left"></i></div>
      <div class="slide next"><i class="fas fa-angle-right"></i></div>
      <img src="" alt="">
    </div>
  </div>
  <div class="shadow"></div>
 

  <script src="scripts/script.js"></script>
  </section>
  <?php require('inc/footer.php'); ?>

 </body>
</html> 