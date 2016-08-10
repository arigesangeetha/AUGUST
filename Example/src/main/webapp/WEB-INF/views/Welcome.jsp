<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>E K A R T</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="<c:url value="/resources/js/bootstrap.min.js"></c:url>"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
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
	<!-- carousel ############################################################################## -->
	<div>
		<div id="carousel-home" class="carousel slide">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li class=" item1 active"></li>
				<li class="item2"></li>
				<li class="item3"></li>
				<li class="item4"></li>
				<li class="item5"></li>
				<li class="item6"></li>
			</ol>
			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img
						src="<c:url value="/resources/images/corousel/macbookpro pics.jpg"></c:url>"
						alt="Apple">
					<div class="carousel-caption">
						<span></span>
					</div>
				</div>
				<div class="item ">
					<img
						src="<c:url value="/resources/images/corousel/smart.jpg"></c:url>"
						alt="Apple">
					<div class="carousel-caption">
						<span></span>
					</div>
				</div>
				<div class="item">
					<img
						src="<c:url value="/resources/images/corousel/nexus.jpg"></c:url>"
						alt="Sony">
					<div class="carousel-caption">
						<span></span>
					</div>
				</div>
				<div class="item">
					<img
						src="<c:url value="/resources/images/corousel/DSLR.jpg"></c:url>"
						alt="HP">
					<div class="carousel-caption">
						<span></span>
					</div>
				</div>
				<div class="item">
					<img
						src="<c:url value="/resources/images/corousel/gamingconsole.jpg"></c:url>"
						alt="Dell">
					<div class="carousel-caption">
						<span></span>
					</div>
				</div>
				<div class="item">
					<img
						src="<c:url value="/resources/images/corousel/canon.jpg"></c:url>"
						alt="Dell">
					<div class="carousel-caption">
						<span></span>
					</div>
				</div>
			</div>
			<!-- Controls -->
			<a class="left carousel-control" role="button" href="#carousel-home"
				style="color: black"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control " href="#carousel-home"
				role="button" style="color: black"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
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
						class="w3-hover-none">Add to Cart</a></li>
				</c:forEach>
			</ul>
		</div>
	</c:if>

	<!-- ################################################################################################## -->


	<script>
		$(document).ready(function() {
			// Activate Carousel
			$("#carousel-home").carousel();

			// Enable Carousel Indicators
			$(".item1").click(function() {
				$("#carousel-home").carousel(0);
			});
			$(".item2").click(function() {
				$("#carousel-home").carousel(1);
			});
			$(".item3").click(function() {
				$("#carousel-home").carousel(2);
			});
			$(".item4").click(function() {
				$("#carousel-home").carousel(3);
			});
			$(".item5").click(function() {
				$("#carousel-home").carousel(4);
			});
			$(".item6").click(function() {
				$("#carousel-home").carousel(5);
			});

			// Enable Carousel Controls
			$(".left").click(function() {
				$("#carousel-home").carousel("prev");
			});
			$(".right").click(function() {
				$("#carousel-home").carousel("next");
			});
		});
	</script>
</body>



</html>
