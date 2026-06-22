<?php
session_start();
include("includes/db.php");

include("functions/functions.php");
  ?>




<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shivani Electronics</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- owl carousel css file cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- custom css file link  -->

    <link rel="stylesheet" href="style.css">
  
 
</head>
<body>

<!-- header section starts  -->

<header>

<div class="header-1">
<div class="shivani">
    <!-- SVG Logo -->
    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64" width="40" height="40" style="vertical-align: middle; margin-right: 10px;">
        <rect x="10" y="15" width="44" height="30" rx="5" fill="#4CAF50"></rect>
        <rect x="12" y="17" width="40" height="26" rx="3" fill="#fff"></rect>
        <rect x="20" y="23" width="10" height="14" fill="#4CAF50"></rect>
        <rect x="34" y="23" width="10" height="14" fill="#4CAF50"></rect>
        <circle cx="32" cy="50" r="5" fill="#4CAF50"></circle>
        <circle cx="32" cy="50" r="3" fill="#fff"></circle>
    </svg>
    <!-- Title -->
    <h1 style="display: inline; font-size: 24px; margin: 0;">SHIVANI ELECTRONICS</h1>
</div>


     <a href="index.php" class="logo" >  </a>
                  
<div class="col-md-6 offer">
    <a href="#" class="btn btn-sucess btn-sm">
          <?php

        if (!isset($_SESSION['customer_email'])){
        echo "Guest";
      }else{
      echo "Welcome: " .$_SESSION['customer_email'] . "";
    }


        ?>
    </a>
<a id="pr" href="#"> Shopping Cart Total Price: ₹ <?php totalPrice();  ?></a>
</div>
  
</div>

<div class="header-2">
<nav class="navbar"> 
     <ul >
        <li>
            
            <li><a  href="index.php">HOME</a></li>
         <!--   <a class="active" href="index.php">HOME</a>  -->
            <li><a href="trimer.php">SHOP</a></li>
            <li><a href="#arrival">MOBILES & TABLETS</a></li>
            <li><a href="#parlor">TELEVISION</a></li>
            <li><a href="#garment">AIR CONDITIONER</a></li>
            <li><a href="#use">LAPTOPS</a></li>
            <li><a href="#deal">BEST OFFER</a></li>
            <li><a href="#deal">DEAL</a></li>
          <!--  <li><a href="#deal">DEAL</a></li> -->
            <!--<li><a href="contactus.php">CONTACT</a></li> -->
            <li><a href="#footer">ABOUT US</a></li>
 
 
       <div class="col-md-6">
        <ul class="menu">
            <!--
            <li>
                         <div class="collapse clearfix" id="search">
                             <form class="navbar-form" method="get" action="result.php">
                                 <div class="input-group">
                                     <input type="text" name="user_query" placeholder="search" class="form-control" required="">
                                     <button type="submit" value="search" name="search" class="btn btn-primary">
                                         <i class="fa fa-search"></i>
                                     </button>
                                 </div>
                             </form>
                         </div>
                   </li>
-->


                <li>
                  <a href="cart.php" class="">
                    <i class="fa fa-shopping-cart"></i>
                      <span><?php item(); ?> items in cart</span>
                        </a>
                </li>
                   

                   <li>
                   <a  href="customer_registration.php"><i class="fa fa-user-plus"></i>Register</a></li>
                   <li>
                    <?php

                    if (!isset($_SESSION['customer_email'])){
                    echo "<a href='checkout.php'>My Account</a>";

                         } else{
                    
                    echo "<a href='customer/my_account.php?my_order'>My Account</a>";
                
                         }

                    ?>
                   </li> 

                   <li>
                   <a href="cart.php"><i class="fa fa-shopping-cart"></i>Goto Cart</a></li>
                    
                   <li>
                     <?php

                    if (!isset($_SESSION['customer_email'])){
                    echo "<a href='checkout.php'>Login</a>";

                         } else{
                    
                    echo "<a href='logout.php'>Logout</a>";
                
                         }

                    ?></li>
             </ul>
       </div>
