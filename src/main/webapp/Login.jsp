<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.servlet.annotation.WebServlet"%>
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
	padding: 30px;
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
     <h1> Sign-In </h1>
	<form action="log" method="post">
		Username: <input type="text" name="userName" style="padding: 10px;"/> <br> <br><br>
		Password: <input type="password" name="userPassword" style="padding: 10px;"/> <br> <br> <br>
		<input type="submit" class="submit"/>
	</form>
	</div>
	
	
</body>
</html>