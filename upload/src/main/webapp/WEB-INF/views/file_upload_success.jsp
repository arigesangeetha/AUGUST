<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<title>Spring MVC Multiple File Upload</title>
</head>
<body>
	<h1>Spring Multiple File Upload example</h1>
	<p>Following files are uploaded successfully.</p>
	<ol>
		<c:forEach items="${files}" var="file">
			<img src="${ pagecontext.request.contextpath}/images/${file} "width="100" height="100">
		<li>${file}</li>
		
		
		</c:forEach>
	</ol>
</body>
</html>