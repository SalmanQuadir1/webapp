<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Confirmation</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>
<div class="text-center p-5">
	The Student is Confirmed:<b> ${student.firstName} ${student.lastName}</b>
<br>
	Your Country of Origin Is: <b>${student.country}</b>
	<br>
	Favourite Language: <b>${student.favouriteLanguage }</b>
	<br>
	Operating Systems:
	<ul> 
	<c:forEach var="temp" items="${student.operatingSystems}">
	<li><b>${temp}</b></li>
	</c:forEach>
	</ul>
	</div>
	
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
	
</body>
</html>