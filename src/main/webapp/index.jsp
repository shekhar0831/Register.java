<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PseudoColumnUsage"%>
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
.first{
	padding: 50px;
}
a{
	text-decoration: none;
	color: blue;
	padding: 10px;
}
button{
	padding: 5px;
	margin: 10px;
}
button:hover{
	background-color: cyan;
}
</style>
<body>
<div class="container">
	<form action="">
		<h1 class="first">WELCOME</h1>
		<button> <h1><a href="./Registration.jsp"> Sign-Up </a></h1> </button>
		<button> <h1><a href="./Login.jsp"> Sign-In </a></h1> </button>
	</form>
	</div>
	
	<%
	String userId = request.getParameter("userId");
	String userName = request.getParameter("userName");
	String userEmail = request.getParameter("userEmail");
	String userAge = request.getParameter("userAge");
	String userAddress = request.getParameter("userAddress");
	String userNumber = request.getParameter("userNumber");
	String userPassword = request.getParameter("userPassword");
	
	try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/assignment", "root", "root");
	PreparedStatement ps = con.prepareStatement("insert into register values(?, ?, ?, ?, ?, ?, ?)");
	
	
	ps.setInt(1, Integer.parseInt(userId));
	ps.setString(2, userName);
	ps.setString(3, userEmail);
	ps.setInt(4, Integer.parseInt(userAge));
	ps.setString(5, userAddress);
	ps.setInt(6, Integer.parseInt(userNumber));
	ps.setString(7, userPassword);
	
	ps.execute();
	
	} catch(Exception e) {
		e.printStackTrace();		
	}
	%>
</body>
</html>