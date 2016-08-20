<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!--*****************************************************************************************************************************************-->


<html>
<head>
<title>Bootstrap Demo</title>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="<c:url value="/resources/css/my.css" />" rel="stylesheet">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<!-- 
  ######################################################## STYLE ########################################################
 -->
<style>

.carousel {
    margin-bottom: 0;
	padding: 20px 40px 20px 40px;
	style=background-color:
#808080
}
.carousel-indicators li {
	background: #c0c0c0;
}
.carousel-indicators .active {
background: #333333;
}
.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 70%;
	margin: auto;
	height:400 ;
}
.bg-danger{background:  #c0c0c0;}
.container-fluid{background: #000000;}
</style>
</head>
<body >
<div class="bg-danger" style=background-color:#666666>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">
      <span class="glyphicon glyphicon-shopping-cart"></span> Shopping Cart
        </a></div>
		<ul class="nav navbar-nav">
      <li class="active"><a href="#">	
				<span class="glyphicon glyphicon-home"></span>Home</a></li></ul>
							

<!-- ##############################################################################################################################				
 -->				
	 <ul class="nav navbar-nav navbar-right">
	<c:choose>
					<c:when test="${LoggedIn}">

						<li style="float: right"><a href="perform_logout"
							class="w3-hover-none"><i class="glyphicon glyphicon-log-out"></i></a></li>
						<c:choose>	
						<c:when test="${!Administrator}">	
						<li style="float: right"><a href="viewcart"
							class="w3-hover-none"><i class="glyphicon glyphicon-shopping-cart"></i></a></li>
						</c:when>
						</c:choose>

						<li style="float: right"><a href="#" class="w3-hover-none"><i
								class="glyphicon glyphicon-user"></i> Hi, ${name}</a></li>
					</c:when>

					<c:otherwise>
						<div class="collapse navbar-collapse" style="color: red">
					<ul class="nav navbar-nav navbar-right">

						<li class="active"><a href="Register"> <span
								class="glyphicon glyphicon-log-in"></span>  Register
						</a></li>
						<li class="active"><a href="login"> <span
								class="glyphicon glyphicon-user"></span>Sign up
						</a></li>

					</ul>
				</div>
					</c:otherwise>
				</c:choose>
			</ul> 
 </div>

 
 </nav>
 <!--  ****************************************************** END SEARCH ***********************************************************
  -->
 <ul >
							
		<c:choose>	
		<c:when test="${!Administrator}">	
			<!-- Category List -->
			<c:if test="${!empty categoryList}">
				
				
						<div class="panel-heading">
					
						
						<c:forEach items="${categoryList}" var="category">
							<a  href="name" class="w3-hover-none"><i class="glyphicon glyphicon-list-alt" aria-hidden="true"></i> ${category.name}</a>
						</c:forEach>
					
					
				</div>
			</c:if>	
		</c:when>	
	
		<c:when test="${Administrator}">
			<ul class="w3-navbar w3-light-grey w3-round w3-small menu w3-card-4 " 
			Style="width: 70%; margin-left: 15%; margin-top:-2px;">
				<li><a href="product"class="w3-hover-none"><i class="glyphicon glyphicon-list"
					aria-hidden="true"></i> Products</a></li>
				<li><a href="category" class="w3-hover-none"><i class="glyphicon glyphicon-list"
					aria-hidden="true"></i> Category</a></li>
				<li><a href="supplier" class="w3-hover-none"><i class="glyphicon glyphicon-list"
					aria-hidden="true"></i> Supplier</a></li>
			</ul>
		</c:when>
	</c:choose>		
	
</ul>

<!-- ##############################################################################################################################				
 -->	
 <c:choose>
		<c:when test="${IfViewCartClicked}">
			<c:import url="/WEB-INF/views/cart.jsp">
			</c:import>
		</c:when>

		<c:when test="${IfPaymentClicked}">
			<c:import url="/WEB-INF/views/Payment.jsp">
			</c:import>
		</c:when>
	</c:choose>			
	
	
	<!-- Category List End -->
	<c:choose>
	<c:when test="${IfLoginClicked}">
		<c:import url="/WEB-INF/views/login.jsp">
		</c:import>
	</c:when>
	
	<c:when test="${IfRegisterClicked}">
		<c:import url="/WEB-INF/views/register.jsp">
		</c:import>
	</c:when>
	</c:choose>

	<c:choose>
			<c:when test="${ProductPageClicked}">
				<c:import url="/WEB-INF/views/addproduct.jsp"></c:import>
			</c:when>
		</c:choose>
		<c:choose>
			<c:when test="${CategoryPageClicked}">
				<c:import url="/WEB-INF/views/addcategory.jsp"></c:import>
			</c:when>
		</c:choose>
		<c:choose>
			<c:when test="${SupplierPageClicked}">
				<c:import url="/WEB-INF/views/addsupplier.jsp"></c:import>
			</c:when>
		</c:choose>
				
				
				
				
				
				

			

		
		<!-- #########################################################################################################################
 -->
<c:choose>
		<c:when test="${!Administrator}">
			<c:if test="${empty HideOthers}">
				<div>
			
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
					<li data-target="#myCarousel" data-slide-to="3"></li>
					<li data-target="#myCarousel" data-slide-to="4"></li>
				</ol>

				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox">
					<div class="item active" style="width: 100%; height: 400">
						<img src=<c:url value="/resources/Images/co/k.jpg" /> alt="one">
					</div>

					<div class="item" style="width: 100%; height: 400">
						<img src=<c:url value="/resources/Images/co/kk.jpg" /> alt="two">
					</div>

					<div class="item" style="width: 100%; height: 400">
						<img src=<c:url value="/resources/Images/co/kkk.jpg" /> alt="four">
					</div>
					<div class="item" style="width: 100%; height: 400">
						<img src=<c:url value="/resources/Images/co/kkkk.jpg" /> alt="four">
					</div>
					<div class="item" style="width: 100%; height: 400">
						<img src=<c:url value="/resources/Images/co/k.jpg" /> alt="four">
					</div>

				</div>

				<!-- Left and right controls -->
				<a class="left carousel-control" href="#myCarousel" role="button"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#myCarousel" role="button"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</div>

		<div>
			<br> 
			</div>
			</c:if>
		</c:when>
	</c:choose>
		
		<!--  ****************************************************** END SEARCH ***********************************************************
  -->
  
  
    
		<!-- ################################################### Product List ############################################### -->
		<c:if test="${empty HideOthers}">
		<c:choose>
			<c:when test="${!Administrator}">
				<c:if test="${!empty productList}">
					<div>
						<!-- <ul> -->
						<div class="row w3-card-8 w3-margin" style="margin-bottom: 0px">
							<br>
							<c:forEach items="${productList}" var="product">
								<div class="col-xs-2 ">
									<div class="thumbnail">
										<img height="150px" width="150px" alt="${product.id}"
											src="<c:url value="/resources/images/product/${product.id}.jpg"></c:url>">
										<div class="caption">
											<p>
												${product.name}
												<c:choose>
													<c:when test="${LoggedIn}">
														<form action="addtoCart/${userId}/${product.id}">
															<input type="number" value="1" name="quantity"
																class="btn btn-xs btn-primary   col-xs-6 ">
															<input type="submit" value="Add" class="btn btn-xs col-xs-6 btn-primary">
														</form>
														
													</c:when>
												</c:choose>
											</p>

										</div>
									</div>
								</div>
								</c:forEach>
						</div>
						
					</div>
				</c:if>
			</c:when>
		</c:choose>
	</c:if>



		<!--############################################### Product List End ##############################################-->


		
	
	</div>
	
</body>
</html>
