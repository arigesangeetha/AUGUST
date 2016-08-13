<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <title>Bootstrap Example</title>
 
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
h1 {
    color: white;
    text-shadow: 1px 1px 2px black, 0 0 25px blue, 0 0 5px darkblue;
     text-align: center;
     font-size:70px;
}
.a{
box-shadow: 15px 15px #00ffff;
width: 320px;
    height: 100px;
    padding: 20px;
    background-color: #0000ff;
     color: white;
     font-size: 26px;
   
    }
</style>
</head>
<body >


  <h1>welcome admin</h1>
 <!--  #################################################################################################################################
  --> 
  
  <nav>
		<ul class="w3-navbar w3-card-4 w3-light-grey w3-left-align w3-top">
			<li class="w3-hide-medium w3-hide-large w3-black w3-opennav w3-right">
				<a href="javascript:void(0);" onclick="myFunction()"><i
					class="fa fa-caret-square-o-down" aria-hidden="true"></i></a></li>
			<li><a class="w3-cyan " href="#"><i class="fa fa-home"></i>
					E K A R T </a></li>
			<li class="w3-hide-small"><a href="product"
				style="display: inline-block"><i class="fa fa-list"
					aria-hidden="true"></i> Products</a></li>
			<li class="w3-hide-small"><a href="category"
				style="display: inline-block"><i class="fa fa-list"
					aria-hidden="true"></i> Category</a></li>
			<li class="w3-hide-small"><a href="supplier"
				style="display: inline-block"><i class="fa fa-list"
					aria-hidden="true"></i> Supplier</a></li>
			<li class="w3-hide-small" style="float: right"><a href="#"><i
					class="fa fa-sign-out"></i> Sign Out</a></li>	
		</ul>
		<div id="demo" class="w3-hide w3-card-8 w3-hide-large w3-hide-medium">
			<ul class="w3-navbar w3-left-align w3-card-8 w3-light-grey">
				<li><a href="product" style="display: inline-block"><i
						class="fa fa-list" aria-hidden="true"></i> Products</a></li>
				<li><a href="category" style="display: inline-block"><i
						class="fa fa-list" aria-hidden="true"></i> Category</a></li>
				<li><a href="supplier" style="display: inline-block"><i
						class="fa fa-list" aria-hidden="true"></i> Supplier</a></li>
				<li style="float: right"><a href="#"><i
						class="fa fa-sign-out"></i> Sign Out</a></li>
			</ul>
		</div>
	</nav>
<!-- ################################################################################################################################
   -->
   
   <table>
 <tr> <form action="product">
 
    <button type="submit" class="a" >Add product</button>
  </form></tr>
   <tr><form action="category">
<button type="submit" class="a">Add Category</button>
</form></tr>
  
   <tr><form action="supplier">
<button type="submit" class="a">Add supplier</button>

</form></tr>
</table>
 
 <!-- ################################################################################################################################
   -->
 
  

<div>
<c:choose>
    <c:when test="${ProductPageClicked}">
       <c:import url="/WEB-INF/views/addproduct.jsp"></c:import>
    </c:when>
    <c:otherwise>
       
    </c:otherwise>
</c:choose>
<c:choose>
    <c:when test="${CategoryPageClicked}">
       <c:import url="/WEB-INF/views/addcategory.jsp"></c:import>
    </c:when>
    <c:otherwise>
       
    </c:otherwise>
</c:choose>

<c:choose>
    <c:when test="${SupplierPageClicked}">
       <c:import url="/WEB-INF/views/addsupplier.jsp"></c:import>
    </c:when>
    <c:otherwise>
       
    </c:otherwise>
</c:choose>
</div>


</body>
</html>