</ul>
    




    <div class="hero">
  <div class="hero__center">
    <div class="hero__left">
      <span>New Inspiration </span>
      <h1>APPLIANCES MADE FOR YOU!</h1>
      <p>Trending from mobile and Home Appliances style collection</p>
      <a href="#"><button class="hero__btn">SHOP NOW</button></a>
    </div>
    <div class="hero__right">
      <div class="hero__img-container">
        <img class="banner_01" src="images/image.png" alt="banner" />
      </div>
    </div>
  </div>
</div>

  
                  


<!-- header section ends -->

<!-- home section starts  -->
<section class="home" id="home">

<h1 class="heading"> <span>BEST OFFERS FOR YOU</span> </h1>

<div class="slideshow-container">
<!-- dynamic hairstyle images section starts  -->

<?php
$get_slider="select * from slider LIMIT 0,1";
$run_slider= mysqli_query($con,$get_slider);
while ($row= mysqli_fetch_array($run_slider)) {
  $slider_name= $row['slider_name'];
  $slider_image= $row['slider_image'];
   $slider_url= $row['slider_url'];

  echo "<div class='mySlides fade'>
  <a href='$slider_url'><img src='admin_area/slider_images/$slider_image'  width='1400' height='450'></a>

</div>
  ";
}

    ?>
<?php
$get_slider="select * from slider LIMIT 1,10";
$run_slider= mysqli_query($con,$get_slider);
while ($row= mysqli_fetch_array($run_slider)) {
  $slider_name= $row['slider_name'];
  $slider_image= $row['slider_image'];
   $slider_url= $row['slider_url'];
  echo "<div class='mySlides fade '>
  <a href='$slider_url'><img src='admin_area/slider_images/$slider_image' width='1400' height='450'></a>
        </div>";
}

    ?>


<!-- dynamic hairstyle images section End  -->

<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
<a class="next" onclick="plusSlides(1)">&#10095;</a>
</div>
<br>

<div  style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span> 
  <span class="dot" onclick="currentSlide(2)"></span> 
  <span class="dot" onclick="currentSlide(3)"></span> 
  <span class="dot" onclick="currentSlide(4)"></span> 
  <span class="dot" onclick="currentSlide(5)"></span> 
  

</div>



</section>




<!-- home section ends -->
<!-- new this week section start -->
<!-- hot start -->

<div class="hot">    
    <div class="box">
        <div class="container">
            <div class="col-md-121">
                <h2>Latest this Week</h2>
           
          <!-- dynamic latest this week images section start  -->
          <div class=" col-sm-4" >
          <div class="row">
                   <?php

                   getPro();


                     ?>
 </div>
</div><!-- hot End -->
 </div>
         </div>
    </div>
</div>
          <!-- dynamic latest this week images section End  -->


                   
      


<!-- new this week section End -->


<!--saloon product section starts  -->

<!-- Trimer Start  -->
<section class="arrival" id="arrival">

<h1 class="heading"> <span>MOBILES & TABLETS</span> </h1>

<div class="box-container">

    <div class="box">
        <div class="image">
           <a href="trimer.php?p_cat=27"> <img src="images/vivox100ree.jpg"  alt="" ></a>
        </div>
        <div class="info">
            <a href="trimer.php?p_cat=27"><h3>Vivo X100</h3></a>
            
        </div>
        <div class="overlay">
          
        </div>
    </div>
<!-- Trimer End  -->
    
    <div class="box">
        <div class="image">
           <a href="trimer.php?p_cat=27">  <img src="images/s24ull.jpg" alt=""></a>
        </div>
        <div class="info">
          <a href="trimer.php?p_cat=27">  <h3>Samsung S24 Ultra</h3></a>
           
        </div>
        <div class="overlay">
        
        </div>
    </div>

    <div class="box">
        <div class="image">
           <a href="trimer.php?p_cat=27"> <img src="images/resize16pro.jpg" alt=""></a>
        </div>
        <div class="info">
            <a href="trimer.php?p_cat=27"> <h3>Iphone 16 Pro</h3></a>
           
        </div>
        <div class="overlay">
    </div>
