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
	margin-left:510px;
	margin-top:120px;
	text-align:center;
	background-color:lightblue;
	width: 400px;
	height: 450px;
	border-radius: 5px;
	box-shadow: 10px 10px 50px black;
}
h1{
	padding: 15px;
}
.submit{
	padding: 10px;
	margin: 5px;
}
.submit:hover {
	background-color: cyan;
}
</style>
<body>
<div class="container">
    <h1> Sign-Up </h1>
	<form action="index.jsp" method="post">
		ID : <input type="number" name="userId" /> <br> <br>
		Username : <input type="text" name="userName" /> <br> <br>
		E-mail : <input type="email" name="userEmail" /> <br> <br> 
		Age : <input type="number" name="userAge" /> <br> <br> 
		Address : <input type="text" name="userAddress" /> <br> <br> 
		MobileNumber : <input type="number" name="userNumber" /> <br> <br> 
		Password : <input type="password" name="userPassword" /> <br> <br> 
	    <input type="submit" class="submit"/>
	</form>
	</div>
	
</body>
</html>