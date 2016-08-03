<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AdminProductPage</title>
</head>
<body>

<div>
<form action="register" method="post">
<table>
<tr><td>Id:</td><td><input type="text"  name="id"><br></td></tr>
<tr><td>Name:</td><td><input type="text"  name="name"><br></td></tr>
<tr><td>Description:</td><td><input type="text"  name="description"><br></td></tr>
<tr><td>Price:</td><td><input type="text"  name="price"><br></td></tr>
<tr><td>Supplier:</td><td><input type="text"  name="supplier"><br></td></tr>
<tr><td colspan="2"><input type="submit" value="register"><br></td></tr>
</table>
</form>
</div>



	<!-- <div>
		<div class="col-md-4"></div>
		<div class="col-md-4">
			<div>
				<form action="register" method="post">
					<br>
					<input type="text" class="form-control input-sm" name="id" placeholder="Id"><br>
					<input type="text" class="form-control input-sm" name="name" placeholder="Name" ><br>
					<input type="text" class="form-control input-sm" name="description" placeholder="Description"><br>
					<input type="text" class="form-control input-sm" name="price"placeholder="Price" ><br> 
					<input type="text" class="form-control input-sm" name="supplier" placeholder="Supplier"><br> 
					<input type="submit" class="btn btn-primary btn-block input-sm" value="Register"><br>
				</form>
			</div>
			<div class="col-md-4"></div>
		</div>
	</div> -->

</body>
</html>