<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

  <title>Bootstrap Demo</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
      height:400;
  }
  </style>

</head>
<body>

<nav class="navbar navbar" style=background-color:#666666>
<nav class="navbar navbar-inverse"  >
  <div class="container-fluid" >
    <div class="navbar-header" >
      <a class="navbar-brand" href="#">SHOPPINGCART</a>
    </div>
    <ul class="nav navbar-nav" >
      <li class="active"><a href="">Home</a></li>
      
    </ul>
    <div class="collapse navbar-collapse" style=color:red >
				<ul class="nav navbar-nav navbar-right">
				
					<li><a href="login"> <span
							class="glyphicon glyphicon-user"></span> Sign Up</a></li>
					
				</ul>
			</div>
	
  </div>

 </nav>

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


  <div class="row">
    <div class="col-sm-3" style="background-color:#666666;"><a href="productsInfo?name=10001"><img src=<c:url value="/resources/Images/one.jpg" /> alt="one" width="200" height="200"></a></div>
    <div class="col-sm-3" style="background-color:#666666;"><a href="productsInfo?name=10001"><img src=<c:url value="/resources/Images/two.jpg" /> alt="two" width="200" height="200"></a></div>
    <div class="col-sm-3" style="background-color:#666666;"><a href="productsInfo?name=10002"><img src=<c:url value="/resources/Images/three.jpg" /> alt="three" width="200" height="200"></a></div>
    <div class="col-sm-3" style="background-color:#666666;"><a href="productsInfo?name=10003"><img src=<c:url value="/resources/Images/four.jpg" /> alt="four" width="200" height="200"></a></div>
  </div>
<div style="width:100%; height:40;"></div>
<!-- ################################################################################################## -->
<div class="w3-top">
		<nav>
			<ul class="w3-navbar w3-dark-grey w3-large  w3-card-4 ">
				<li><a href="" class="w3-hover-none"><i class="fa fa-home"></i>
						E K A R T </a></li>
				<li style="float: right"><a href="#" class="w3-hover-none"><i
						class="fa fa-user-plus"></i></a></li>
				<li style="float: right"><a href="#" class="w3-hover-none"><i
						class="fa fa-sign-in"></i></a></li>
			</ul>

<c:if test="${!empty categoryList}">
				<div>
					<ul
						class="w3-navbar w3-light-grey w3-round w3-small menu w3-card-4 "
						Style="width: 70%; margin-left: 15%; margin-top: -10px">
						<c:forEach items="${categoryList}" var="category">
							<li><a href="${category.name}" class="w3-hover-none">${category.name}</a></li>
						</c:forEach>
						<li style="float: right"><a href="${userId}/viewcart" class="w3-hover-none"><i
								class="fa fa-shopping-cart"></i> View Cart</a></li>
						<li style="float: right"><a href="#" class="w3-hover-none"><i
								class="fa fa-user"></i> Hi, ${name}</a></li>
					</ul>
				</div>
			</c:if>
			</nav>
			</div>
<!-- ################################################################################################## -->


	<div class="w3-container w3-dark-grey w3-card-4 w3-round"
		style="width: 100%; height: 200px; margin-top: 5px"></div>


			
<!-- ################################################################################################## -->
			
	<c:if test="${!empty productList}">
		<div>
			<ul>
				<c:forEach items="${productList}" var="product">
					<li><a href="#${product.name}" class="w3-hover-none"><img alt="${product.id}" src="<c:url value="/resources/Images/product/${product.id}.jpg"></c:url>"></a></li>
					<li><a href="${userId}/addtoCart/${product.id}"
						>Add to Cart</a></li>
				</c:forEach>
			</ul>
		</div>
	</c:if>

	<!-- ################################################################################################## -->


</nav>
</body>
</html>
