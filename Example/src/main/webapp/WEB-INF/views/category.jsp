<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>boostrap</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootswatch/3.2.0/sandstone/bootstrap.min.css">
<script	src="//ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
<script	src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<script	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.23/angular.min.js"></script>
</head>
<body>


<li style="float: right"><button type="button" class="btn btn-success"><a href="perform_logout"
							class="w3-hover-none"><i class="glyphicon glyphicon-log-out">back home</i></a></button></li>
					 <table class="table table-bordered table-striped">
    
                        <thead>
                        <tr>
							<th>Product Name</th>
							<th>Product Quantity</th>
							<th>Product Price</th>
						</tr>
						
							<tr>
								<td>${category.id}</td>
								<td>${category.name}</td>
								<td>${category.description}</td>
							</tr>
							
						
						</thead>
					</table>
				
</body>
</html>