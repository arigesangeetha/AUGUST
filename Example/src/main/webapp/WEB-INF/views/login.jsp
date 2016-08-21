<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login form</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link href="<c:url value="/resources/css/s1.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/js/s2.js" />" rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>

<body >
<div class="container">
  
  <div class="row" id="pwd-container">
    <div class="col-md-4"></div>
    
    <div class="col-md-4">
      <section class="login-form">	
		

<form action="perform_login" method="post" >
 <img src="http://i.imgur.com/RcmcLv4.png" class="img-responsive" alt="" /><br>
	 <input type="text" name="username"   placeholder="Enter email" required class="form-control input-lg" value="username" /><br><br>
	 <input type="password" name="password"  class="form-control input-lg"   placeholder="Enter password" required="">
				


			<div class="panel-body">
				<div class="checkbox">
					<label><input type="checkbox"> Remember me</label>
				</div>
				<button type="submit" value="submit" class="btn btn-lg btn-primary btn-block" >Submit</button>
			</div>
			 <div>
            <a href="#">Create account</a> or <a href="#">reset password</a>
          </div>
          
        </form>
         <div class="form-links">
          <a href="#">www.website.com</a>
        </div>
         </section>  
      </div>
      
      <div class="col-md-4"></div>
      

  </div>
  
  <p>
    <a href="http://validator.w3.org/check?uri=http%3A%2F%2Fbootsnipp.com%2Fiframe%2FW00op" target="_blank"></a>
    <br>
    <br>
    
  </p>     
  
  
</div>
	
		
		</form>
</body>
</html>