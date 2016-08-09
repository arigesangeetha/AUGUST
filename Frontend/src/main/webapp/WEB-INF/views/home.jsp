<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<c:if test="${!empty productList}">
	<h3>product List</h3>
		<table class="tg">

			<tr>
				<th >Product ID</th>
				<th >Product Name</th>
				<th >Product Description</th>
				<th >Product Price</th>
				<th >Edit</th>
				<th >Delete</th>
			</tr>
			<c:forEach items="${productList}" var="product">
				<tr>
					<td>${product.id}</td>
					<td>${product.name}</td>
					<td>${product.description}</td>
					<td>${product.price}</td>
					<td>
					<form action="productedit/${product.id}"  method="post">
					<input type="submit" value="Edit">
					</form></td>
					<td><form action="removeproduct/${product.id}">
					<input type="submit" value="Delete">
					</form></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
</body>
</html>
