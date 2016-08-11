<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
<head>

  <title>Bootstrap Demo</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <!-- 
  ######################################################## STYLE ########################################################
 -->  <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
      height:400;
  }
  </style>
<!-- ##########################################################################################################################
 -->
 
 </head>
<body><!-- 
######################################################### HEADER ##########################################################
 -->
 <nav class="navbar navbar" style=background-color:#666666>
<nav class="navbar navbar-inverse"  >
  <div class="container-fluid" >
    <div class="navbar-header" >
      <a class="navbar-brand" href="#">SHOPPINGCART</a>
    </div>
    <ul class="nav navbar-nav" >
      <li class="active"><a href="">Home</a></li>
     <c:if test="${!empty categoryList}">
				
						<c:forEach items="${categoryList}" var="category">
							<li><a href="${category.name}">${category.name}</a></li>
						</c:forEach>
						<li  class="collapse navbar-collapse"><a href="${userId}/viewcart" class="fa fa-shopping-cart" >
								 View Cart</a></li>
						<li class="collapse navbar-collapse"><a href="#" ><i
								></i> Hi, ${name}</a></li>
					
			</c:if>
    </ul>
    <div class="collapse navbar-collapse" style=color:red >
				<ul class="nav navbar-nav navbar-right">
				
					<li><a href="login"> <span
							class="glyphicon glyphicon-user"></span> Sign Up</a></li>
					
				</ul>
			</div>
	
  </div>

 </nav>
  <!-- #########################################################################################################################
 -->
 
 <div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active" style="width:100%; height:400">
        <img src=<c:url value="/resources/Images/one.jpg" /> alt="one">
      </div>

      <div class="item" style="width:100%; height:400">
        <img src=<c:url value="/resources/Images/two.jpg" /> alt="two">
      </div>
    
      <div class="item" style="width:100%; height:400">
        <img src=<c:url value="/resources/Images/three.jpg" /> alt="four">
      </div>

    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

<div><br><br></div>
<!-- ################################################################################################## -->


  <div class="row">
    <div class="col-sm-3" style="background-color:#666666;"><a href="${product.id}"><img src=<c:url value="/resources/Images/one.jpg" /> alt="one" width="200" height="200"></a></div>
    <div class="col-sm-3" style="background-color:#666666;"><a href="${product.id}"><img src=<c:url value="/resources/Images/two.jpg" /> alt="two" width="200" height="200"></a></div>
    <div class="col-sm-3" style="background-color:#666666;"><a href="${product.id}"><img src=<c:url value="/resources/Images/three.jpg" /> alt="three" width="200" height="200"></a></div>
    <div class="col-sm-3" style="background-color:#666666;"><a href="${product.id}"><img src=<c:url value="/resources/Images/four.jpg" /> alt="four" width="200" height="200"></a></div>
  </div>
<div style="width:100%; height:40;"></div>
<!-- ################################################################################################## -->


<c:if test="${!empty productList}">
		<div class="row">
		
			<ul>
				<c:forEach items="${productList}" var="product">
					<li><a href="#${product.name}" class="w3-hover-none"><img alt="${product.id}" src="<c:url value="/resources/Images/product/${product.id}.jpg"></c:url>"></a></li>
					<li><a href="${userId}//addtoCart//${product.id}">Add to Cart</a></li>
				</c:forEach>
			</ul>
			
		</div>
	</c:if>
<div style="width:5%; height:5%;"></div>
	

</nav>
</body>
</html>
