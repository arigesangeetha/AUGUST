<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!--*****************************************************************************************************************************************-->


<html ng-app="Example">
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
<script
	src="//ajax.googleapis.com/ajax/libs/angularjs/1.2.17/angular.min.js"></script>
<script type="text/javascript">


</script>
<!-- 
  ######################################################## STYLE ########################################################
 -->
<style>
.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 70%;
	margin: auto;
	height: 400;
}
</style>
<!-- ##########################################################################################################################
 -->

</head>
<body>
	<!-- 
######################################################### HEADER ##########################################################
 -->
	<nav class="navbar navbar" style="background-color: #666666">
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="#">SHOPPINGCART</a>
				</div>
				<ul class="nav navbar-nav">
					<li class="active"><a href=""><span
							class="glyphicon glyphicon-home"></span>Home</a></li>

<!-- *********************************************************** SEARCH *****************************************************				
 -->  
 
<div class="slinput" ng-init="">
    <i class="fa fa-search left-icon"></i> 
    <input placeholder="Search here" ng-model="searchInputVal"/> 
    <i ng-class="{'fa' : true, 'fa-close' : true, 'right-icon' : true, active : (searchInputVal.length > 0)}" ng-click="searchInputVal = ''"></i>
</div>
  
 <!--  ****************************************************** END SEARCH ***********************************************************
  -->
 
					<c:choose>
					<c:when test="${LoggedIn}">

						<li style="float: right"><a href="perform_logout"
							class="w3-hover-none"><i class="glyphicon glyphicon-log-out"></i></a></li>
						<c:choose>	
						<c:when test="${!Administrator}">	
						<li style="float: right"><a href="viewcart/${userId}"
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
<!-- ##############################################################################################################################				
 -->				
				
		<c:choose>	
		<c:when test="${!Administrator}">	
			<!-- Category List -->
			<c:if test="${!empty categoryList}">
				<div>
				
						<ul class="nav navbar-nav">
					
						
						<c:forEach items="${categoryList}" var="category">
							<li><a href="${category.name}" class="w3-hover-none"><i class="fa fa-list-alt" aria-hidden="true"></i> ${category.name}</a></li>
						</c:forEach>
					
					</ul>
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
	</nav>
	</div>
	
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
					<div class="item active" style="width: 100%; height: 400">
						<img src=<c:url value="/resources/Images/one.jpg" /> alt="one">
					</div>

					<div class="item" style="width: 100%; height: 400">
						<img src=<c:url value="/resources/Images/two.jpg" /> alt="two">
					</div>

					<div class="item" style="width: 100%; height: 400">
						<img src=<c:url value="/resources/Images/three.jpg" /> alt="four">
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
			<br> <br>
		</div>
		<!-- ################################################################################################## -->


		<div class="row">
			<div class="col-sm-3" style="background-color: #666666;">
				<a href="${product.id}"><img
					src=<c:url value="/resources/Images/one.jpg" /> alt="one"
					width="200" height="200"></a>
			</div>
			<div class="col-sm-3" style="background-color: #666666;">
				<a href="${product.id}"><img
					src=<c:url value="/resources/Images/two.jpg" /> alt="two"
					width="200" height="200"></a>
			</div>
			<div class="col-sm-3" style="background-color: #666666;">
				<a href="${product.id}"><img
					src=<c:url value="/resources/Images/three.jpg" /> alt="three"
					width="200" height="200"></a>
			</div>
			<div class="col-sm-3" style="background-color: #666666;">
				<a href="${product.id}"><img
					src=<c:url value="/resources/Images/four.jpg" /> alt="four"
					width="200" height="200"></a>
			</div>
		</div>
		<div style="width: 100%; height: 40;"></div>



		<!-- ################################################### Product List ############################################### -->
		<c:choose>
			<c:when test="${!Administrator}">
				<c:if test="${!empty productList}">
					<div>
						<ul>
							<c:forEach items="${productList}" var="product">
								<li><a href=" ${product.name}" class="w3-hover-none"><img
										alt="${product.id}"
										src="<c:url value="/resources/images/product/${product.id}.jpg"></c:url>"></a></li>
								<c:choose>
									<c:when test="${LoggedIn}">
										<li><a href="addtoCart/${userId}/${product.id}"
											class="w3-hover-none">Add to Cart</a></li>
									</c:when>
								</c:choose>
							</c:forEach>
						</ul>
					</div>
				</c:if>
			</c:when>
		</c:choose>

		<!--############################################### Product List End ##############################################-->

		<!-- #################################################  FOOTER ###################################################-->



		<footer class="footer-distributed w3-card-4 w3-black"
			style="opacity: 0.9">
			<div class="footer-left">
				<p>Payment Options</p>
				<a href="#"><i class="glyphicon glyphicon-paypal" aria-hidden="true"></i> </a> . <a
					href="#"><i class="glyphicon glyphicon-cc-amex" aria-hidden="true"></i> </a> . <a
					href="#"><i class="glyphicon glyphicon-cc-mastercard" aria-hidden="true"></i>
				</a> . <a href="#"><i class="glyphicon glyphicon-cc-visa" aria-hidden="true"></i>
				</a> . <a href="#"><i class="glyphicon glyphicon-credit-card" aria-hidden="true"></i>
				</a> . <a href="#"><i class="fa fa-google-wallet" aria-hidden="true"></i>
				</a> . <a href="#"><i class="fa fa-cc-stripe" aria-hidden="true"></i>
				</a>
				<p></p>
				<p></p>
				<p>
					E K A R T <i class="fa fa-copyright" aria-hidden="true"> 2016</i>
				</p>
				<p></p>
				<div class="footer-icons">
					<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
						class="fa fa-twitter"></i></a> <a href="#"><i
						class="fa fa-linkedin"></i></a> <a href="#"><i
						class="fa fa-github"></i></a>
				</div>
			</div>
			<div class="footer-center">
				<div>
					<i class="fa fa-map-marker"></i>
					<p>
						<span>21 Revolution Street</span> Paris, France
					</p>
				</div>
				<div>
					<i class="fa fa-phone"></i>
					<p>+1 555 123456</p>
				</div>
				<div>
					<i class="fa fa-envelope"></i>
					<p>
						<a href="mailto:support@company.com">support@ekart.com</a>
					</p>
				</div>
			</div>
			<div class="footer-right">
				<p class="footer-company-about">
					<span>About the company</span> <a
						href="http://www.secura.e-sim.org"
						title="Summus, website template creation">Summus</a> is a web
					design and development studio. We build responsive HTML5 and CSS3
					templates, integrating best web design practices and up-to-date web
					technologies to create great user experiences. We love what we do
					and we hope you do too!
				</p>
			</div>
		</footer>

		<!-- ################################################### FOOTER END################################################# -->
	
</body>
</html>
