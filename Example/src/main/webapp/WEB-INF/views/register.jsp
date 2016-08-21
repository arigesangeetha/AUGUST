<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link href="<c:url value="/resources/css/s1.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/js/s2.js" />" rel="stylesheet">


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>Registration</title>

</head>
<body>

<div class="container">
  
  <div class="row" id="pwd-container">
    <div class="col-md-4"></div>
    
    <div class="col-md-4">
      <section class="login-form">	
            
            

<c:url var="addAction" value="adduser"></c:url>
<form:form action="${addAction}" commandName="userDetails"    class="form-signin"  method="post">


<div id="fullscreen_bg" class="fullscreen_bg"/>

<div class="container">


<h1 class="form-signin-heading text-muted">REGISTRATION</h1>


<form:label path="name"><spring:message text="Name"  /></form:label><form:input path="name"   required="true" /><br><br>


<form:label path="userName"><spring:message text="UserName" /></form:label><form:input path="userName"  required="true"  /><br><br>


<form:label path="password"><spring:message text="Password" /></form:label><form:input path="password"  required="true" />
<br><br>


<form:label path="mobile"><spring:message text="Mobile Number"  /></form:label><form:input path="mobile"  required="true"  /><br><br>


<form:label path="email"><spring:message text="Email" /></form:label><form:input path="email" required="true" /><br><br>
<input type="submit" value="signup"   class="btn btn-lg btn-primary btn-block"/>
</form:form>


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
	
		
		

</body>
</html>