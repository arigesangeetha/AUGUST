<!DOCTYPE html>
<html>
<head>
    <title>Bootstrap Carousel</title>
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>

<style>
.carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
      height:400;
  }
h3{
    font-size: 20px;
    font-family:Verdana;
    color: #515151;
    
}

</style>

</head>
<body>
<table>
<div class="container">
<h1>Bootstrap Carousel demo</h1>
<!--The main div for carousel-->
<tr><div id="carousel-demo" class="carousel slide" data-ride="carousel" data-interval="2000">
 <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-demo" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-demo" data-slide-to="1"></li>
    <li data-target="#carousel-demo" data-slide-to="2"></li>
    <li data-target="#carousel-demo" data-slide-to="3"></li>
  </ol>
  
  <!-- Sliding images statring here --> 
   <div class="carousel-inner"> 
    <div class="item active"> 
      <img src="images/banana.jpg" alt="banana"> 
      <div class="carousel-caption">
       <h3>The Banana slide</h3>
       <p>Banana is useful for health</p>
      </div>
    </div> 
    <div class="item"> 
      <img src="images/currant.jpg" alt="currant"> 
      <div class="carousel-caption">
       <h3>The currant slide</h3>
       <p>Text here</p>
      </div>      
   </div> 
    <div class="item"> 
      <img src="images/mango.jpg" alt="mango"> 
      <div class="carousel-caption">
       <h3>The Mangos</h3>
       <p>Text here</p>
      </div>          
    </div>
    <div class="item"> 
      <img src="images/strawberries.jpg" alt="strawberries">
      <div class="carousel-caption">
       <h3>The strawberries</h3>
       <p>Text here</p>
      </div>           
    </div> 
   </div>  
  </tr>
  <tr>
  <div class="container">
  <!-- Next / Previous controls here -->
  <a class="left carousel-control" href="#carousel-demo" data-slide="prev">
    <span class="icon-prev"></span>
  </a>
  <a class="right carousel-control" href="#carousel-demo" data-slide="next">
    <span class="icon-next"></span>
  </a>
 <div>

 </div> 
  </div>
 

</div>

<div id="carousel-demo" class="carousel slide" data-ride="carousel">
  <!-- Sliding images statring here --> 
   <div class="carousel-inner"> 
    <div class="item"> 
      <img src="images/banana.jpg" alt="banana"> 
    </div> 
    <div class="item"> 
      <img src="images/currant.jpg" alt="currant"> 
   </div> 
    <div class="item"> 
      <img src="images/mango.jpg" alt="mango"> 
    </div>
    <div class="item active"> 
      <img src="images/strawberries.jpg" alt="strawberries"> 
    </div> 
     
  </div> 
  <!-- Next / Previous controls here -->
  <a class="left carousel-control" href="#carousel-demo" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
  </a>
  <a class="right carousel-control" href="#carousel-demo" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
  </a>
 
  </tr>
 

</div>
</table>
</body>
</html>