</div>

    <div class="box">
        <div class="image">
            <a href="trimer.php?p_cat=27"><img src="images/xiaomi13re.jpg" alt="" width="250px" height="250px"></a>
        </div>
        <div class="info">
            <a href="trimer.php?p_cat=27"><h3>Xiaomi 13 Pro Plus</h3></a>
        
        </div>
        <div class="overlay">
    </div>
    </div>

     <div class="box">
        <div class="image">
           <a href="trimer.php?p_cat=27"> <img src="images/a52re.jpg"  alt="" width="250px" height="250px"></a>
        </div>
        <div class="info">
            <a href="trimer.php?p_cat=27"><h3>Samsung A52</h3></a>
            
        </div>
        <div class="overlay">
          
        </div>
    </div>

     <div class="box">
        <div class="image">
           <a href="trimer.php?p_cat=27"> <img src="images/realme10re.jpg"  alt="" width="250px" height="250px"></a>
        </div>
        <div class="info">
            <a href="trimer.php?p_cat=27"><h3>Realme 10 Pro Plus</h3></a>
            
        </div>
        <div class="overlay">
          
        </div>
    </div>

     <div class="box">
        <div class="image">
           <a href="trimer.php?p_cat=28"> <img src="images/ipaaadre.jpg"  alt="" width="250px" height="250px"></a>
        </div>
        <div class="info">
            <a href="trimer.php?p_cat=28"><h3>Ipad Air</h3></a>
            
        </div>
        <div class="overlay">
          
        </div>
    </div>

     <div class="box">
        <div class="image">
           <a href="trimer.php?p_cat=27"> <img src="images/ipphone15re.jpg"  alt="" width="250px" height="250px"> </a>
        </div>
        <div class="info">
            <a href="trimer.php?p_cat=27"><h3>Iphone 15</h3></a>
            
        </div>
        <div class="overlay">
          
        </div>
    </div>

     <div class="box">
        <div class="image">
           <a href="trimer.php?p_cat=27"> <img src="images/mi12re.jpg"  alt="" width="250px" height="250px"></a>
        </div>
        <div class="info">
            <a href="trimer.php?p_cat=27"><h3>Redmi 13 Pro PLus</h3></a>
            
        </div>
        <div class="overlay">
          
        </div>
    </div>

     <div class="box">
        <div class="image">
           <a href="trimer.php?p_cat=27"> <img src="images/onepluss12res.jpg"  alt="" width="250px" height="250px"></a>
        </div>
        <div class="info">
            <a href="trimer.php?p_cat=27"><h3>OnePlus 12r</h3></a>
            
        </div>
        <div class="overlay">
          
        </div>
    </div>

     <div class="box">
        <div class="image">
           <a href="trimer.php?p_cat=27"> <img src="images/realmeee13prore.jpg"  alt="" width="250px" height="250px"></a>
        </div>
        <div class="info">
            <a href="trimer.php?p_cat=27"><h3>Realme 13 Pro Plus</h3></a>
            
        </div>
        <div class="overlay">
          
        </div>
    </div>

     <div class="box">
        <div class="image">
           <a href="trimer.php?p_cat=27"> <img src="images/samsungs23re.jpg"  alt="" width="250px" height="250px"></a>
        </div>
        <div class="info">
            <a href="trimer.php?p_cat=27"><h3>Samsung S23FE</h3></a>
            
        </div>
        <div class="overlay">
          
        </div>
    </div>

     
   
    
    
   
    </div>
</section>

<!-- saloon products section ends -->
<!-- parlor products section starts -->

<section class="parlor" id="parlor">

<h1 class="heading"> <span>LAPTOPS</span> </h1>

<div class="box-container">

    <div class="box">
        <div class="image">
           <a href="trimer.php?p_cat=22"> <img src="images/victus.jpg"  alt="" width="250"></a>
        </div>
        <div class="info">
            <a href="trimer.php?p_cat=22"><h3>HP VICTUS</h3></a>
            
        </div>
        <div class="overlay">
          
        </div>
    </div>
