<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
a{
	text-decoration: none;
	color: black;
	padding: 10px;
}
button{
	padding: 8px;
}
button:hover{
	background-color: cyan;
}
</style>
<body>
<div class="container">
	<h1>Hey ! there ,</h1>
	<form action="" method="post">
		<button><a href="./IdLogin.jsp">Fetch any details</a></button> <br> <br>
		<button><a href="./IdLogin1.jsp">Delete any details</a></button> <br> <br>
		<button><a href="./IdLogin2.jsp">Update any details</a></button> <br> <br>
	</form>
	</div>
</body>
</html>