<?php 

    include('../config/constants.php'); 
    include('login-check.php');

?>


<html>
    <head>
        <title>Foodies - Home Page</title>

        <link rel="stylesheet" href="../css/admin.css">
        <link rel="alternate" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    </head>
    
    <body>
        <!-- Menu Section Starts -->
        <section class="navbar">
        
            <div class="hamburger">
                <div class="line1"></div>
                <div class="line2"></div>
                <div class="line3"></div>
            </div>
            
            <ul class="menu">
                    <li><a href="index.php">Home</a></li>
                    <li><a href="manage-admin.php">Admin</a></li>
                    <li><a href="manage-category.php">Category</a></li>
                    <li><a href="manage-food.php">Food</a></li>
                    <li><a href="manage-order.php">Order</a></li>
                    <li><a href="logout.php">Logout</a></li>
            </ul>
    
            <!--  <div class="clearfix"></div> -->
    
            </div>

        </section>
        
        <!-- Menu Section Ends -->