<?php include('config/constants.php'); ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <!-- Important to make website responsive -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>E Organic</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <!-- swiper css link-->
    <link rel="stylesheet"  href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css"/>
    <!-- Link our CSS file -->
    <link rel="stylesheet" href="css/style-front.css">
</head>

<body>
    <!-- Navbar Section Starts Here -->
    <section class="navbar">


        <div class="logo">
        <a href="<?php echo SITEURL; ?>"><img src="images/logo1.jpg" alt="Restaurant Logo"></a>
        </div>

        <div class="hamburger">
            <div class="line1"></div>
            <div class="line2"></div>
            <div class="line3"></div>
        </div>

        <ul class="menu">
            <li>
                <a href="<?php echo SITEURL; ?>">Home</a>
            </li>
            <li>
                <a href="<?php echo SITEURL; ?>categories.php">Categories</a>
            </li>
            <li>
                <a href="<?php echo SITEURL; ?>foods.php">Products</a>
            </li>
            <li>
                <a href="#">Contact</a>
            </li>
            <li><button class="login-button" href="#">Login</button></li>
            <li><button class="join-button" href="#">Join</button></li>
        </ul>

  <!--  <div class="clearfix"></div> -->

    </div>

    </section>
    <!-- Navbar Section Ends Here -->