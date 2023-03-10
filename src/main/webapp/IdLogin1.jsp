<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
.container{
	margin-left:530px;
	margin-top:140px;
	text-align:center;
	background-color:lightblue;
	width: 350px;
	height: 350px;
	border-radius: 5px;
	box-shadow: 10px 10px 50px black;
}
h1{
	padding: 40px;
}
.submit{
	padding: 10px;
}
.submit:hover {
	background-color: cyan;
}
</style>
<body>
<div class="container">
	<h1> Enter ID to delete the details </h1>
	<form action="ids1" method="post">
		ID: <input type="number" name="idNumber1" style="padding: 8px;"/><br><br>
		<input type="submit" class="submit"/>
	</form>
	</div>
</body>
</html>