<!-- Trimer End  -->
    
    <div class="box">
        <div class="image">
           <a href="trimer.php?p_cat=22">  <img src="images/macbok.jpg" alt="" width="250"></a>
        </div>
        <div class="info">
          <a href="trimer.php?p_cat=22">  <h3>Macbook M3</h3></a>
           
        </div>
        <div class="overlay">
        
        </div>
    </div>

    <div class="box">
        <div class="image">
           <a href="trimer.php?p_cat=22"> <img src="images/omen.jpg" alt="" width="250"></a>
        </div>
        <div class="info">
            <a href="trimer.php?p_cat=22"> <h3>HP Omen</h3></a>
           
        </div>
        <div class="overlay">
    </div>
</div>

    <div class="box">
        <div class="image">
            <a href="trimer.php?p_cat=22"><img src="images/vivobook.jpg" alt=""width="250"></a>
        </div>
        <div class="info">
            <a href="trimer.php?p_cat=22"><h3>Asus VivoBook</h3></a>
        
        </div>
        <div class="overlay">
    </div>
    </div>

     <div class="box">
        <div class="image">
           <a href="trimer.php?p_cat=22"> <img src="images/ttuff.jpg"  alt=""width="250"></a>
        </div>
        <div class="info">
            <a href="trimer.php?p_cat=22"><h3>Asus Tuf</h3></a>
            
        </div>
        <div class="overlay">
          
        </div>
    </div>

     <div class="box">
        <div class="image">
           <a href="trimer.php?p_cat=22"> <img src="images/hhpp.jpg"  alt=""width="250"></a>
        </div>
        <div class="info">
            <a href="trimer.php?p_cat=22"><h3>HP 15</h3></a>
            
        </div>
        <div class="overlay">
          
        </div>
    </div>

     <div class="box">
        <div class="image">
           <a href="trimer.php?p_cat=22"> <img src="images/Samsun.jpg"  alt=""  width="265px"  ></a>
        </div>
        <div class="info">
            <a href="trimer.php?p_cat=22"><h3>Samsung Book 4</h3></a>
            
        </div>
        <div class="overlay">
          
        </div>
    </div>


    </div>
</section>
<!-- parlor products section ends -->
<!-- garment products section start -->
<section class="garment" id="garment">

<h1 class="heading"> <span>EARBUDS</span> </h1>

<div class="box-container">

    <div class="box">
        <div class="image">
           <a href="trimer.php?p_cat=74"> <img src="images/nooothhimg.jpg"  alt="" width="250"></a>
        </div>
        <div class="info">
            <a href="trimer.php?p_cat=74"><h3>Nothing Earbuds</h3></a>
            
        </div>
        <div class="overlay">
          
        </div>
    </div>
<!-- Trimer End  -->
    
    <div class="box">
        <div class="image">
           <a href="trimer.php?p_cat=74">  <img src="images/boat16.jpg" alt="" width="250"></a>
        </div>
        <div class="info">
          <a href="trimer.php?p_cat=74">  <h3>Boat Earbuds</h3></a>
           
        </div>
        <div class="overlay">
        
        </div>
    </div>

    <div class="box">
        <div class="image">
           <a href="trimer.php?p_cat=74"> <img src="images/nooisee.jpg" alt="" width="200"></a>
        </div>
        <div class="info">
            <a href="trimer.php?p_cat=74"> <h3>Noise Earbuds</h3></a>
           
        </div>
        <div class="overlay">
    </div>
</div>

    <div class="box">
        <div class="image">
            <a href="trimer.php?p_cat=74"><img src="images/oneplear.jpg" alt="" width="200"></a>
        </div>
        <div class="info">
            <a href="trimer.php?p_cat=74"><h3>Oneplus Earbuds</h3></a>
        
        </div>
        <div class="overlay">
    </div>
    </div>


    </div>
