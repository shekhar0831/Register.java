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
	width: 400px;
	height: 450px;
	border-radius: 5px;
	box-shadow: 10px 10px 50px black;
}
h1{
	padding: 20px;
}
.submit{
	padding: 10px;
}
.submit:hover {
	background-color: cyan;
}
</style>
<body>
	<%
		String idnumber2 = request.getParameter("idNumber2");
		
		try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/assignment", "root", "root");
		PreparedStatement ps1 = con.prepareStatement("select * from register where ID =?");
		ps1.setInt(1, Integer.parseInt(idnumber2));
		ResultSet rs = ps1.executeQuery();
		while(rs.next()) {
			%>
		<div class="container">
		<h1> Update Below Details </h1>
		<form action="updated" method="post">
			ID: <input type="number" name="userId" value="<%= rs.getInt("ID") %>" /> <br> <br>
			Username: <input type="text" name="userName" value="<%= rs.getString("Username") %>" /> <br> <br>
			E-mail: <input type="email" name="userEmail" value="<%= rs.getString("Email") %>" /> <br> <br> 
			Age: <input type="number" name="userAge" value="<%= rs.getInt("Age") %>" /> <br> <br> 
			Address: <input type="text" name="userAddress" value="<%= rs.getString("Address") %>" /> <br> <br> 
			MobileNumber: <input type="number" name="userNumber" value="<%= rs.getInt("Mobilenumber") %>" /> <br> <br> <br>
			<input type="submit" class="submit"/>
		</form>
		</div>
		<%
		ps1.executeUpdate();	
		}
		} catch(Exception e) {
			e.printStackTrace();
		}
		%>
	
	
	
</body>
</html>