<?php  

include 'components/connect.php';

if(isset($_COOKIE['user_id'])){
   $user_id = $_COOKIE['user_id'];
}else{
   $user_id = '';
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>About Us</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<?php include 'components/user_header.php'; ?>

<!-- about section starts  -->

<section class="about">

   <div class="row">
      <div class="image">
         <img src="images/about-img.svg" alt="">
      </div>
      <div class="content">
         <h3>why choose us?</h3>
         <p>We customize our services to meet the unique needs of your property, ensuring optimal management and performance.</p>
         <a href="contact.html" class="inline-btn">contact us</a>
      </div>
   </div>

</section>

<!-- about section ends -->

<!-- steps section starts  -->

<section class="steps">

   <h1 class="heading">3 simple steps</h1>

   <div class="box-container">

      <div class="box">
         <img src="images/step-1.png" alt="">
         <h3>search property</h3>
         <p>"Discover Your Dream Home with Ease: Effortless Property Search Tailored Just for You!".</p>
      </div>

      <div class="box">
         <img src="images/step-2.png" alt="">
         <h3>contact agents</h3>
         <p>"Connecting with Your Ideal Home is Just a Click Away Contact Our Agent Easily!"</p>
      </div>

      <div class="box">
         <img src="images/step-3.png" alt="">
         <h3>enjoy property</h3>
         <p>"Indulge in the Luxury of Homeownership Where Every Day Feels Like a Vacation!".</p>
      </div>

   </div>

</section>

<!-- steps section ends -->

<!-- review section starts  -->

<section class="reviews">

   <h1 class="heading">client's reviews</h1>

   <div class="box-container">

      <div class="box">
         <div class="user">
            <img src="images/R.jpeg" alt="">
            <div>
               <h3>ROWAN</h3>
               <div class="stars">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star-half-alt"></i>
               </div>
            </div>
         </div>
         <p>"Exceptional service! The real estate management team went above and beyond to make our property journey seamless. From property maintenance to timely communication, they exceeded our expectations. Highly recommend!"</p>
      </div>

      <div class="box">
         <div class="user">
            <img src="images/pic-2.png" alt="">
            <div>
               <h3>KASHYAPI</h3>
               <div class="stars">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star-half-alt"></i>
               </div>
            </div>
         </div>
         <p>"I couldn't be happier with the support we received from the real estate management team. They truly understand the market, and their personalized approach made us feel valued. Outstanding service throughout the entire process."</p>
      </div>

      <div class="box">
         <div class="user">
            <img src="images/pic-3.png" alt="">
            <div>
               <h3>RAM</h3>
               <div class="stars">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star-half-alt"></i>
               </div>
            </div>
         </div>
         <p>"The real estate management team has been instrumental in making our property investment a success. Their guidance, market insights, and dedication to ensuring the best returns on our investment have been invaluable. Highly recommended!"</p>
      </div>

      <div class="box">
         <div class="user">
            <img src="images/pic-4.png" alt="">
            <div>
               <h3>SATYA</h3>
               <div class="stars">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star-half-alt"></i>
               </div>
            </div>
         </div>
         <p>"Thoroughly impressed with the real estate management services. From property marketing to tenant relations, every aspect is handled with precision. The team's commitment to excellence shines through in every interaction. Great job!"</p>
      </div>

      <div class="box">
         <div class="user">
            <img src="images/pic-5.png" alt="">
            <div>
               <h3>SHELAM</h3>
               <div class="stars">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star-half-alt"></i>
               </div>
            </div>
         </div>
         <p>"Efficient, effective, and excellent service! The real estate management team has consistently demonstrated a high level of professionalism. Their proactive approach and timely responses make them a standout choice for property management."</p>
      </div>

      <div class="box">
         <div class="user">
            <img src="images/p.jpg" alt="">
            <div>
               <h3>PEPPER</h3>
               <div class="stars">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star-half-alt"></i>
               </div>
            </div>
         </div>
         <p>"A reliable partner in property management. The team's attention to detail, transparency, and commitment to customer satisfaction set them apart. It's been a pleasure working with professionals who prioritize their clients' needs."</p>
      </div>

   </div>

</section>

<!-- review section ends -->










<?php include 'components/footer.php'; ?>

<!-- custom js file link  -->
<script src="js/script.js"></script>

</body>
</html>