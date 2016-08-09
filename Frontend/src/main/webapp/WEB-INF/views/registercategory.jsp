<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>More Information</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
  
<form action="insertcategoryValues" method="post">

<table border="1" cellpadding="10" cellspacing="10" align="center">
    <div class="form-group">
      <tr>
      		<td><label for="name"> category Id:</label></td>
      		<td><input type="text" name="id"></td>
      </tr>
    </div>
    <div class="form-group">
      <tr>
      		<td><label for="name">category name:</label></td>
      		<td><input type="text" name="name"></td>
	  </tr>      		
    </div>
    <div class="form-group">
    	<tr>
    		<td><label for="name"> category discription</label></td>
      		<td><input type="text" name="description"></td>
      	</tr>
    </div>
    <div class="form-group">
      	<tr>
      		<td><label for="number">Price:</label></td>
      		<td><input type="number" name="price"></td>
      	</tr>
    </div>
    	<tr><td colspan="2" align="center"><input type="submit" value="Insert"></td></tr>
    	
</table>

</form>

</body>
</html>