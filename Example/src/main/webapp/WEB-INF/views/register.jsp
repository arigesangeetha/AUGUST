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
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link href="<c:url value="/resources/css/s1.css" />" rel="stylesheet">
<link href="<c:url value="/resources/js/s2.js" />" rel="stylesheet">


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>Registration</title>
<br>
</head>
<body>

	<div class="container">

		<div class="row" id="pwd-container">
			<div class="col-md-4"></div>

			<div class="col-md-4">
				<section class="login-form">



					<c:url var="addAction" value="adduser"></c:url>
					<form:form action="${addAction}" commandName="userDetails"
						class="form-signin" method="post">


						<div id="fullscreen_bg" class="fullscreen_bg" />

						<div class="container">


							<h1 class="form-signin-heading text-muted">REGISTRATION</h1>

							<div>
								<form:input path="name" type="text" placeholder="Name"
									pattern=".{5,10}" required="true" id="username" name="username"
									title="minimum length for name is 5" />
							</div><br>
							<div>
								<form:input path="userName" type="text" placeholder="Username"
									pattern=".{5,10}" required="true" id="username" name="username"
									title="minimum length for username is 5" />
							</div>
							<br>
							<div>
								<form:input path="password" type="password"
									placeholder="Password" required="true" id="password"
									name="password" />
							</div>
							<br>

							<div>
								<form:input path="mobile" type="text" placeholder="Mobile" 
									pattern="^[789]\d{9}$" required="true" id="username"
									name="username" title="Enter valid mobile number" />
							</div>
							<br>

							<div>
								<form:input path="email" type="email" placeholder="Email"
									required="true" id="username" name="username" />
							</div>
							<br> <input type="submit" value="signup"
								class="btn btn-primary" />
					</form:form>


					<div class="form-links">
						<a href="#">www.website.com</a>
					</div>
				</section>
			</div>

			<div class="col-md-4"></div>


		</div>

		<p>
			<a
				href="http://validator.w3.org/check?uri=http%3A%2F%2Fbootsnipp.com%2Fiframe%2FW00op"
				target="_blank"></a> <br> <br>

		</p>


	</div>




</body>
</html>