</section>
<!--garment section ends-->
<section class="use" id="use">

<h1 class="heading"> <span>HOME APPLIANCES</span> </h1>

<div class="box-container">

    <div class="box">
        <div class="image">
           <a href="trimer.php?p_cat=75"> <img src="images/lg545.jpg"  alt="" width="250"></a>
        </div>
        <div class="info">
            <a href="trimer.php?p_cat=75"><h3>LG 55 Inch</h3></a>
            
        </div>
        <div class="overlay">
          
        </div>
    </div>
<!-- Trimer End  -->
    
    <div class="box">
        <div class="image">
           <a href="trimer.php?p_cat=70">  <img src="images/lgfridge.jpg" alt="" width="200"></a>
        </div>
        <div class="info">
          <a href="trimer.php?p_cat=70">  <h3>LG Fridge</h3></a>
           
        </div>
        <div class="overlay">
        
        </div>
    </div>

    <div class="box">
        <div class="image">
           <a href="trimer.php?p_cat=71"> <img src="images/was.jpg" alt="" width="170"></a>
        </div>
        <div class="info">
            <a href="trimer.php?p_cat=71"> <h3>Samsung Wash Machine</h3></a>
           
        </div>
        <div class="overlay">
    </div>
</div>

    <div class="box">
        <div class="image">
            <a href="trimer.php?p_cat=71"><img src="images/iifb.jpg" alt="" width="200"></a>
        </div>
        <div class="info">
            <a href="trimer.php?p_cat=71"><h3>IFB Wash Machine</h3></a>
        
        </div>
        <div class="overlay">
    </div>
    </div>

     <div class="box">
        <div class="image">
           <a href="trimer.php?p_cat=68"> <img src="images/lggac.jpg"  alt="" width="200"></a>
        </div>
        <div class="info">
            <a href="trimer.php?p_cat=68"><h3>LG Ac 2TON</h3></a>
            
        </div>
        <div class="overlay">
          
        </div>
    </div>

     <div class="box">
        <div class="image">
           <a href="trimer.php?p_cat=75"> <img src="images/sooni.jpg"  alt="" width="200"></a>
        </div>
        <div class="info">
            <a href="trimer.php?p_cat=75"><h3>Sony 42 Inch Tv</h3></a>
            
        </div>
        <div class="overlay">
          
        </div>
    </div>

     <div class="box">
        <div class="image">
           <a href="trimer.php?p_cat=68"> <img src="images/pana.jpg"  alt="" width="200"></a>
        </div>
        <div class="info">
            <a href="trimer.php?p_cat=68"><h3>Panasonic AC</h3></a>
            
        </div>
        <div class="overlay">
          
        </div>
    </div>

     <div class="box">
        <div class="image">
           <a href="trimer.php?p_cat=70"> <img src="images/whirpool.jpg"  alt="" width="250"></a>
        </div>
        <div class="info">
            <a href="trimer.php?p_cat=70"><h3>Whirpool Fridge</h3></a>
            
        </div>
        <div class="overlay">
          
        </div>
    </div>

    
    

    
    
        

    

     

    

    </div>
</section>


<!-- gallery section ends -->

<!-- deal section starts   

<section class="deal" id="deal">

<h1 class="heading"> <span> BEST DEALS </span> </h1>


<div class="icons-container">  -->

<?php

$get_boxes="select * from boxes_section";
$run_box=mysqli_query($con,$get_boxes);
while ($row=mysqli_fetch_array($run_box)) {
    $box_id=$row['box_id'];
    $box_title=$row['box_title'];
    $box_desc=$row['box_desc'];
    $box_icon=$row['box_icon'];
    


  ?>

  <!--  <div class="icons">
        <i class="<?php echo $box_icon; ?>"></i>
        <h3><?php echo $box_title ?></h3>
        <p><?php echo $box_desc ?></p>

    </div>  

    
    <?php } ?> 
</div>

</section>  -->

<!-- deal section ends -->


<!-- newsletter section starts  

