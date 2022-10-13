<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Form</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

</head>
<body>
<div class="text-center mt-5">
<h3>Student Application  form</h3>

<form:form action="processForm" modelAttribute="student" >
Firstname: <form:input path="firstName"/>
<br></br>
Lastname: <form:input path="lastName"/>

<br></br>
Country: <form:select path="country">
<form:options items="${student.countryOptions }" />

</form:select>
<br>
Favourite Language:
Java&nbsp;<form:radiobutton path="favouriteLanguage" value="Java"/>&nbsp;&nbsp;
C#&nbsp;<form:radiobutton path="favouriteLanguage" value="C#"/>&nbsp;&nbsp;
PHP&nbsp;<form:radiobutton path="favouriteLanguage" value="PHP"/>&nbsp;&nbsp;
Ruby&nbsp;<form:radiobutton path="favouriteLanguage" value="Ruby"/>&nbsp;&nbsp;
<br>
Operating System:
Linux&nbsp;<form:checkbox path="operatingSystems" value="Linux"/>&nbsp;&nbsp;
MacOS&nbsp;<form:checkbox path="operatingSystems" value="MacOS"/>&nbsp;&nbsp;
Ubuntu&nbsp;<form:checkbox path="operatingSystems" value="Ubuntu"/>&nbsp;&nbsp;
Windows&nbsp;<form:checkbox path="operatingSystems" value="Windows"/>&nbsp;&nbsp;
<br>



<input type="submit" value="Submit" class="btn btn-success mt-2"/>
</form:form>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
		<script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>

</body>
</html>