<section class="newsletter" id="newsletter">

    <h1>Newsletter</h1>
    <p>Get In Touch For Latest Discounts And Updates</p>
    <form action="contactus.php" method="post">

                  
                        <input type="text" placeholder="Enter Your Name" ><br>
                   
                    
        <input type="email" placeholder="Enter Your Email">

                        <textarea type="txt" placeholder="Enter Your Message"></textarea>
                  
        <input type="submit" class="btn" >
    </form>

</section>
-->
<!-- newsletter section ends -->


<!--
<footer id="footer" class="section footer">
    <div class="container">
      <div class="footer__top">
        <div class="footer-top__box">
          <h3>EXTRAS</h3>
          <a href="#">Brands</a>
          <a href="#">Gift Certificates</a>
          <a href="#">Affiliate</a>
          <a href="#">Specials</a>
          <a href="#">Site Map</a>
        </div>
        <div class="footer-top__box">
          <h3>INFORMATION</h3>
          <a href="#">About Us</a>
          <a href="#">Privacy Policy</a>
          <a href="#">Terms & Conditions</a>
          <a href="#">Contact Us</a>
          <a href="#">Site Map</a>
        </div>
        <div class="footer-top__box">
          <h3>MY ACCOUNT</h3>
          <a href="#">My Account</a>
          <a href="#">Order History</a>
          <a href="#">Wish List</a>
          <a href="#">Newsletter</a>
          <a href="#">Returns</a>
        </div>
        <div class="footer-top__box">
          <h3>CONTACT US</h3>
          <div>
            <span>
              <svg>
                <use xlink:href="./images/sprite.svg#icon-location"></use>
              </svg>
            </span>
            42 Dream House, Dreammy street, 7131 Dreamville, USA
          </div>
          <div>
            <span>
              <svg>
                <use xlink:href="./images/sprite.svg#icon-envelop"></use>
              </svg>
            </span>
            company@gmail.com
          </div>
          <div>
            <span>
              <svg>
                <use xlink:href="./images/sprite.svg#icon-phone"></use>
              </svg>
            </span>
            456-456-4512
          </div>
          <div>
            <span>
              <svg>
                <use xlink:href="./images/sprite.svg#icon-paperplane"></use>
              </svg>
            </span>
            Dream City, USA
          </div>
        </div>
      </div>
    </div>
    <div class="footer__bottom">
      <div class="footer-bottom__box">

      </div>
      <div class="footer-bottom__box">

      </div>
    </div>
    </div>
  </footer>
-->
<!-- Facility Section -->
<section class="facility__section section" id="facility">
      <div class="container">
        <div class="facility__contianer" data-aos="fade-up" data-aos-duration="1200">
          <div class="facility__box">
            <div class="facility-img__container">
              <svg>
                <use xlink:href="sprite.svg#icon-airplane"></use>
              </svg>
            </div>
            <p>FREE SHIPPING WORLD WIDE</p>
          </div>

          <div class="facility__box">
            <div class="facility-img__container">
              <svg>
                <use xlink:href="sprite.svg#icon-credit-card-alt"></use>
              </svg>
            </div>
            <p>100% MONEY BACK GUARANTEE</p>
          </div>

          <div class="facility__box">
            <div class="facility-img__container">
              <svg>
                <use xlink:href="sprite.svg#icon-credit-card"></use>
              </svg>
            </div>
            <p>MANY PAYMENT GATWAYS</p>
          </div>

          <div class="facility__box">
            <div class="facility-img__container">
              <svg>
                <use xlink:href="sprite.svg#icon-headphones"></use>
              </svg>
            </div>
            <p>24/7 ONLINE SUPPORT</p>
          </div>
        </div>
      </div>
    </section>
    




<section class="section newsletter" id="contact">
      <div class="container">
        <div class="newsletter__content">
          <div class="newsletter__data">
          <h3>AUTHORISE AND BEST DEALER FROM PAST 25 YEARS</h3> 
           
          </div>
         
        </div>
      </div>
    </section>





<footer class="footer">
  <div class="footer__top">
    <div class="footer-top__box">
      <h3>EXTRAS</h3>
      <a href="#">Brands</a>
      <a href="#">Gift Certificates</a>
      <a href="#">Affiliate</a>
      <a href="#">Specials</a>
      <a href="#">Site Map</a>
    </div>
    <div class="footer-top__box">
      <h3>INFORMATION</h3>
      <a href="#">About Us</a>
      <a href="#">Privacy Policy</a>
      <a href="#">Terms & Conditions</a>
      <a href="#">Contact Us</a>
      <a href="#">Site Map</a>
    </div>
    <div class="footer-top__box">
      <h3>MY ACCOUNT</h3>
      <a href="#">My Account</a>
      <a href="#">Order History</a>
      <a href="#">Wish List</a>
      <a href="#">Newsletter</a>
      <a href="#">Returns</a>
    </div>
    <div class="footer-top__box">
      <h3>CONTACT US</h3>
      <div>
        <span>
          <svg>
            <use xlink:href="sprite.svg#icon-location"></use>
          </svg>
        </span>
        Dadra Demni Road (D.N.H && DD)
      </div>
      <div>
        <span>
          <svg>
            <use xlink:href="sprite.svg#icon-envelop"></use>
          </svg>
        </span>
        shivanielectronics@gmail.com
      </div>
      <div>
        <span>
          <svg>
            <use xlink:href="sprite.svg#icon-phone"></use>
          </svg>
        </span>
        7016777917
      </div>
      <div>
        <span>
          <svg>
            <use xlink:href="sprite.svg#icon-paperplane"></use>
          </svg>
        </span>
       Silvassa
      </div>
    </div>
  </div>
</footer>









<!-- footer section starts  -->

<!-- footer section starts  -->

<!--

  <footer class="footer" id="footer">
     <div class="cuntainer">
        <div class="wolf">
           
            <div class="footer-ol">
                <h4>company</h4>
                <ul>
                    <li><a href="#">about us</a></li><br><br>
                    <li><a href="#">our services</a></li><br><br>
                    <li><a href="#">privacy policy</a></li><br><br>
                    <li><a href="#">affiliate program</a></li><br><br>
                </ul>
            </div>
            <div class="footer-ol">
                <h4>get help</h4>
                <ul>
                    <li><a href="#">FAQ</a></li><br><br>
                    <li><a href="#">shipping</a></li><br><br>
                    <li><a href="#">returns</a></li><br><br>
                    <li><a href="#">order status</a></li><br><br>
                    <li><a href="#">payment options</a></li><br><br>
                </ul>
            </div>
            <div class="footer-ol">
                <h4>online shop</h4>
                <ul>
                    <li><a href="#">Saloon Products</a></li><br><br>
                    <li><a href="#">Parlor Prtoducts</a></li><br><br>
                    <li><a href="#">Garments</a></li><br><br>
                    <li><a href="#">Others</a></li><br><br>
                </ul>
            </div>
            <div class="footer-ol">
                <h4>follow us</h4>
                <div class="social-links">
                    <a href="#"><i class="fab fa-facebook-f fa-x" style="color: #3b5998;"></i></a>
                    <a href="#"><i class="fab fa-twitter fa-x" style="color: #0084b4;"></i></a>
                    <a href="#"><i class="fab fa-instagram fa-x" style="color:   #E1306C;"></i></a>
                    <a href="#"><i class="fab fa-linkedin-in fa-x" style="color:  #0077B5 ;"></i></a>

                </div>
            </div>
            <div class="pal">
                
            </div>
            <p class="credit">Copyright &copy; <span>2015-2024</span> | all rights reserved. | <span>Designed By GWS Tutor</span></p>
        </div>
     </div>
  </footer>

-->

<!-- footer section ends -->
<!-- footer section ends -->

  </nav></div></header>  


<!-- jquery cdn link  -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- owl carousel js file cdn link  -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>

<!-- custom js file link  -->
<script src="main/js.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>  
<script>
var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";

}
</script>



</body>
</html>

